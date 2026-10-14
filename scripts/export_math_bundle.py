#!/usr/bin/env python3
"""Export and freshly kernel-check the qualified Möbius pickup Lean bundle.

Only local project import identifiers are rewritten. Mathematical declarations,
proof bodies and comments are preserved byte for byte. External project imports
may be relocated only by the explicit canonical manifest.
The script never installs dependencies, changes Git state, or writes to the
read-only target project. All exported files and build products live in a new
private temporary destination. Copy only the GRWTSK subtree for integration.
"""
from __future__ import annotations

import argparse
from concurrent.futures import FIRST_COMPLETED, ThreadPoolExecutor, wait
from dataclasses import dataclass
import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
import sys
import tempfile
import time

SOURCE_DIRECTORIES = ("asbn-p04", "ppnc-p04", "euler-p04-rh", "hssc-p04")
CONTROL_NAMESPACES = ("ASBNP04", "PPNC", "PPNCP04", "EulerP04RH", "HSSCP04")


def digest(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def sha256(path: Path) -> str:
    return digest(path.read_bytes())


def code_mask(text: str) -> str:
    """Blank Lean comments and strings, retaining positions and line endings."""
    chars = list(text)
    i, depth, quoted = 0, 0, False
    while i < len(text):
        if depth:
            if text.startswith("/-", i):
                depth += 1
                chars[i:i + 2] = "  "
                i += 2
            elif text.startswith("-/", i):
                depth -= 1
                chars[i:i + 2] = "  "
                i += 2
            else:
                if text[i] not in "\r\n":
                    chars[i] = " "
                i += 1
        elif quoted:
            if text[i] == "\\" and i + 1 < len(text):
                chars[i:i + 2] = "  "
                i += 2
            else:
                if text[i] == '"':
                    quoted = False
                if text[i] not in "\r\n":
                    chars[i] = " "
                i += 1
        elif text.startswith("/-", i):
            depth = 1
            chars[i:i + 2] = "  "
            i += 2
        elif text.startswith("--", i):
            end = text.find("\n", i)
            if end < 0:
                end = len(text)
            for j in range(i, end):
                if text[j] != "\r":
                    chars[j] = " "
            i = end
        elif text[i] == '"':
            quoted = True
            chars[i] = " "
            i += 1
        else:
            i += 1
    if depth or quoted:
        raise ValueError("Unterminated Lean comment/string")
    return "".join(chars)


def import_tokens(text: str) -> list[tuple[int, int, str]]:
    masked = code_mask(text)
    tokens = []
    for statement in re.finditer(r"(?m)^[ \t]*(?:public[ \t]+)?(?:meta[ \t]+)?import[ \t]+([^\r\n]*)", masked):
        for token in re.finditer(r"[A-Za-z_][A-Za-z0-9_.]*", statement.group(1)):
            start = statement.start(1) + token.start()
            end = statement.start(1) + token.end()
            tokens.append((start, end, text[start:end]))
    return tokens


def rewrite_imports(data: bytes, mapping: dict[str, str]) -> tuple[bytes, list[dict]]:
    text = data.decode("utf-8")
    replacements = []
    chunks, previous = [], 0
    for start, end, module in import_tokens(text):
        changed = mapping.get(module, module)
        chunks.extend((text[previous:start], changed))
        previous = end
        if changed != module:
            replacements.append({"source_import": module, "export_import": changed})
    chunks.append(text[previous:])
    exported = "".join(chunks).encode("utf-8")
    exported_text = exported.decode("utf-8")
    old_tokens, new_tokens = import_tokens(text), import_tokens(exported_text)
    if len(old_tokens) != len(new_tokens):
        raise ValueError("Import-token inventory changed during export")
    restored, previous = [], 0
    for (_, _, old), (start, end, new) in zip(old_tokens, new_tokens):
        if new != mapping.get(old, old):
            raise ValueError("Undeclared import-path substitution")
        restored.extend((exported_text[previous:start], old))
        previous = end
    restored.append(exported_text[previous:])
    reconstructed = "".join(restored).encode("utf-8")
    if reconstructed != data:
        raise ValueError("Export changed bytes beyond the declared import-path substitutions")
    return exported, replacements


def rewrite_imports_one_way(data: bytes, mapping: dict[str, str]) -> tuple[bytes, None]:
    text = data.decode("utf-8")
    chunks, previous = [], 0
    for start, end, module in import_tokens(text):
        chunks.extend((text[previous:start], mapping.get(module, module)))
        previous = end
    chunks.append(text[previous:])
    return "".join(chunks).encode("utf-8"), None


@dataclass
class Node:
    module: str
    source: Path
    cwd: Path
    original: Path
    original_hash: str
    exported_hash: str
    external: bool
    dependencies: set[str]


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--manifest", type=Path, required=True,
                        help="Explicit per-module canonical subject destinations and aggregator")
    parser.add_argument("--source-root", type=Path, default=Path(__file__).resolve().parent.parent)
    parser.add_argument("--target-project", type=Path, default=Path("/Users/think/Desktop/math"),
                        help="Read-only sources for existing qualified GRWTSK dependencies")
    parser.add_argument("--destination", type=Path,
                        help="Fresh export directory below /private/tmp; defaults to a new directory")
    parser.add_argument("--lean", type=Path, default=Path(
        "/Users/think/.elan/toolchains/leanprover--lean4---v4.33.0/bin/lean"))
    parser.add_argument("--packages", type=Path, default=Path(
        "/Users/think/Desktop/NoeaaeueFormal/.lake/packages"))
    parser.add_argument("--jobs", type=int, default=3)
    parser.add_argument("--prepare-only", action="store_true",
                        help="Export/hash only; do not claim compiler or kernel acceptance")
    args = parser.parse_args()
    repository = args.source_root.resolve()
    target = args.target_project.resolve()
    if args.jobs < 1:
        parser.error("--jobs must be positive")
    if not args.lean.is_file() or not args.packages.is_dir():
        parser.error("Supply the installed Lean executable and pinned compiled packages")
    if args.destination:
        destination = args.destination.resolve()
        if not destination.is_relative_to(Path("/private/tmp")):
            parser.error("The destination must be below /private/tmp; target checkouts are read-only")
        if destination.exists():
            parser.error("The destination must be new, so a previous export cannot be overwritten")
        destination.mkdir(parents=True)
    else:
        destination = Path(tempfile.mkdtemp(prefix="mobius-pickup-export-", dir="/private/tmp"))
    roots = sorted(p / ".lake/build/lib/lean" for p in args.packages.iterdir()
                   if (p / ".lake/build/lib/lean").is_dir())
    if not any((p / "Mathlib.olean").is_file() for p in roots):
        parser.error("No compiled Mathlib.olean in the pinned package cache")
    sources = sorted(p for directory in SOURCE_DIRECTORIES
                     for p in (repository / directory).glob("*.lean"))
    all_modules = {p.stem: p for p in sources}
    if len(all_modules) != len(sources) or not sources:
        parser.error("Lean stems must be unique and the bundle must not be empty")
    if "KernelAudit" not in all_modules:
        parser.error("The bundle must contain KernelAudit")
    manifest_bytes = args.manifest.read_bytes()
    manifest = json.loads(manifest_bytes)
    mapping = manifest.get("modules", {})
    if not isinstance(mapping, dict) or not all(isinstance(k, str) and isinstance(v, str)
                                                for k, v in mapping.items()):
        parser.error("Manifest modules must map Lean stems to qualified module strings")
    deferred_modules = manifest.get("deferred_modules", {})
    if not isinstance(deferred_modules, dict) or any(
            stem != "CCCAdapter" or not isinstance(record, dict) or
            not isinstance(record.get("reason"), str) or not record["reason"].strip()
            for stem, record in deferred_modules.items()):
        parser.error("Only CCCAdapter may be explicitly deferred, with a concrete reason record")
    if set(mapping) & set(deferred_modules):
        parser.error("Exported and explicitly deferred module keys must be disjoint")
    if set(mapping) | set(deferred_modules) != set(all_modules):
        parser.error("Every frozen local Lean stem must be explicitly exported or declared deferred")
    modules = {stem: source for stem, source in all_modules.items() if stem not in deferred_modules}
    deferred_records = [{"stem": stem, "source": str(all_modules[stem]),
                         "source_sha256": sha256(all_modules[stem]),
                         "exported": False, "kernel_checked_in_this_export": False,
                         "deferral": record}
                        for stem, record in sorted(deferred_modules.items())]
    if len(set(mapping.values())) != len(mapping):
        parser.error("Canonical local module destinations must be unique")
    aggregator_module = manifest.get("aggregator")
    audit_module = manifest.get("audit", mapping["KernelAudit"])
    if audit_module != mapping["KernelAudit"]:
        parser.error("The audit destination must be the explicit KernelAudit module destination")
    external_relocations = manifest.get("external_imports", {})
    if not isinstance(external_relocations, dict) or not all(
            isinstance(k, str) and isinstance(v, str) for k, v in external_relocations.items()):
        parser.error("Manifest external_imports must be an explicit string-to-string map")
    if not args.prepare_only and (manifest.get("pending_external_imports") or
                                 manifest.get("pending_local_sources")):
        parser.error("Final kernel export requires a frozen manifest with no pending sources or external relocations")
    if set(external_relocations) & set(mapping):
        parser.error("External import relocations must not shadow local Lean stems")
    subjects = {"Algebra", "Analysis", "Combinatorics", "DynamicalSystems", "Geometry",
                "LinearAlgebra", "Logic", "MeasureTheory", "NumberTheory", "Order",
                "Probability", "Topology", "SetTheory", "CategoryTheory", "Computability"}
    forbidden = {"CCC", "RiemannHypothesis", "Conversation", "ProofHorizon",
                 "CorkscrewChamberCap", "SpectralUnificationOfComputabilityAndAlgebraicSymmetry"}
    for module in [*mapping.values(), *external_relocations.values(), aggregator_module]:
        if not isinstance(module, str) or not re.fullmatch(r"GRWTSK(?:\.[A-Za-z_][A-Za-z0-9_]*)+", module):
            parser.error("Every destination must be an explicit qualified GRWTSK module")
        parts = module.split(".")
        if len(parts) < 3 or parts[1] not in subjects or forbidden.intersection(parts):
            parser.error(f"Destination must use a mathematical subject/object path: {module}")
    if aggregator_module in mapping.values():
        parser.error("Aggregator must not overwrite a mathematical source module")
    if any(not isinstance(k, str) or not k.startswith("GRWTSK.") for k in external_relocations):
        parser.error("External relocations may rewrite only explicitly named GRWTSK project imports")
    import_mapping = {**mapping, **external_relocations}
    build = destination / ".lake/build/lib/lean"
    build.mkdir(parents=True)
    nodes: dict[str, Node] = {}
    records = []
    for name, original in modules.items():
        data = original.read_bytes()
        exported, substitutions = rewrite_imports(data, import_mapping)
        module = mapping[name]
        source = destination / (module.replace(".", "/") + ".lean")
        source.parent.mkdir(parents=True, exist_ok=True)
        source.write_bytes(exported)
        imports = {module for _, _, module in import_tokens(exported.decode("utf-8"))}
        if set(deferred_modules) & imports:
            parser.error(f"Included source {name} imports an explicitly deferred module")
        nodes[module] = Node(module, source, destination, original, digest(data),
                             digest(exported), False, imports)
        records.append({"module": module, "source": str(original),
                        "source_sha256": digest(data), "export": str(source),
                        "export_sha256": digest(exported), "import_substitutions": substitutions,
                        "non_import_bytes_unchanged": True})
    aggregator = destination / (aggregator_module.replace(".", "/") + ".lean")
    aggregator.parent.mkdir(parents=True, exist_ok=True)
    aggregator.write_text(f"import {audit_module}\n", encoding="utf-8")
    nodes[aggregator_module] = Node(aggregator_module, aggregator, destination, aggregator, sha256(aggregator),
                                   sha256(aggregator), False, {audit_module})
    pending_external = {imp for node in nodes.values() for imp in node.dependencies
                        if imp.startswith("GRWTSK.") and imp not in nodes}
    while pending_external:
        module = pending_external.pop()
        if module in nodes:
            continue
        source = target / (module.replace(".", "/") + ".lean")
        if not source.is_file():
            parser.error(f"Existing target dependency has no read-only source: {module}")
        imports = {module for _, _, module in import_tokens(source.read_text())}
        nodes[module] = Node(module, source, target, source, sha256(source), sha256(source),
                             True, imports)
        pending_external.update(imp for imp in imports
                                if imp.startswith("GRWTSK.") and imp not in nodes)
    for node in nodes.values():
        node.dependencies.intersection_update(nodes)
    reachable, stack = set(), [audit_module]
    while stack:
        name = stack.pop()
        if name in reachable:
            continue
        reachable.add(name)
        stack.extend(nodes[name].dependencies)
    local_names = set(mapping.values())
    unaudited = sorted(local_names - reachable)
    version = subprocess.run([str(args.lean), "--version"], check=True,
                             capture_output=True, text=True).stdout.strip()
    receipt = {
        "status": "prepared" if args.prepare_only else "running",
        "destination": str(destination), "source_root": str(repository),
        "target_project_read_only": str(target),
        "subject_manifest": str(args.manifest.resolve()), "subject_manifest_sha256": digest(manifest_bytes),
        "module_destinations": mapping, "explicit_external_import_relocations": external_relocations,
        "audit_module": audit_module, "aggregator_module": aggregator_module,
        "lean_version": version, "lean_executable": str(args.lean),
        "lean_sha256": sha256(args.lean), "kernel_trust_level": 0,
        "warnings_as_errors": True, "fresh_project_build": True,
        "import_search_roots": [str(build), *map(str, roots)],
        "mathlib_anchors": [{"path": str(p / "Mathlib.olean"),
                              "sha256": sha256(p / "Mathlib.olean")}
                             for p in roots if (p / "Mathlib.olean").is_file()],
        "source_directories": SOURCE_DIRECTORIES, "frozen_local_source_module_count": len(sources),
        "exported_source_module_count": len(modules), "deferred_local_sources": deferred_records,
        "includes_native_budget_adapter": "CCCAdapter" in modules,
        "aggregator": str(aggregator), "aggregator_sha256": sha256(aggregator),
        "unreachable_from_kernel_audit": unaudited, "source_exports": records,
        "external_sources": [{"module": n.module, "source": str(n.source),
                               "source_sha256": n.original_hash}
                              for n in sorted(nodes.values(), key=lambda n: n.module) if n.external],
        "checked_modules": [],
        "scope": "Import-path relocation and kernel checks only. Open arithmetic "
                 "obligations and conditional hypotheses remain unsupplied.",
    }
    output = destination / "export-receipt.json"
    if args.prepare_only:
        receipt["kernel_checked"] = False
        output.write_text(json.dumps(receipt, indent=2) + "\n")
        print(f"Prepared {len(modules)} source modules; {len(deferred_modules)} explicitly deferred; no kernel check claimed.")
        print(f"Export: {destination}\nReceipt: {output}")
        return 0
    if unaudited:
        receipt["status"] = "failed"
        receipt["error"] = "KernelAudit does not reach every exported source module"
        output.write_text(json.dumps(receipt, indent=2) + "\n")
        print(receipt["error"] + ": " + ", ".join(unaudited), file=sys.stderr)
        return 1
    environment = os.environ.copy()
    environment["LEAN_PATH"] = os.pathsep.join(map(str, [build, *roots]))
    started = time.time()
    failed, completed, pending = False, set(), set(nodes)

    def compile_module(name: str) -> dict:
        node = nodes[name]
        artifact = build / (name.replace(".", "/") + ".olean")
        artifact.parent.mkdir(parents=True, exist_ok=True)
        result = subprocess.run([str(args.lean), "--trust=0", "-DwarningAsError=true",
                                 "-o", str(artifact), str(node.source)],
                                cwd=node.cwd, env=environment, capture_output=True, text=True)
        unchanged = (sha256(node.original) == node.original_hash and
                     sha256(node.source) == node.exported_hash)
        passed = result.returncode == 0 and unchanged and "sorryAx" not in result.stdout + result.stderr
        return {"module": name, "external_read_only_source": node.external,
                "dependencies": sorted(node.dependencies), "source_unchanged": unchanged,
                "export_unchanged": sha256(node.source) == node.exported_hash,
                "exit_code": result.returncode, "passed": passed,
                "stdout": result.stdout, "stderr": result.stderr}

    with ThreadPoolExecutor(max_workers=args.jobs) as executor:
        running = {}
        while pending or running:
            if not failed:
                ready = sorted(name for name in pending if nodes[name].dependencies <= completed)
                for name in ready[:args.jobs - len(running)]:
                    running[executor.submit(compile_module, name)] = name
                    pending.remove(name)
            if not running:
                if pending:
                    receipt["error"] = "Dependency cycle or failed prerequisite: " + ", ".join(sorted(pending))
                    failed = True
                break
            finished, _ = wait(running, return_when=FIRST_COMPLETED)
            for future in finished:
                name = running.pop(future)
                checked = future.result()
                receipt["checked_modules"].append(checked)
                print(f"{name}: {'kernel-checked' if checked['passed'] else 'FAILED'}", flush=True)
                if checked["passed"]:
                    completed.add(name)
                else:
                    failed = True
                    print(checked["stdout"], end="", flush=True)
                    print(checked["stderr"], end="", file=sys.stderr, flush=True)
    controls = []
    if not failed and aggregator_module in completed:
        control_root = destination / ".audit-controls"
        control_root.mkdir()

        def reject_custom_axiom(spec: tuple[str, str]) -> dict:
            namespace, visibility = spec
            control = control_root / f"{namespace}_{visibility}.lean"
            modifier = "private " if visibility == "private" else ""
            control.write_text(f"import {audit_module}\nnamespace {namespace}\n"
                               f"{modifier}axiom hostileCustomAxiom : False\nend {namespace}\n"
                               "run_cmd P04Audit.check\n")
            result = subprocess.run([str(args.lean), "--trust=0", "-DwarningAsError=true", str(control)],
                                    cwd=destination, env=environment, capture_output=True, text=True)
            rejected = (result.returncode != 0 and "Unapproved axiom" in result.stdout and
                        "hostileCustomAxiom" in result.stdout)
            return {"namespace": namespace, "visibility": visibility,
                    "rejected": rejected, "exit_code": result.returncode,
                    "stdout": result.stdout, "stderr": result.stderr}

        specs = [(namespace, visibility) for namespace in CONTROL_NAMESPACES
                 for visibility in ("public", "private")]
        with ThreadPoolExecutor(max_workers=args.jobs) as executor:
            futures = {executor.submit(reject_custom_axiom, spec): spec for spec in specs}
            while futures:
                finished, _ = wait(futures, return_when=FIRST_COMPLETED)
                for future in finished:
                    futures.pop(future)
                    control = future.result()
                    controls.append(control)
                    failed = failed or not control["rejected"]
                    print(f"{control['namespace']} {control['visibility']} custom axiom: "
                          f"{'rejected' if control['rejected'] else 'FAILED'}", flush=True)
        controls.sort(key=lambda row: (row["namespace"], row["visibility"]))
    final_sources = sorted(p for directory in SOURCE_DIRECTORIES
                           for p in (repository / directory).glob("*.lean"))
    unchanged = (sources == final_sources and sha256(args.manifest) == digest(manifest_bytes) and
                 all(sha256(n.original) == n.original_hash and
                     sha256(n.source) == n.exported_hash for n in nodes.values()) and
                 all(sha256(Path(record["source"])) == record["source_sha256"]
                     for record in deferred_records))
    audit_output = next((r["stdout"] for r in receipt["checked_modules"]
                         if r["module"] == audit_module), "")
    counts = re.findall(r"Kernel axiom audit passed for (\d+) declarations", audit_output)
    receipt.update(status="failed" if failed or not unchanged else "kernel-checked",
                   kernel_checked=not failed and unchanged, all_final_hashes_match=unchanged,
                   custom_axiom_negative_controls=controls, compiled_module_count=len(completed),
                   compiled_exported_source_count=len(completed & local_names),
                   audited_declaration_count=int(counts[-1]) if counts else None,
                   elapsed_seconds=time.time() - started)
    receipt["checked_modules"].sort(key=lambda row: row["module"])
    output.write_text(json.dumps(receipt, indent=2) + "\n")
    print(f"Export: {destination}\nReceipt: {output}", flush=True)
    return int(receipt["status"] != "kernel-checked")


if __name__ == "__main__":
    raise SystemExit(main())
