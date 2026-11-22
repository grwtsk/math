#!/usr/bin/env python3
"""Run the source-pinned 16D frozen-prime atlas Lean verification suite.

Usage (from the grwtsk/math checkout):
  python3 scripts/verify_frozen_prime_atlas.py
  python3 scripts/verify_frozen_prime_atlas.py --preflight-only

The TOML manifest is declarative: this runner actually invokes Lake and Lean.
Lean compilation/kernel checking and transitive axiom reporting are distinct
from independent proof replay, which this script does not claim to perform.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import re
import shutil
import subprocess
import sys
import tempfile
import tomllib
from datetime import datetime, timezone
from pathlib import Path

DEFAULT_CONFIG = "verification/frozen-prime-atlas.toml"
DECLARATION_RE = re.compile(r"(?m)^theorem\s+([\w.']+)\b")
AXIOM_LINE_RE = re.compile(
    r"'([^']+)'\s+(?:depends on axioms:\s*\[([^\]]*)\]"
    r"|does not depend on any axioms)"
)


class VerificationFailure(Exception):
    """A failed source, build, or axiom-audit gate."""


def git_blob_sha(content: bytes) -> str:
    """GitHub's SHA-1 Git blob identity, independent of git status."""
    data = b"blob " + str(len(content)).encode("ascii") + b"\0" + content
    return hashlib.sha1(data).hexdigest()


def load_toml(root: Path, relative_path: str) -> dict:
    path = safe_path(root, relative_path)
    if not path.is_file():
        raise VerificationFailure(f"Missing TOML manifest: {relative_path}")
    with path.open("rb") as stream:
        return tomllib.load(stream)


def safe_path(root: Path, filename: str) -> Path:
    candidate = root / filename
    if Path(filename).is_absolute() or not candidate.resolve().is_relative_to(root.resolve()):
        raise VerificationFailure(f"Path escapes the checkout: {filename}")
    return candidate


def verify_environment(root: Path, manifest: dict) -> dict:
    env = manifest["environment"]
    expected_toolchain = env["lean_toolchain"]
    actual_toolchain = (root / "lean-toolchain").read_text(encoding="utf-8").strip()
    if actual_toolchain != expected_toolchain:
        raise VerificationFailure(
            f"Lean toolchain drift: found {actual_toolchain!r}, expected {expected_toolchain!r}"
        )
    with (root / "lake-manifest.json").open(encoding="utf-8") as handle:
        manifest_json = json.load(handle)
    mathlibs = [p for p in manifest_json.get("packages", []) if p.get("name") == "mathlib"]
    if len(mathlibs) != 1:
        raise VerificationFailure("Expected exactly one pinned Mathlib dependency")
    actual_mathlib = mathlibs[0].get("rev")
    expected_mathlib = env["mathlib_revision"]
    if actual_mathlib != expected_mathlib:
        raise VerificationFailure(
            f"Mathlib revision drift: found {actual_mathlib!r}, expected {expected_mathlib!r}"
        )
    with (root / "lakefile.toml").open("rb") as handle:
        lakefile = tomllib.load(handle)
    requires = [p for p in lakefile.get("require", []) if p.get("name") == "mathlib"]
    if len(requires) != 1 or requires[0].get("rev") != expected_mathlib:
        raise VerificationFailure("Root lakefile.toml does not pin the expected Mathlib revision")
    return {"lean_toolchain": actual_toolchain, "mathlib_revision": actual_mathlib}


def verify_sources(root: Path, manifest: dict) -> tuple[list[dict], int]:
    modules = manifest.get("module", [])
    if not modules:
        raise VerificationFailure("No [[module]] entries in TOML manifest")
    names = set()
    full_names = set()
    report = []
    count = 0
    for entry in modules:
        name = entry["name"]
        namespace = entry["namespace"]
        filename = entry["path"]
        expected_blob = entry["git_blob"]
        declared = entry["theorems"]
        if not name.startswith("GRWTSK.") or name in names:
            raise VerificationFailure(f"Invalid or repeated module name: {name}")
        names.add(name)
        if not filename.endswith(".lean") or filename.removesuffix(".lean").replace("/", ".") != name:
            raise VerificationFailure(f"Module path/name mismatch: {name} versus {filename}")
        if not declared or len(set(declared)) != len(declared):
            raise VerificationFailure(f"Theorem list is empty or contains duplicates in {name}")
        filepath = safe_path(root, filename)
        if not filepath.is_file():
            raise VerificationFailure(f"Missing source file: {filename}")
        raw = filepath.read_bytes()
        blob = git_blob_sha(raw)
        if blob != expected_blob:
            raise VerificationFailure(
                f"SOURCE DRIFT: {filename}\n  expected blob: {expected_blob}\n"
                f"  working blob:  {blob}\nRefusing to certify changed proof source."
            )
        actual = DECLARATION_RE.findall(raw.decode("utf-8"))
        if actual != declared:
            raise VerificationFailure(
                f"Declaration inventory mismatch for {name}:\n"
                f"  manifest: {declared}\n  source:   {actual}"
            )
        for theorem in declared:
            full = f"{namespace}.{theorem}"
            if full in full_names:
                raise VerificationFailure(f"Repeated fully-qualified theorem: {full}")
            full_names.add(full)
        report.append({"module": name, "path": filename, "blob": blob, "theorems": len(declared)})
        count += len(declared)
        print(f"[SOURCE OK] {name} | {len(declared)} theorems | {blob[:12]}", flush=True)
    if count != manifest["policy"]["expected_theorems"]:
        raise VerificationFailure(
            f"Theorem-count mismatch: {count} versus manifest {manifest['policy']['expected_theorems']}"
        )
    return report, count


def run_command(args: list[str], *, root: Path, timeout_seconds: float | None) -> str:
    print("$ " + " ".join(args), flush=True)
    try:
        result = subprocess.run(
            args, cwd=root, stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
            encoding="utf-8", errors="replace", check=False, timeout=timeout_seconds,
        )
    except FileNotFoundError as exc:
        raise VerificationFailure(f"Command unavailable: {args[0]}") from exc
    except subprocess.TimeoutExpired as exc:
        raise VerificationFailure(f"COMMAND TIMEOUT: {' '.join(args)}") from exc
    if result.returncode != 0:
        tail = "\n".join(result.stdout.splitlines()[-90:])
        raise VerificationFailure(
            f"Command failed with exit {result.returncode}: {' '.join(args)}\n"
            f"--- tail of output ---\n{tail}"
        )
    print(f"  PASS (exit {result.returncode})", flush=True)
    return result.stdout


def audit_text(manifest: dict) -> tuple[str, list[str]]:
    modules = manifest["module"]
    targets = [f"{entry['namespace']}.{name}" for entry in modules for name in entry["theorems"]]
    source = "\n".join(
        ["/- Generated from verification/frozen-prime-atlas.toml. -/"]
        + [f"import {entry['name']}" for entry in modules]
        + ["set_option autoImplicit false"]
        + [item for target in targets for item in (f"#check {target}", f"#print axioms {target}")]
        + [""]
    )
    return source, targets


def parse_axiom_audit(output: str, targets: list[str], allowed_axioms: set[str]) -> dict[str, list[str]]:
    # Console colors from a local Lean configuration must not mask diagnostics.
    clean = re.sub(r"\x1b\[[0-9;]*m", "", output)
    results: dict[str, list[str]] = {}
    for match in AXIOM_LINE_RE.finditer(clean):
        name = match.group(1)
        if name in results:
            raise VerificationFailure(f"Duplicate axiom report for {name}")
        values = match.group(2)
        axioms = [] if values is None else [a.strip() for a in values.split(",") if a.strip()]
        results[name] = axioms
    expected = set(targets)
    if set(results) != expected:
        missing = sorted(expected - set(results))
        unexpected = sorted(set(results) - expected)
        raise VerificationFailure(
            f"Axiom report incomplete or mismatched: {len(results)}/{len(expected)}\n"
            f"Missing: {missing}\nUnexpected: {unexpected}\n"
            f"--- output tail ---\n" + "\n".join(clean.splitlines()[-50:])
        )
    for name, axioms in results.items():
        unapproved = set(axioms) - allowed_axioms
        if unapproved:
            raise VerificationFailure(f"UNAPPROVED AXIOMS in {name}: {sorted(unapproved)}")
    return results


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--config", default=DEFAULT_CONFIG,
                        help="TOML file relative to the repository root")
    parser.add_argument("--preflight-only", action="store_true",
                        help="Validate pinned sources and declarations without running Lean")
    parser.add_argument("--all-diagnostics", action="store_true",
                        help="Try every pinned module build, collect failures, skip axiom audit until all pass")
    parser.add_argument("--timeout", type=float, default=0,
                        help="Per-command limit in seconds (0 = unlimited)")
    parser.add_argument("--report", type=Path,
                        help="Write an optional JSON evidence report")
    args = parser.parse_args()
    root = Path(__file__).resolve().parent.parent
    if args.timeout < 0:
        parser.error("--timeout cannot be negative")
    print(f"Frozen Prime Atlas verification | checkout: {root}", flush=True)
    record: dict = {
        "timestamp_utc": datetime.now(timezone.utc).isoformat(),
        "configuration": args.config,
        "status": "FAIL",
        "build": "NOT_RUN",
        "axiom_audit": "NOT_RUN",
        "fresh_independent_replay": "NOT_RUN",
    }
    try:
        manifest = load_toml(root, args.config)
        if manifest.get("format_version") != 1:
            raise VerificationFailure("Unsupported manifest format_version (expected 1)")
        env = verify_environment(root, manifest)
        record["environment"] = env
        modules, count = verify_sources(root, manifest)
        record.update({"modules": modules, "theorem_count": count})
        print(f"[PREFLIGHT PASS] {len(modules)} modules / {count} declarations", flush=True)
        if args.preflight_only:
            record["status"] = "PREFLIGHT_ONLY"
            print("PRECHECK ONLY — Lean compilation and axiom checks NOT_RUN.")
            return 0
        if shutil.which("lake") is None:
            raise VerificationFailure("lake executable not on PATH; install/use the pinned Lean toolchain")
        timeout = args.timeout or None
        run_command(["lake", "env", "lean", "--version"], root=root, timeout_seconds=timeout)
        failed_builds = []
        record["module_builds"] = []
        for target in modules:
            name = target["module"]
            try:
                run_command(["lake", "build", name], root=root, timeout_seconds=timeout)
                record["module_builds"].append({"module": name, "status": "PASS"})
            except VerificationFailure as exc:
                record["build"] = "FAIL"
                record["module_builds"].append({
                    "module": name, "status": "FAIL", "diagnostic": str(exc)
                })
                failed_builds.append(name)
                print(f"[BUILD FAIL] {name}: {exc}", file=sys.stderr, flush=True)
                if not args.all_diagnostics:
                    raise
        if failed_builds:
            raise VerificationFailure(
                f"{len(failed_builds)} of {len(modules)} modules failed: "
                + ", ".join(failed_builds)
                + "; axiom audit NOT_RUN because some modules do not build"
            )
        record["build"] = "PASS"
        audit, names = audit_text(manifest)
        with tempfile.TemporaryDirectory(prefix="grwtsk-atlas-verify-") as tmp:
            filename = Path(tmp) / "AtlasAxiomAudit.lean"
            filename.write_text(audit, encoding="utf-8")
            output = run_command(
                ["lake", "env", "lean", "--trust=0", "-DwarningAsError=true", str(filename)],
                root=root, timeout_seconds=timeout,
            )
        axiom_data = parse_axiom_audit(
            output, names, set(manifest["policy"]["allowed_axioms"])
        )
        record["axiom_audit"] = "PASS"
        record["axiom_report_count"] = len(axiom_data)
        record["axiom_union"] = sorted(set().union(*(set(a) for a in axiom_data.values())))
        record["status"] = "PASS_SCOPED_LEAN"
        print(f"[SCOPED LEAN PASS] {len(modules)} modules; "
              f"{len(axiom_data)} theorem reports; "
              f"axioms: {record['axiom_union']}", flush=True)
        print("Full fresh dependency replay and independent checker: NOT_RUN.")
        return 0
    except (VerificationFailure, KeyError, OSError, ValueError, tomllib.TOMLDecodeError) as exc:
        print(f"[FAIL] {exc}", file=sys.stderr, flush=True)
        return 1
    finally:
        if args.report:
            args.report.parent.mkdir(parents=True, exist_ok=True)
            args.report.write_text(json.dumps(record, indent=2, sort_keys=True) + "\n", encoding="utf-8")
            print(f"Evidence report: {args.report}", flush=True)


if __name__ == "__main__":
    raise SystemExit(main())
