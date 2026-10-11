#!/usr/bin/env python3
"""Derive portable source evidence from an export and native sources.

The export receipt and original files are read only. Import-only preservation
is independently verified; this program does not perform a new kernel check.
Acceptance is required by default; --allow-prepared explicitly marks initial
uncompiled source evidence. JSON goes to stdout unless --output is supplied. No host absolute
paths, cached artifacts, or deferred-adapter acceptance are published.
"""
from __future__ import annotations

import argparse
import json
from pathlib import Path
import re
import subprocess
import sys

sys.dont_write_bytecode = True
import check_moebius_response as checker
import moebius_response_inputs as inputs
import moebius_owner_census as owner_census


def source_bytes(path: Path) -> bytes:
    return checker.stable_read(path.absolute()).data


def import_only_bytes(original: bytes, substitutions: list[dict]) -> bytes:
    text = original.decode("utf-8")
    masked = checker.code_mask(text)
    mapping = {}
    for row in substitutions:
        old, new = row["source_import"], row["export_import"]
        if old in mapping and mapping[old] != new:
            raise ValueError("Inconsistent declared import substitution")
        mapping[old] = new
    chunks, previous, used = [], 0, set()
    for statement in re.finditer(
            r"(?m)^[ \t]*(?:public[ \t]+)?(?:meta[ \t]+)?import[ \t]+([^\r\n]*)", masked):
        for token in re.finditer(r"[A-Za-z_][A-Za-z0-9_.]*", statement.group(1)):
            start, end = statement.start(1)+token.start(), statement.start(1)+token.end()
            old = text[start:end]
            chunks.extend((text[previous:start], mapping.get(old, old)))
            previous = end
            if old in mapping:
                used.add(old)
    if used != set(mapping):
        raise ValueError("Declared import substitution is absent from original source")
    chunks.append(text[previous:])
    return "".join(chunks).encode("utf-8")


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--root", type=Path, default=Path(__file__).resolve().parent.parent,
                        help="Native repository to read; never changed by default")
    parser.add_argument("--receipt", type=Path, required=True, help="Accepted exporter receipt")
    parser.add_argument("--lean", type=Path, required=True, help="Actual already-installed Lean compiler")
    parser.add_argument("--packages", type=Path, help="Defaults to ROOT/.lake/packages")
    parser.add_argument("--output", type=Path, help="Write explicitly here instead of stdout")
    parser.add_argument("--allow-prepared", action="store_true",
                        help="Permit initial prepared source evidence, explicitly without kernel acceptance")
    args = parser.parse_args()
    root = args.root.resolve()
    packages = (args.packages or root / ".lake/packages").resolve()
    lean = args.lean.absolute()
    try:
        if not lean.is_file() or not packages.is_dir():
            raise ValueError("Supply the actual installed compiler and compiled package cache")
        elan = lean.parent / "elan"
        if lean.resolve().name == "elan" or (elan.is_file() and checker.sha256(lean) == checker.sha256(elan)):
            raise ValueError("Elan shim not invoked: --lean must identify the actual installed compiler")
        receipt_bytes = source_bytes(args.receipt)
        receipt = json.loads(receipt_bytes)
        prepared = (args.allow_prepared and receipt.get("status") == "prepared" and
                    receipt.get("kernel_checked") is False)
        accepted = (receipt.get("status") == "kernel-checked" and
                    receipt.get("kernel_checked") is True and receipt.get("all_final_hashes_match") is True)
        required = {"kernel_trust_level": 0, "warnings_as_errors": True, "fresh_project_build": True}
        if not (prepared or accepted) or any(receipt.get(key) != value for key, value in required.items()):
            raise ValueError("Prepared, failed or incomplete export receipts are not accepted")
        if receipt.get("unreachable_from_kernel_audit"):
            raise ValueError("Export receipt contains unaudited source modules")
        controls = receipt.get("custom_axiom_negative_controls", [])
        expected_controls = {(namespace, visibility) for namespace in checker.NAMESPACES
                             for visibility in ("public", "private")}
        if accepted and ({(r.get("namespace"), r.get("visibility")) for r in controls} != expected_controls or
                len(controls) != len(expected_controls) or not all(r.get("rejected") is True for r in controls)):
            raise ValueError("All ten public/private axiom rejection controls must have passed")
        checked = receipt.get("checked_modules", [])
        checked_names = {row["module"] for row in checked}
        if len(checked_names) != len(checked) or not all(r.get("passed") is True for r in checked):
            raise ValueError("Every included export module must have a successful recorded check")
        version = subprocess.run([str(lean), "--version"], check=True,
                                 capture_output=True, text=True).stdout.strip()
        if receipt.get("lean_version") != version or receipt.get("lean_sha256") != checker.sha256(lean):
            raise ValueError("Installed Lean does not match the accepted export")
        audit, aggregator = receipt["audit_module"], receipt["aggregator_module"]
        records, provenance, original_hashes = {}, {}, {}
        for row in receipt["source_exports"]:
            module = row["module"]
            path = module.replace(".", "/")+".lean"
            native = checker.relative_file(root, path)
            current = source_bytes(native)
            if checker.digest(current) != row["export_sha256"] or not row.get("non_import_bytes_unchanged"):
                raise ValueError(f"Native source does not match the accepted import-only export: {module}")
            original = Path(row["source"])
            data = source_bytes(original)
            if checker.digest(data) != row["source_sha256"]:
                raise ValueError(f"Original frozen source no longer matches export provenance: {module}")
            if import_only_bytes(data, row["import_substitutions"]) != current:
                raise ValueError(f"Non-import source bytes changed: {module}")
            if module in records:
                raise ValueError(f"Duplicate exported module: {module}")
            records[module] = {"path": path, "sha256": checker.digest(current),
                               "imports": checker.imports(current.decode("utf-8"))}
            provenance[module] = {"kind": "import-only-relocation",
                                  "original_source_sha256": row["source_sha256"],
                                  "published_source_sha256": row["export_sha256"],
                                  "non_import_bytes_independently_verified": True,
                                  "import_substitutions": row["import_substitutions"]}
            original_hashes[original] = row["source_sha256"]
        for row in receipt.get("external_sources", []):
            module = row["module"]
            path = module.replace(".", "/")+".lean"
            native = checker.relative_file(root, path)
            current = source_bytes(native)
            if module in records or checker.digest(current) != row["source_sha256"]:
                raise ValueError(f"Native dependency changed or duplicates an export: {module}")
            records[module] = {"path": path, "sha256": row["source_sha256"],
                               "imports": checker.imports(current.decode("utf-8"))}
            provenance[module] = {"kind": "existing-native-dependency",
                                  "published_source_sha256": row["source_sha256"]}
        path = aggregator.replace(".", "/")+".lean"
        native = checker.relative_file(root, path)
        if (aggregator in records or source_bytes(native) != f"import {audit}\n".encode() or
                checker.sha256(native) != receipt["aggregator_sha256"]):
            raise ValueError("Published aggregator does not match the accepted generated source")
        records[aggregator] = {"path": path, "sha256": checker.sha256(native), "imports": [audit]}
        provenance[aggregator] = {"kind": "generated-audit-import",
                                 "published_source_sha256": receipt["aggregator_sha256"]}
        if audit not in records or (accepted and set(records) != checked_names):
            raise ValueError("Recorded accepted checks do not cover exactly the published module set")
        if accepted and (receipt.get("compiled_module_count") != len(records) or not receipt.get("audited_declaration_count")):
            raise ValueError("Incomplete accepted compile or declaration audit count")
        shared_policy, _ = inputs.policy_module(root, lambda r, p: checker.read_regular(r, p).data)
        for module, record in records.items():
            if not checker.MODULE_PATTERN.fullmatch(module):
                raise ValueError(f"Invalid subject module: {module}")
            parts = module.split(".")
            if parts[1] not in shared_policy["SUBJECT_ROOTS"] or shared_policy["LEGACY_SEGMENTS"].intersection(parts):
                raise ValueError(f"Legacy or non-subject destination: {module}")
            if {i for i in record["imports"] if i.startswith("GRWTSK.")} - set(records):
                raise ValueError(f"Unmanifested native import: {module}")
        roots = [p / ".lake/build/lib/lean" for p in packages.iterdir()
                 if (p / ".lake/build/lib/lean").is_dir()]
        anchors = [{"path": (p / "Mathlib.olean").relative_to(packages).as_posix(),
                    "sha256": checker.sha256(p / "Mathlib.olean")}
                   for p in roots if (p / "Mathlib.olean").is_file()]
        if (not anchors or {r["sha256"] for r in anchors} !=
                {r["sha256"] for r in receipt.get("mathlib_anchors", [])}):
            raise ValueError("Compiled Mathlib cache does not match the accepted export anchors")
        assets = {}
        source_dirs = {(root / record["path"]).parent for record in records.values()}
        for asset in checker.source_assets(source_dirs):
            if not asset.is_relative_to(root):
                raise ValueError("Mathematical source asset escapes the repository")
            assets[asset.relative_to(root).as_posix()] = checker.sha256(asset)
        checker_native = checker.relative_file(root, "scripts/check_moebius_response.py")
        if checker.sha256(checker_native) != checker.sha256(Path(checker.__file__)):
            raise ValueError("Published checker differs from the generator's schema implementation")
        assets["scripts/check_moebius_response.py"] = checker.sha256(checker_native)
        generator_native = root / "scripts/generate_moebius_response_manifest.py"
        if generator_native.is_file():
            if checker.sha256(generator_native) != checker.sha256(Path(__file__)):
                raise ValueError("Published generator differs from the running implementation")
            assets["scripts/generate_moebius_response_manifest.py"] = checker.sha256(generator_native)
        for relative in ("scripts/moebius_response_inputs.py", "scripts/moebius_owner_census.py",
                         "scripts/check_math_layout.py", "lake-manifest.json", "lakefile.toml", "lean-toolchain",
                         "scripts/check_lean_repository_inputs.py", "scripts/test_moebius_response_inputs.py",
                         "scripts/test_moebius_owner_census.py", "scripts/test_moebius_response_checker.py",
                         "scripts/diagnose_moebius_shell.py",
                         "evidence/moebius-shell-diagnostics.json"):
            asset = checker.relative_file(root, relative)
            assets[relative] = checker.sha256(asset)
        helper_relative = "checks/MoebiusResponseOwnerAudit.lean"
        helper = source_bytes(checker.relative_file(root, helper_relative))
        if checker.digest(helper) != owner_census.HELPER_SHA256 or checker.imports(helper.decode()) != ["Lean"]:
            raise ValueError("Operational owner census helper differs from its separately controlled source")
        dependency_pins, dependency_states, lock_sha = inputs.package_pins(
            root, packages, lambda r, p: checker.read_regular(r, p).data)
        checker.reject_document_assets(root)
        deferred = []
        for row in receipt.get("deferred_local_sources", []):
            if row.get("exported") is not False or row.get("kernel_checked_in_this_export") is not False:
                raise ValueError("Deferred source must have no acceptance claim in this export")
            source = Path(row["source"])
            if checker.sha256(source) != row["source_sha256"]:
                raise ValueError("Deferred source changed from its preserved evidence hash")
            original_hashes[source] = row["source_sha256"]
            detail = row["deferral"]
            deferred.append({"original_stem": row["stem"], "source_sha256": row["source_sha256"],
                             "included_in_this_manifest": False, "kernel_checked_in_referenced_export": False,
                             "reason": detail["reason"],
                             "pending_external_import": detail["pending_external_import"],
                             "canonical_external_destination": detail["proposed_external_destination"]})
        manifest = {
            "schema_version": 1, "modules": dict(sorted(records.items())),
            "audit_module": audit, "aggregator_module": aggregator,
            "lean_version": version, "lean_sha256": checker.sha256(lean),
            "package_anchors": sorted(anchors, key=lambda r: r["path"]),
            "assets": dict(sorted(assets.items())),
            "owner_census": {"helper_module": "MoebiusResponseOwnerAudit",
                             "parser_asset": "scripts/moebius_owner_census.py",
                             "runtime_exceptions_allowed": False,
                             "helper": {"path": helper_relative, "sha256": checker.digest(helper),
                                        "imports": ["Lean"]}},
            "dependency_revisions": dependency_pins,
            "dependency_lock_sha256": lock_sha,
            "preservation_provenance": dict(sorted(provenance.items())),
            "referenced_export": {"receipt_sha256": checker.digest(receipt_bytes),
                                  "subject_manifest_sha256": receipt["subject_manifest_sha256"],
                                  "reported_status": receipt["status"],
                                  "reported_kernel_checked": accepted,
                                  "reported_kernel_trust_level": 0, "reported_warnings_as_errors": True,
                                  "reported_audited_declaration_count": receipt.get("audited_declaration_count"),
                                  "reported_public_private_controls_passed": len(controls)},
            "deferred_sources": deferred,
            "generation_scope": "Source hashes and import-only preservation verified. The referenced export status is reported explicitly; prepared evidence has no kernel acceptance. This generator performs no new Lean compilation. Open arithmetic obligations remain unsupplied.",
        }
        if (source_bytes(args.receipt) != receipt_bytes or
                any(checker.sha256(p) != h for p, h in original_hashes.items()) or
                any(checker.sha256(root / r["path"]) != r["sha256"] for r in records.values()) or
                any(checker.sha256(root / path) != h for path, h in assets.items()) or
                any(checker.sha256(packages / r["path"]) != r["sha256"] for r in anchors) or
                checker.digest(source_bytes(root / helper_relative)) != checker.digest(helper) or
                inputs.package_pins(root, packages, lambda r, p: checker.read_regular(r, p).data)[:2] !=
                (dependency_pins, dependency_states)):
            raise ValueError("Source, receipt or cache changed during manifest generation")
        serialized = json.dumps(manifest, indent=2)+"\n"
        # Published metadata must not carry source host paths from the receipt.
        def reject_absolute(value):
            if isinstance(value, dict):
                for item in value.values():
                    reject_absolute(item)
            elif isinstance(value, list):
                for item in value:
                    reject_absolute(item)
            elif isinstance(value, str) and value.startswith("/"):
                raise ValueError("Host absolute path would enter published evidence")
        reject_absolute(manifest)
        if args.output:
            checker.atomic_json(args.output.absolute(), manifest)
        else:
            sys.stdout.write(serialized)
    except (OSError, ValueError, KeyError, TypeError, subprocess.CalledProcessError) as error:
        parser.error(str(error))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
