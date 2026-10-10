"""Replay the exact RH target cell from public source with a native declaration audit."""
import hashlib
import json
import os
from pathlib import Path
import subprocess
import time

ROOT = Path(__file__).resolve().parent.parent
MODULES = [
    "GRWTSK/RiemannHypothesis/TargetStatement.lean",
    "GRWTSK/RiemannHypothesis/Definitions.lean",
    "GRWTSK/RiemannHypothesis/Defect.lean",
    "GRWTSK/RiemannHypothesis/ZeroSymmetry.lean",
    "GRWTSK/RiemannHypothesis/TargetComparator.lean",
    "GRWTSK/RiemannHypothesis.lean",
]
CHECKS = [
    "checks/RHTargetAudit.lean",
    "checks/RHExcludedTrivialZero.lean",
    "checks/RHPositivityIsNotVanishing.lean",
]
BUILD = ROOT / ".local/rh-target/build"
BUILD.mkdir(parents=True, exist_ok=True)
lean = subprocess.check_output(["elan", "which", "lean"], cwd=ROOT, text=True).strip()
lean_version = subprocess.check_output([lean, "--version"], text=True).strip()
if "4.33.0" not in lean_version:
    raise RuntimeError("the selected Lean version must match lean-toolchain")
cache = subprocess.check_output(["lake", "env", "printenv", "LEAN_PATH"], cwd=ROOT, text=True).strip()
env = dict(os.environ, LEAN_PATH=str(BUILD) + os.pathsep + cache)
results = []
declarations = []


def run(source, expected_failure=False, compile_module=False):
    path = ROOT / source
    if path.is_symlink() or not path.is_file():
        raise RuntimeError("a replay input must be a regular public source file: " + source)
    source_hash = hashlib.sha256(path.read_bytes()).hexdigest()
    argv = [lean, "--trust=0", "--memory=4096", "--threads=1", "-DwarningAsError=true"]
    if compile_module:
        output = BUILD / Path(source).with_suffix(".olean")
        output.parent.mkdir(parents=True, exist_ok=True)
        argv += ["-o", str(output)]
    argv += [str(path)]
    start = time.monotonic()
    try:
        process = subprocess.run(argv, cwd=ROOT, env=env, capture_output=True, text=True, timeout=600)
    except subprocess.TimeoutExpired:
        results.append({"source": source, "source_sha256": source_hash,
                        "expected_rejection": expected_failure, "outcome": "timed-out",
                        "seconds": time.monotonic() - start})
        raise
    output = process.stdout + process.stderr
    passed = process.returncode != 0 if expected_failure else process.returncode == 0
    passed = passed and hashlib.sha256(path.read_bytes()).hexdigest() == source_hash
    if expected_failure:
        passed = passed and "unsolved goals" in output
    results.append({"source": source, "source_sha256": source_hash,
                    "exit_code": process.returncode, "expected_rejection": expected_failure,
                    "outcome": "passed" if passed else "failed", "seconds": time.monotonic() - start,
                    "output": output.replace(str(ROOT) + "/", "")})
    print(source, process.returncode, flush=True)
    if not passed:
        raise RuntimeError(results[-1])
    return output


try:
    for module in MODULES:
        run(module, compile_module=True)
    audit = run(CHECKS[0])
    for line in audit.splitlines():
        if line.startswith("RH_DECL::"):
            declarations.append(json.loads(line.removeprefix("RH_DECL::")))
    if not declarations or "RH_COUNT::" + str(len(declarations)) not in audit:
        raise RuntimeError("native declaration audit did not cover the complete cell")
    allowed_axioms = {"propext", "Classical.choice", "Quot.sound"}
    for item in declarations:
        if not set(item["axioms"]) <= allowed_axioms:
            raise RuntimeError("unapproved axiom: " + item["name"])
    for check in CHECKS[1:]:
        run(check, expected_failure=True)
finally:
    inputs = MODULES + CHECKS + ["scripts/check_rh_target.py", "lean-toolchain", "lakefile.toml", "lake-manifest.json"]
    report = {
        "schema_version": 1, "cell": "RH-01-exact-target-and-zero-symmetry",
        "outcome": "passed" if len(results) == 9 and all(r["outcome"] == "passed" for r in results) else "failed",
        "target": "_root_.RiemannHypothesis", "rh_proved": False,
        "scope": "Exact target comparator, defect equivalence, nontrivial-zero domain and zero symmetries; no unconditional RH proof.",
        "lean_version": lean_version,
        "lean_binary_sha256": hashlib.sha256(Path(lean).read_bytes()).hexdigest(),
        "dependency_revisions": {p["name"]: p["rev"] for p in json.loads((ROOT / "lake-manifest.json").read_text())["packages"]},
        "trust_profile": {"trust_level": 0, "allowed_axioms": ["propext", "Classical.choice", "Quot.sound"],
                          "source": "Selected project modules freshly elaborated; pinned dependency objects kernel-checked."},
        "files": {p: hashlib.sha256((ROOT / p).read_bytes()).hexdigest() for p in inputs},
        "declarations": sorted(declarations, key=lambda d: d["name"]), "checks": results,
    }
    (ROOT / "evidence/rh-target-checks.json").write_text(json.dumps(report, indent=2) + "\n")
print(json.dumps({"cell": report["cell"], "outcome": report["outcome"], "declarations": len(declarations), "checks": len(results)}))
