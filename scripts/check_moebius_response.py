#!/usr/bin/env python3
"""Fresh, source-bound kernel check of the manifested mathematical modules.

The default manifest is evidence/moebius-response-sources.json. All sources
are read in place; build products, negative controls, logs and the receipt
are written only below .local/checks. No installation or Git operation occurs.
"""
from __future__ import annotations

import argparse
from concurrent.futures import FIRST_COMPLETED, ThreadPoolExecutor, wait
from dataclasses import dataclass
from datetime import datetime, timezone
import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import sys
import tempfile
import time


NAMESPACES = ("ASBNP04", "PPNC", "PPNCP04", "EulerP04RH", "HSSCP04")
FORBIDDEN_ASSETS = {".pdf", ".tex"}
MODULE_PATTERN = re.compile(r"GRWTSK(?:\.[A-Za-z_][A-Za-z0-9_]*)+")
SUBJECTS = {"Algebra", "Analysis", "Combinatorics", "DynamicalSystems", "Geometry",
            "LinearAlgebra", "Logic", "MeasureTheory", "NumberTheory", "Order",
            "Probability", "Topology", "SetTheory", "CategoryTheory", "Computability"}
FORBIDDEN_COMPONENTS = {"CCC", "RiemannHypothesis", "Conversation", "ProofHorizon",
                        "CorkscrewChamberCap", "SpectralUnificationOfComputabilityAndAlgebraicSymmetry"}


def digest(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def sha256(path: Path) -> str:
    return digest(path.read_bytes())


def code_mask(text: str) -> str:
    """Blank Lean comments and strings, preserving offsets and newlines."""
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
        raise ValueError("Unterminated Lean comment or string")
    return "".join(chars)


def imports(text: str) -> list[str]:
    masked = code_mask(text)
    result = []
    statements = list(re.finditer(
        r"(?m)^[ \t]*(?:public[ \t]+)?(?:meta[ \t]+)?import[ \t]+([^\r\n]*)", masked))
    # This published scope uses one-line imports. Reject unsupported syntax
    # instead of silently leaving a dependency out of the fresh build graph.
    for keyword in re.finditer(r"(?<![A-Za-z0-9_.])import(?![A-Za-z0-9_])", masked):
        if not any(statement.start() <= keyword.start() < statement.start(1)
                   for statement in statements):
            raise ValueError("Unsupported import syntax; use a complete one-line import statement")
    for statement in statements:
        result.extend(re.findall(r"[A-Za-z_][A-Za-z0-9_.]*", statement.group(1)))
        if not statement.group(1).strip():
            raise ValueError("Empty or multiline import statement is outside the manifested source scope")
    return sorted(set(result))


def relative_file(root: Path, value: str) -> Path:
    path = Path(value)
    if path.is_absolute() or ".." in path.parts or not value:
        raise ValueError(f"Expected a repository-relative file: {value}")
    resolved = (root / path).resolve()
    if not resolved.is_relative_to(root) or not resolved.is_file():
        raise ValueError(f"Missing file or escaped repository path: {value}")
    return resolved


def reject_document_assets(root: Path) -> None:
    """The math repository admits no PDF/TeX assets outside ignored state."""
    for directory, subdirs, filenames in os.walk(root, followlinks=False):
        subdirs[:] = [name for name in subdirs if name not in {".git", ".lake", ".local"}]
        for filename in filenames:
            path = Path(directory) / filename
            if path.suffix.lower() in FORBIDDEN_ASSETS:
                raise ValueError(f"Forbidden mathematical repository asset: {path.relative_to(root)}")


def source_assets(source_dirs: set[Path]) -> set[Path]:
    """Inventory non-Lean files in the manifested mathematical source directories."""
    result = set()
    for source_dir in source_dirs:
        for directory, subdirs, filenames in os.walk(source_dir, followlinks=False):
            subdirs[:] = [name for name in subdirs if name not in {".git", ".lake", ".local"}]
            result.update((Path(directory) / name).resolve() for name in filenames
                          if Path(name).suffix != ".lean")
    return result


@dataclass
class Node:
    source: Path
    source_hash: str
    imports: list[str]
    dependencies: set[str]


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--root", type=Path, default=Path(__file__).resolve().parent.parent)
    parser.add_argument("--manifest", type=Path,
                        help="Defaults to ROOT/evidence/moebius-response-sources.json")
    parser.add_argument("--lean", type=Path, default=Path(shutil.which("lean") or "lean"))
    parser.add_argument("--packages", type=Path, help="Defaults to ROOT/.lake/packages")
    parser.add_argument("--jobs", type=int, default=3)
    parser.add_argument("--validate-only", action="store_true",
                        help="Validate the manifest and cache only; no Lean compilation or kernel claim")
    args = parser.parse_args()
    root = args.root.resolve()
    manifest_path = (args.manifest or root / "evidence/moebius-response-sources.json").resolve()
    packages = (args.packages or root / ".lake/packages").resolve()
    lean = args.lean.absolute()
    # Do not invoke an elan shim: it can install a missing toolchain. Resolve
    # only an already-installed project toolchain, or require a direct --lean.
    elan_binary = lean.parent / "elan"
    shim = lean.is_file() and (lean.resolve().name == "elan" or
                              (elan_binary.is_file() and sha256(lean) == sha256(elan_binary)))
    if shim:
        toolchain_file = root / "lean-toolchain"
        toolchain = toolchain_file.read_text().strip() if toolchain_file.is_file() else ""
        elan_home = Path(os.environ.get("ELAN_HOME", str(Path.home() / ".elan")))
        installed = elan_home / "toolchains" / toolchain.replace("/", "--").replace(":", "---") / "bin/lean"
        if not toolchain or not installed.is_file():
            parser.error("Shim not invoked: pass --lean for an already-installed compiler")
        lean = installed.absolute()
    if args.jobs < 1 or not lean.is_file() or not packages.is_dir():
        parser.error("Supply a positive --jobs, installed --lean and compiled --packages cache")

    try:
        manifest_bytes = manifest_path.read_bytes()
        manifest = json.loads(manifest_bytes)
        if manifest.get("schema_version") != 1:
            raise ValueError("Expected manifest schema_version 1")
        records = manifest.get("modules")
        if not isinstance(records, dict) or not records:
            raise ValueError("Manifest modules must be a nonempty module-to-record map")
        nodes = {}
        for module, record in records.items():
            if not MODULE_PATTERN.fullmatch(module) or not isinstance(record, dict):
                raise ValueError(f"Invalid mathematical source module: {module}")
            parts = module.split(".")
            if len(parts) < 3 or parts[1] not in SUBJECTS or FORBIDDEN_COMPONENTS.intersection(parts):
                raise ValueError(f"Expected a mathematical subject/object module: {module}")
            expected_path = module.replace(".", "/") + ".lean"
            if record.get("path") != expected_path:
                raise ValueError(f"Source path must identify its actual module: {module}")
            source = relative_file(root, expected_path)
            actual_hash = sha256(source)
            if record.get("sha256") != actual_hash:
                raise ValueError(f"Manifest source hash mismatch: {module}")
            actual_imports = imports(source.read_text(encoding="utf-8"))
            declared_imports = record.get("imports")
            if not isinstance(declared_imports, list) or any(not isinstance(i, str) for i in declared_imports):
                raise ValueError(f"Exact direct import inventory required: {module}")
            if sorted(set(declared_imports)) != actual_imports or len(declared_imports) != len(set(declared_imports)):
                raise ValueError(f"Added, missing or duplicated manifest import: {module}")
            project_imports = {i for i in actual_imports if i.startswith("GRWTSK.")}
            if project_imports - set(records):
                raise ValueError(f"Unmanifested project imports in {module}: {sorted(project_imports-set(records))}")
            nodes[module] = Node(source, actual_hash, actual_imports, project_imports)
        audit = manifest.get("audit_module")
        aggregator = manifest.get("aggregator_module")
        if audit not in nodes or aggregator not in nodes or audit == aggregator:
            raise ValueError("Declare distinct manifested audit_module and aggregator_module")
        reachable, stack = set(), [audit]
        while stack:
            name = stack.pop()
            if name not in reachable:
                reachable.add(name)
                stack.extend(nodes[name].dependencies)
        if set(nodes) - reachable - {aggregator}:
            raise ValueError(f"Sources unreachable from kernel audit: {sorted(set(nodes)-reachable-{aggregator})}")
        if nodes[aggregator].dependencies != {audit}:
            raise ValueError("Aggregator must import exactly the manifested kernel audit")
        assets = manifest.get("assets", {})
        if not isinstance(assets, dict):
            raise ValueError("Assets must map relative file paths to SHA-256 strings")
        asset_paths = {}
        for name, expected in assets.items():
            path = relative_file(root, name)
            if path.suffix.lower() in FORBIDDEN_ASSETS or path.suffix == ".lean":
                raise ValueError(f"Invalid non-source manifest asset: {name}")
            if sha256(path) != expected:
                raise ValueError(f"Manifest asset hash mismatch: {name}")
            asset_paths[path] = expected
        source_dirs = {node.source.parent for node in nodes.values()}
        actual_assets = source_assets(source_dirs)
        if actual_assets - set(asset_paths):
            raise ValueError("Unmanifested assets beside mathematical sources: " +
                             ", ".join(str(p.relative_to(root)) for p in sorted(actual_assets-set(asset_paths))))
        reject_document_assets(root)
        ignore = (root / ".gitignore").read_text(encoding="utf-8").splitlines()
        if not {"/.local/", ".local/", "/.local", ".local"}.intersection(ignore):
            raise ValueError("Repository .gitignore must explicitly ignore .local")
        if not (root / ".local").resolve().is_relative_to(root):
            raise ValueError("Ignored check state must remain inside the repository")
        version = subprocess.run([str(lean), "--version"], check=True,
                                 capture_output=True, text=True).stdout.strip()
        if not isinstance(manifest.get("lean_version"), str) or manifest["lean_version"] != version:
            raise ValueError(f"Pinned Lean version mismatch: actual {version!r}")
        if manifest.get("lean_sha256") and manifest["lean_sha256"] != sha256(lean):
            raise ValueError("Pinned Lean executable hash mismatch")
        roots = sorted(p / ".lake/build/lib/lean" for p in packages.iterdir()
                       if (p / ".lake/build/lib/lean").is_dir())
        mathlib = [(p / "Mathlib.olean").resolve() for p in roots if (p / "Mathlib.olean").is_file()]
        if not mathlib:
            raise ValueError("No compiled Mathlib.olean in the supplied package cache")
        anchors = manifest.get("package_anchors")
        if not isinstance(anchors, list) or not anchors:
            raise ValueError("Pinned package_anchors with relative path and SHA-256 are required")
        anchor_paths = {}
        for anchor in anchors:
            path = relative_file(packages, anchor["path"])
            if sha256(path) != anchor["sha256"]:
                raise ValueError(f"Pinned package anchor mismatch: {anchor['path']}")
            anchor_paths[path] = anchor["sha256"]
        if not set(mathlib).intersection(anchor_paths):
            raise ValueError("Pin at least the actual cached Mathlib.olean anchor")
        prefix = subprocess.run([str(lean), "--print-prefix"], check=True,
                                capture_output=True, text=True).stdout.strip()
        package_imports = {}
        for name in {i for n in nodes.values() for i in n.imports} - set(nodes):
            candidates = [p / (name.replace(".", "/") + ".olean")
                          for p in [*roots, Path(prefix) / "lib/lean"]]
            found = next((p for p in candidates if p.is_file()), None)
            if found is None:
                raise ValueError(f"Unresolved cached dependency: {name}")
            package_imports[found.resolve()] = sha256(found)
    except (OSError, ValueError, KeyError, TypeError, subprocess.CalledProcessError) as error:
        parser.error(str(error))

    stamp = datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%SZ")
    state_root = root / ".local/checks"
    state_root.mkdir(parents=True, exist_ok=True)
    state = Path(tempfile.mkdtemp(prefix=f"moebius-response-{stamp}-", dir=state_root))
    build, logs, controls_dir = state / "build", state / "logs", state / "controls"
    for directory in (build, logs, controls_dir):
        directory.mkdir()
    environment = os.environ.copy()
    environment["LEAN_PATH"] = os.pathsep.join(map(str, [build, *roots]))
    receipt = {
        "status": "running", "kernel_checked": False, "root": str(root),
        "manifest": str(manifest_path), "manifest_sha256": digest(manifest_bytes),
        "checker": str(Path(__file__).resolve()), "checker_sha256": sha256(Path(__file__).resolve()),
        "lean_version": version, "lean_executable": str(lean), "lean_sha256": sha256(lean),
        "packages": str(packages), "kernel_trust_level": 0, "warnings_as_errors": True,
        "fresh_project_build": True, "import_search_roots": [str(build), *map(str, roots)],
        "audit_module": audit, "aggregator_module": aggregator,
        "source_records": records, "asset_records": assets,
        "package_anchors": anchors,
        "direct_cached_dependencies": [{"path": str(p), "sha256": h}
                                       for p, h in sorted(package_imports.items())],
        "checked_modules": [], "custom_axiom_negative_controls": [],
        "scope": "Kernel and source integrity checks. No open arithmetic obligation is supplied.",
    }
    output = state / "receipt.json"
    if args.validate_only:
        receipt["status"] = "inputs-validated"
        output.write_text(json.dumps(receipt, indent=2)+"\n", encoding="utf-8")
        print(f"Inputs validated; no kernel check claimed. Receipt: {output}", flush=True)
        return 0
    started, completed, pending, failed = time.time(), set(), set(nodes), False

    def compile_module(name: str) -> dict:
        node = nodes[name]
        artifact = build / (name.replace(".", "/") + ".olean")
        artifact.parent.mkdir(parents=True, exist_ok=True)
        result = subprocess.run([str(lean), "--trust=0", "-DwarningAsError=true",
                                 "-o", str(artifact), str(node.source)],
                                cwd=root, env=environment, capture_output=True, text=True)
        unchanged = sha256(node.source) == node.source_hash
        log = logs / (name + ".log")
        log.write_text(result.stdout + result.stderr, encoding="utf-8")
        passed = result.returncode == 0 and unchanged and "sorryAx" not in result.stdout+result.stderr
        return {"module": name, "dependencies": sorted(node.dependencies),
                "source_sha256": node.source_hash, "source_unchanged": unchanged,
                "exit_code": result.returncode, "passed": passed,
                "log": str(log.relative_to(root)), "log_sha256": sha256(log),
                "artifact_sha256": sha256(artifact) if artifact.is_file() else None}

    try:
        with ThreadPoolExecutor(max_workers=args.jobs) as executor:
            running = {}
            while pending or running:
                if not failed:
                    ready = sorted(name for name in pending if nodes[name].dependencies <= completed)
                    for name in ready[:args.jobs-len(running)]:
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
                    result = future.result()
                    receipt["checked_modules"].append(result)
                    if result["passed"]:
                        completed.add(name)
                    else:
                        failed = True
                    print(f"{name}: {'kernel-checked' if result['passed'] else 'FAILED'}", flush=True)
        if not failed:
            def reject_custom_axiom(spec: tuple[str, str]) -> dict:
                namespace, visibility = spec
                source = controls_dir / f"{namespace}_{visibility}.lean"
                modifier = "private " if visibility == "private" else ""
                source.write_text(f"import {audit}\nnamespace {namespace}\n"
                                  f"{modifier}axiom hostileCustomAxiom : False\nend {namespace}\n"
                                  "run_cmd P04Audit.check\n", encoding="utf-8")
                result = subprocess.run([str(lean), "--trust=0", "-DwarningAsError=true", str(source)],
                                        cwd=root, env=environment, capture_output=True, text=True)
                text = result.stdout+result.stderr
                log = logs / f"control_{namespace}_{visibility}.log"
                log.write_text(text, encoding="utf-8")
                rejected = result.returncode != 0 and "Unapproved axiom" in text and "hostileCustomAxiom" in text
                return {"namespace": namespace, "visibility": visibility, "rejected": rejected,
                        "exit_code": result.returncode, "source_sha256": sha256(source),
                        "log": str(log.relative_to(root)), "log_sha256": sha256(log)}
            specs = [(namespace, visibility) for namespace in NAMESPACES
                     for visibility in ("public", "private")]
            with ThreadPoolExecutor(max_workers=args.jobs) as executor:
                for result in executor.map(reject_custom_axiom, specs):
                    receipt["custom_axiom_negative_controls"].append(result)
                    failed = failed or not result["rejected"]
                    print(f"{result['namespace']} {result['visibility']} custom axiom: " +
                          ("rejected" if result["rejected"] else "FAILED"), flush=True)
        audit_log = next((root / r["log"] for r in receipt["checked_modules"] if r["module"] == audit), None)
        counts = re.findall(r"Kernel axiom audit passed for (\d+) declarations",
                            audit_log.read_text() if audit_log else "")
        if not counts:
            failed = True
            receipt["error"] = "No successful declaration axiom audit recorded"
        actual_assets_final = source_assets(source_dirs)
        version_final = subprocess.run([str(lean), "--version"], check=True,
                                       capture_output=True, text=True).stdout.strip()
        unchanged = (manifest_path.read_bytes() == manifest_bytes and
                     sha256(Path(__file__).resolve()) == receipt["checker_sha256"] and
                     sha256(lean) == receipt["lean_sha256"] and
                     version_final == version and
                     all(sha256(n.source) == n.source_hash and imports(n.source.read_text()) == n.imports
                         for n in nodes.values()) and
                     all(sha256(p) == h for p, h in asset_paths.items()) and
                     actual_assets_final <= set(asset_paths) and
                     all(sha256(p) == h for p, h in {**anchor_paths, **package_imports}.items()))
        reject_document_assets(root)
        receipt.update(all_final_hashes_match=unchanged,
                       audited_declaration_count=int(counts[-1]) if counts else None,
                       compiled_module_count=len(completed), elapsed_seconds=time.time()-started,
                       status="kernel-checked" if not failed and unchanged else "failed",
                       kernel_checked=not failed and unchanged)
    except (OSError, ValueError, subprocess.SubprocessError) as error:
        receipt.update(status="failed", error=str(error), elapsed_seconds=time.time()-started)
    receipt["checked_modules"].sort(key=lambda row: row["module"])
    output.write_text(json.dumps(receipt, indent=2)+"\n", encoding="utf-8")
    print(f"Receipt: {output}", flush=True)
    return int(receipt["status"] != "kernel-checked")


if __name__ == "__main__":
    raise SystemExit(main())
