#!/usr/bin/env python3
"""Portable source-frozen replay of the public causal-realization admission catalog.

python3 -B scripts/replay_causal_realization.py --preflight-only
python3 -B scripts/replay_causal_realization.py --prepare
python3 -B scripts/replay_causal_realization.py --execute --plan-sha SHA256
Outputs stay under .local/causal-realization-replay. New attempts require fresh
--run-name and --plan-name. Install the pinned Lake dependencies beforehand.
Preparation reads installed package pins and Lake environment paths, without
invoking Lean, fetching dependencies, restoring archives, or modifying sources.
Native execution freezes the exact catalog scope and audits its complete owned
declaration closure. It does not replay the separate full GRWTSK root consumer.
"""
import argparse
import datetime
import hashlib
import json
import os
from pathlib import Path
import re
import stat
import subprocess
import sys
import time

ROOT = Path(__file__).resolve().parents[1]
BASE = ROOT / ".local/causal-realization-replay"
CATALOG = ROOT / "evidence/Analysis/InnerProductSpace/CausalRealization/formalization-admission.json"
FLAGS = ["--trust=0", "--threads=1", "--memory=8192", "-DwarningAsError=true",
         "-DautoImplicit=false", "-DrelaxedAutoImplicit=false",
         "-Dweak.linter.mathlibStandardSet=true", "-Dweak.linter.style.header=false"]
ALLOWED = {"propext", "Classical.choice", "Quot.sound"}
TOOLCHAIN = "leanprover/lean4:v4.33.0"
LEAN_COMMIT = "d8b18978322de05a8f3dba51ef03cf5461676c17"
QUALIFICATION = (
    "Fresh frozen selected-source transitive GRWTSK closure only; installed pinned dependency objects. "
    "No full repository replay, dependency source rebuild, independent object-to-source authentication, "
    "or binding of post-run dependency fingerprints to earlier import times. No mathematics beyond exact checked statements.")


def sha(data):
    return hashlib.sha256(data).hexdigest()


def read(path):
    path = Path(path).absolute()
    for component in [path, *path.parents]:
        if component.is_symlink():
            raise RuntimeError("symlink input: " + str(component))
    fd = os.open(path, os.O_RDONLY | os.O_NOFOLLOW | getattr(os, "O_NONBLOCK", 0))
    with os.fdopen(fd, "rb") as stream:
        before = os.fstat(stream.fileno())
        if not stat.S_ISREG(before.st_mode):
            raise RuntimeError("nonregular input: " + str(path))
        content = stream.read()
        after = os.fstat(stream.fileno())
    identity = lambda s: (s.st_dev, s.st_ino, s.st_size, s.st_mtime_ns, s.st_ctime_ns)
    if identity(before) != identity(after):
        raise RuntimeError("input changed during read: " + str(path))
    return content


def private(path):
    path = Path(path).absolute()
    path.relative_to(BASE)
    if ".." in path.parts or any(p.is_symlink() for p in [path, *path.parents]):
        raise RuntimeError("unsafe private output path: " + str(path))
    return path


def write(path, content, readonly=False):
    path = private(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    fd = os.open(path, os.O_WRONLY | os.O_CREAT | os.O_EXCL | os.O_NOFOLLOW, 0o600)
    with os.fdopen(fd, "wb") as stream:
        stream.write(content)
        if readonly:
            os.fchmod(stream.fileno(), 0o444)


def json_write(path, value, replace=False):
    content = (json.dumps(value, indent=2, sort_keys=True) + "\n").encode()
    if not replace:
        write(path, content)
    else:
        path = private(path)
        temporary = path.with_name(path.name + ".tmp-" + str(time.time_ns()))
        write(temporary, content)
        os.replace(temporary, path)


def output(argv, cwd=ROOT):
    return subprocess.check_output(argv, cwd=cwd, text=True, timeout=60).strip()


def clean_lean(text):
    result, i, depth, quoted = [], 0, 0, False
    while i < len(text):
        pair = text[i:i + 2]
        if depth:
            if pair == "/-": depth += 1; result.append("  "); i += 2
            elif pair == "-/": depth -= 1; result.append("  "); i += 2
            else: result.append("\n" if text[i] == "\n" else " "); i += 1
        elif quoted:
            if text[i] == "\\" and i + 1 < len(text): result.append("  "); i += 2
            elif text[i] == '"': quoted = False; result.append(" "); i += 1
            else: result.append("\n" if text[i] == "\n" else " "); i += 1
        elif pair == "/-": depth = 1; result.append("  "); i += 2
        elif pair == "--":
            end = text.find("\n", i); end = len(text) if end < 0 else end
            result.append(" " * (end - i)); i = end
        elif text[i] == '"': quoted = True; result.append(" "); i += 1
        else: result.append(text[i]); i += 1
    if depth or quoted:
        raise RuntimeError("unterminated Lean comment/string")
    return "".join(result)


def imports(content):
    result = []
    for match in re.finditer(r"^\s*(?:public\s+)?import\s+([^\n]+)", clean_lean(content.decode()), re.M):
        for name in match[1].split():
            if not re.fullmatch(r"[\w']+(?:\.[\w']+)*", name):
                raise RuntimeError("unsupported import: " + name)
            result.append(name)
    return result


def selected_names(content):
    stack, names = [], []
    for line in clean_lean(content.decode()).splitlines():
        match = re.match(r"\s*namespace\s+([\w.']+)\s*$", line)
        if match:
            name = match[1]
            stack.append(name if name.startswith("GRWTSK.") else ".".join([*stack[-1:], name]))
        elif re.match(r"\s*end(?:\s+[\w.']+)?\s*$", line):
            if stack: stack.pop()
        else:
            match = re.match(r"\s*#print\s+axioms\s+@?([\w.']+)\s*$", line)
            if match:
                name = match[1]
                names.append(name if name.startswith("GRWTSK.") else ".".join([*stack[-1:], name]))
    return names


def package_states(manifest):
    states = {}
    for item in manifest["packages"]:
        if item.get("type") != "git":
            raise RuntimeError("non-Git installed package requires a separate identity plan")
        package = ROOT / ".lake/packages" / item["name"]
        head = output(["git", "rev-parse", "HEAD"], package)
        dirty = output(["git", "status", "--porcelain=v1", "--untracked-files=no"], package)
        if head != item["rev"] or dirty:
            raise RuntimeError("package pin/cleanliness mismatch: " + item["name"])
        states[item["name"]] = {"root": str(package), "head": head, "tracked_dirty_state": dirty}
    return states


def safe_relative(value, prefix=None, suffix=None):
    if not isinstance(value, str) or not value or "\\" in value:
        raise RuntimeError("invalid catalog path")
    path = Path(value)
    if path.is_absolute() or any(part in ("", ".", "..") for part in value.split("/")) or path.as_posix() != value:
        raise RuntimeError("unsafe catalog path: " + value)
    if prefix and not value.startswith(prefix): raise RuntimeError("catalog path outside permitted category: " + value)
    if suffix and not value.endswith(suffix): raise RuntimeError("catalog path has wrong suffix: " + value)
    return value


def catalog_rows(catalog, key, prefix=None):
    rows = catalog.get(key)
    if not isinstance(rows, list) or not rows: raise RuntimeError("missing nonempty catalog array: " + key)
    result = {}
    for row in rows:
        path = safe_relative(row["path"], prefix, ".lean" if prefix else None)
        expected = row["sha256"]
        if not isinstance(expected, str) or not re.fullmatch(r"[0-9a-f]{64}", expected):
            raise RuntimeError("invalid catalog SHA: " + path)
        if path in result: raise RuntimeError("duplicate catalog path: " + path)
        content = read(ROOT / path)
        if sha(content) != expected: raise RuntimeError("catalog source/config hash mismatch: " + path)
        if "bytes" in row and (type(row["bytes"]) is not int or len(content) != row["bytes"]):
            raise RuntimeError("catalog byte count mismatch: " + path)
        result[path] = {"row": row, "content": content}
    return result


def prepare(args):
    catalog_bytes = read(CATALOG)
    catalog = json.loads(catalog_bytes)
    sources = catalog_rows(catalog, "sources", "GRWTSK/")
    audit_rows = catalog_rows(catalog, "audits", "checks/")
    closure = catalog_rows(catalog, "closure", "GRWTSK/")
    configs = catalog_rows(catalog, "pinned_config")
    required_config = {"lean-toolchain", "lakefile.toml", "lake-manifest.json", "GRWTSK/Logic/ProofChecking/Checks/OwnedDeclarationAudit.lean"}
    if set(configs) != required_config: raise RuntimeError("catalog pinned_config must contain exactly the four replay controls")
    if len(sources) != 54 or len(audit_rows) != 30 or len(closure) != 86:
        raise RuntimeError("catalog must select 54 sources, 30 audits, and 86 closure modules")
    if not set(sources) <= set(closure): raise RuntimeError("selected source absent from closure catalog")
    for path, entry in sources.items():
        if entry["content"] != closure[path]["content"]: raise RuntimeError("selected/closure hash conflict")
    selected_sources = [path[:-5].replace("/", ".") for path in sorted(sources)]
    audits = []
    for path, entry in sorted(audit_rows.items()):
        names = selected_names(entry["content"])
        if not names: raise RuntimeError("empty selected audit: " + path)
        if "selected" in entry["row"] and entry["row"]["selected"] != names:
            raise RuntimeError("catalog ordered audit vector mismatch: " + path)
        audits.append({"path": path, "sha256": sha(entry["content"]), "selected": names})
    names = [name for audit in audits for name in audit["selected"]]
    if len(names) != 216 or len(set(names)) != len(names): raise RuntimeError("catalog must bind 216 distinct selected roots")
    modules, order, active = {}, [], set()
    def visit(module):
        if module in active: raise RuntimeError("cyclic project import: " + module)
        if module in modules: return
        active.add(module)
        relative = module.replace(".", "/") + ".lean"
        if relative not in closure: raise RuntimeError("project import absent from exact catalog closure: " + module)
        content = closure[relative]["content"]
        dependencies = imports(content)
        for dependency in dependencies:
            if dependency == "GRWTSK" or dependency.startswith("GRWTSK."): visit(dependency)
        active.remove(module)
        modules[module] = {"path": relative, "sha256": sha(content), "bytes": len(content), "imports": dependencies}
        order.append(module)
    for module in selected_sources: visit(module)
    for audit in audits:
        for dependency in imports(audit_rows[audit["path"]]["content"]):
            if dependency == "GRWTSK" or dependency.startswith("GRWTSK."): visit(dependency)
    if {entry["path"] for entry in modules.values()} != set(closure):
        raise RuntimeError("catalog closure is not exactly the transitive source/audit closure")
    if configs["lean-toolchain"]["content"].decode().strip() != TOOLCHAIN:
        raise RuntimeError("unexpected Lean toolchain pin")
    manifest = json.loads(configs["lake-manifest.json"]["content"])
    packages = package_states(manifest)
    raw_path = output(["lake", "env", "printenv", "LEAN_PATH"])
    paths, removed, toolchain_lib = [], [], None
    package_root = (ROOT / ".lake/packages").resolve()
    for entry in raw_path.split(os.pathsep):
        if not entry: continue
        path = Path(entry).resolve()
        if path.is_relative_to(package_root): paths.append(str(path))
        elif str(path).endswith("leanprover--lean4---v4.33.0/lib/lean"):
            paths.append(str(path)); toolchain_lib = path
        else: removed.append(str(path))
    if toolchain_lib is None: raise RuntimeError("pinned toolchain library missing from installed Lake environment")
    lean = toolchain_lib.parent.parent / "bin/lean"
    body = configs["GRWTSK/Logic/ProofChecking/Checks/OwnedDeclarationAudit.lean"]["content"].decode()
    owner = re.search(r"let runtimeOwner := `([^\n]+)", body)[1].strip()
    accepted = re.search(r'let acceptedSourceHash := "([0-9a-f]{64})"', body)[1]
    owner_hash = modules.get(owner, {}).get("sha256", "")
    if owner_hash and owner_hash != accepted: raise RuntimeError("existing runtime owner source hash mismatch")
    transformed = "\n".join(line for line in body.splitlines() if not re.match(r"\s*import\s", line))
    if transformed.count('#audit_math_trust ""') != 1: raise RuntimeError("unexpected owner-audit invocation")
    transformed = transformed.replace('#audit_math_trust ""', '#audit_math_trust "' + owner_hash + '"')
    wrapper = ("\n".join("import " + module for module in order) + "\nimport Lean\n" + transformed + "\n").encode()
    report = {"status": "PREFLIGHT_PASS", "catalog_sha256": sha(catalog_bytes), "modules": len(modules),
              "selected_sources": len(sources), "audits": len(audits), "selected_reports": len(names),
              "removed_paths": removed, "compiler_launched": False, "production_admission": False}
    if args.preflight_only:
        print(json.dumps(report)); return
    run = private(BASE / args.run_name)
    plan_path = private(BASE / args.plan_name)
    if run.exists() or plan_path.exists(): raise RuntimeError("refusing an existing run/plan; choose fresh names")
    run.mkdir(mode=0o700, parents=True)
    inputs, frozen, canonical = run / "inputs", {}, {}
    def freeze(relative, content, origin=None):
        write(inputs / relative, content, readonly=True)
        frozen[relative] = sha(content)
        if origin is not None: canonical[origin] = sha(content)
    for path, entry in closure.items(): freeze(path, entry["content"], path)
    for path, entry in audit_rows.items(): freeze(path, entry["content"], path)
    for path, entry in configs.items(): freeze(path, entry["content"], path)
    freeze("formalization-admission.json", catalog_bytes, CATALOG.relative_to(ROOT).as_posix())
    freeze("CausalClosureTrustAudit.lean", wrapper)
    commands = [{"kind": "source", "name": module, "source": modules[module]["path"],
                 "output": modules[module]["path"][:-5] + ".olean"} for module in order]
    commands += [{"kind": "selected-audit", "name": audit["path"], "source": audit["path"], "selected": audit["selected"]} for audit in audits]
    commands.append({"kind": "owner-census", "name": "CausalClosureTrustAudit", "source": "CausalClosureTrustAudit.lean"})
    plan = {"schema": "causal-source-admission-plan-v1", "prepared_at": datetime.datetime.now(datetime.timezone.utc).isoformat(),
            "checkout": str(ROOT), "catalog_path": str(CATALOG), "catalog_sha256": sha(catalog_bytes),
            "runner_sha256": sha(read(Path(__file__))), "run": str(run), "inputs": str(inputs),
            "build": str(run / "build"), "flags": FLAGS, "lean": str(lean), "lean_binary_sha256": sha(read(lean)),
            "dependency_paths": list(dict.fromkeys(paths)), "removed_paths": removed,
            "path_discovery": {"argv": ["lake", "env", "printenv", "LEAN_PATH"], "stdout": raw_path},
            "package_states": packages, "canonical_sha256": canonical, "frozen_sha256": frozen,
            "selected_modules": selected_sources, "modules": modules, "module_order": order,
            "audits": audits, "commands": commands, "selected_report_count": len(names),
            "runtime_owner_profile": {"owner": owner, "accepted_hash": accepted, "actual_hash": owner_hash},
            "qualification": QUALIFICATION, "compiler_launched": False, "production_admission": False}
    json_write(plan_path, plan)
    report.update(plan=str(plan_path), plan_sha256=sha(read(plan_path)), commands=len(commands))
    print(json.dumps(report))


def parse_census(text, plan):
    declarations = [json.loads(s) for s in re.findall(r"MATH_TRUST_DECL::(\{[^\n]+\})", text)]
    modules = [json.loads(s) for s in re.findall(r"MATH_TRUST_MODULE::(\{[^\n]+\})", text)]
    if re.findall(r"MATH_TRUST_COUNT::(\d+)", text) != [str(len(declarations))] or not declarations:
        raise RuntimeError("incomplete native declaration census")
    if re.findall(r"MATH_TRUST_MODULE_COUNT::(\d+)", text) != [str(len(modules))]:
        raise RuntimeError("incomplete native module count")
    if len({m["module"] for m in modules}) != len(modules) or {m["module"] for m in modules} != set(plan["modules"]):
        raise RuntimeError("native owner set differs from complete frozen closure")
    if len({d["name"] for d in declarations}) != len(declarations): raise RuntimeError("duplicate native declaration")
    for module in modules:
        if type(module.get("declarations")) is not int or module["declarations"] < 0:
            raise RuntimeError("invalid module declaration count")
        if sum(d["module"] == module["module"] for d in declarations) != module["declarations"]:
            raise RuntimeError("module declaration count mismatch")
    if sum(m["declarations"] for m in modules) != len(declarations): raise RuntimeError("owner/declaration total mismatch")
    profile = plan["runtime_owner_profile"]
    for d in declarations:
        known = (d["name"] == "GRWTSK.Algebra.orderedProduct._unsafe_rec" and d["module"] == profile["owner"]
                 and d["kind"] == "definition" and d["unsafe"] and not d["partial"]
                 and profile["actual_hash"] == profile["accepted_hash"]
                 and d["runtime_helper_owner_source_sha256"] == profile["accepted_hash"])
        if d["known_generated_runtime_helper"] != known: raise RuntimeError("invalid runtime-helper exception")
        if (d["unsafe"] and not known) or d["partial"] or d["kind"] == "axiom" or not set(d["axioms"]) <= ALLOWED:
            raise RuntimeError("trust violation: " + d["name"])
        if d["kind"] == "theorem" and d["direct_value_reference_to_runtime_helper"]:
            raise RuntimeError("theorem directly consumes unsafe runtime")
    return declarations, modules


def parse_selected(text, expected):
    pattern = r"'([^'\n]+)' (?:depends on axioms:\s*\[([^\]]*)\]|does not depend on any axioms)"
    reports = [{"name": m[1], "axioms": [a.strip() for a in (m[2] or "").split(",") if a.strip()]}
               for m in re.finditer(pattern, text)]
    if [r["name"] for r in reports] != expected: raise RuntimeError("ordered selected axiom report mismatch")
    if any(not set(r["axioms"]) <= ALLOWED for r in reports): raise RuntimeError("unapproved selected transitive axiom")
    return reports


def execute(args):
    plan_path = private(BASE / args.plan_name)
    plan_bytes = read(plan_path)
    if sha(plan_bytes) != args.plan_sha: raise RuntimeError("plan hash mismatch")
    plan = json.loads(plan_bytes)
    if plan["schema"] != "causal-source-admission-plan-v1" or plan["checkout"] != str(ROOT) or plan["flags"] != FLAGS:
        raise RuntimeError("plan identity/flags mismatch")
    if sha(read(Path(__file__))) != plan["runner_sha256"]: raise RuntimeError("runner hash mismatch")
    run, inputs, build = map(private, [plan["run"], plan["inputs"], plan["build"]])
    if build.exists(): raise RuntimeError("refusing existing compiled outputs; preserve and create a fresh run")
    build.mkdir(mode=0o700)
    (run / "logs").mkdir(mode=0o700)
    env = dict(os.environ, LEAN_PATH=os.pathsep.join([str(build), *plan["dependency_paths"]]),
               LEAN_NUM_THREADS="1", LEAN_IMPORT_WORKERS="1")
    env.pop("LEAN_SRC_PATH", None)
    results, selected, own_outputs = [], [], {}
    state = {"schema": "causal-source-admission-receipt-v1", "plan_sha256": args.plan_sha,
             "runner_sha256": plan["runner_sha256"], "run": str(run), "status": "RUNNING",
             "LEAN_PATH": env["LEAN_PATH"], "qualification": QUALIFICATION, "production_admission": False,
             "results": results, "compiler_launched": False}
    def stable():
        for relative, expected in plan["canonical_sha256"].items():
            if sha(read(ROOT / relative)) != expected: raise RuntimeError("canonical input drift: " + relative)
        for relative, expected in plan["frozen_sha256"].items():
            if sha(read(inputs / relative)) != expected: raise RuntimeError("frozen input drift: " + relative)
        if sha(read(Path(plan["lean"]))) != plan["lean_binary_sha256"]: raise RuntimeError("compiler binary drift")
        for path, expected in own_outputs.items():
            if sha(read(Path(path))) != expected: raise RuntimeError("own imported object drift: " + path)
    def compile_one(command):
        stable()
        argv = [plan["lean"], *FLAGS]
        if command.get("output"):
            destination = build / command["output"]
            destination.parent.mkdir(parents=True, exist_ok=True)
            if destination.exists(): raise RuntimeError("existing output: " + str(destination))
            argv += ["-o", str(destination)]
        argv.append(str(inputs / command["source"]))
        before_imports = {path: value for path, value in own_outputs.items()}
        entry = {"name": command["name"], "kind": command["kind"], "argv": argv, "cwd": str(inputs),
                 "LEAN_PATH": env["LEAN_PATH"], "source_sha256": plan["frozen_sha256"][command["source"]],
                 "available_project_outputs_before": before_imports, "timeout_seconds": 600}
        entry["command_sha256"] = sha(json.dumps(entry, sort_keys=True).encode())
        state.update(active=command["name"], compiler_launched=True)
        json_write(run / "progress.json", state, replace=True)
        started = time.monotonic()
        try:
            process = subprocess.run(argv, cwd=inputs, env=env, capture_output=True, timeout=600)
            log = process.stdout + process.stderr
            entry["exit_code"] = process.returncode
        except subprocess.TimeoutExpired as error:
            log = (error.stdout or b"") + (error.stderr or b"") + b"\nOWN CHILD TIMEOUT\n"
            entry["exit_code"] = None
        entry["seconds"] = time.monotonic() - started
        label = str(len(results) + 1).zfill(3) + "-" + re.sub(r"[^A-Za-z0-9_.-]", "-", command["name"]) + ".log"
        write(run / "logs" / label, log)
        entry.update(log_path=str(run / "logs" / label), log_sha256=sha(log))
        results.append(entry)
        json_write(run / "progress.json", state, replace=True)
        stable()
        if entry["exit_code"] != 0: raise RuntimeError("native command failed: " + command["name"])
        if command.get("output"):
            for suffix in ("", ".private", ".server"):
                path = Path(str(destination) + suffix)
                if path.is_file(): own_outputs[str(path)] = sha(read(path))
            if str(destination) not in own_outputs: raise RuntimeError("missing fresh own olean")
            entry["created_output_sha256"] = {p: h for p, h in own_outputs.items() if p.startswith(str(destination))}
        print(command["name"], "PASS", flush=True)
        return log.decode(errors="replace")
    try:
        stable()
        manifest = json.loads(read(inputs / "lake-manifest.json"))
        if package_states(manifest) != plan["package_states"]: raise RuntimeError("installed package state drift")
        version = output([plan["lean"], "--version"], inputs)
        state["lean_version"] = version
        if "4.33.0" not in version or LEAN_COMMIT not in version: raise RuntimeError("unexpected pinned compiler version")
        for command in plan["commands"]:
            text = compile_one(command)
            if command["kind"] == "selected-audit": selected.extend(parse_selected(text, command["selected"]))
            elif command["kind"] == "owner-census":
                declarations, modules = parse_census(text, plan)
                dependency_modules = sorted(set(re.findall(r"MATH_TRUST_DEPENDENCY_MODULE::([^\s]+)", text)))
        identities = {}
        for module in dependency_modules:
            relative = module.replace(".", "/") + ".olean"
            found = next((Path(p) / relative for p in plan["dependency_paths"] if (Path(p) / relative).is_file()), None)
            if found is None: raise RuntimeError("unresolved dependency object: " + module)
            identities[module] = [{"path": str(p), "bytes": len(read(p)), "sha256": sha(read(p))}
                                  for p in [found, Path(str(found) + ".private"), Path(str(found) + ".server")] if p.is_file()]
        by_name = {d["name"]: d for d in declarations}
        if len(selected) != plan["selected_report_count"]: raise RuntimeError("selected report total mismatch")
        for report in selected:
            if report["name"] not in by_name or set(report["axioms"]) != set(by_name[report["name"]]["axioms"]):
                raise RuntimeError("selected report/owner census mismatch: " + report["name"])
        stable()
        if package_states(manifest) != plan["package_states"]: raise RuntimeError("installed package state changed during replay")
        state.update(status="FROZEN_CLOSURE_SOURCE_AND_OWNED_AXIOM_AUDIT_PASS", active=None,
                     selected_reports=selected, owned_declarations=declarations, owned_modules=modules,
                     post_run_dependency_object_identities=identities, own_output_sha256=own_outputs)
        json_write(run / "receipt.json", state)
        json_write(run / "progress.json", state, replace=True)
        print(json.dumps({"status": state["status"], "modules": len(modules), "declarations": len(declarations),
                          "selected_reports": len(selected), "receipt": str(run / "receipt.json")}))
        return 0
    except Exception as error:
        state.update(status="FAILED", error=str(error), active=None, own_output_sha256=own_outputs)
        json_write(run / "failure.json", state)
        json_write(run / "progress.json", state, replace=True)
        print(json.dumps({"status": "FAILED", "error": str(error), "failure": str(run / "failure.json")}))
        return 1


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    mode = parser.add_mutually_exclusive_group(required=True)
    mode.add_argument("--preflight-only", action="store_true")
    mode.add_argument("--prepare", action="store_true")
    mode.add_argument("--execute", action="store_true")
    parser.add_argument("--run-name", default="run")
    parser.add_argument("--plan-name", default="admission-plan.json")
    parser.add_argument("--plan-sha")
    args = parser.parse_args()
    if not all(re.fullmatch(r"[A-Za-z0-9_.-]+", name) for name in [args.run_name, args.plan_name]):
        parser.error("run and plan names must be simple private names")
    try:
        if args.prepare or args.preflight_only: prepare(args); return 0
        if not args.plan_sha: parser.error("--execute requires --plan-sha")
        return execute(args)
    except Exception as error:
        print(json.dumps({"status": "PREPARATION_OR_PREFLIGHT_FAILED", "error": str(error)}))
        return 1


if __name__ == "__main__":
    sys.exit(main())
