"""Replay the exact RH target cell from public source with a native declaration audit."""
import hashlib
import json
import os
from pathlib import Path
import subprocess
import time

from rh_target_oracle import validate_negative_result, validate_positive_audit

ROOT = Path(__file__).resolve().parent.parent
MODULES = [
    "GRWTSK/Analysis/Complex/CriticalReflection.lean",
    "GRWTSK/NumberTheory/Zeta/Riemann/Hypothesis.lean",
    "GRWTSK/NumberTheory/Zeta/Riemann/ZeroDefinitions.lean",
    "GRWTSK/NumberTheory/Zeta/Riemann/CriticalLineDefect.lean",
    "GRWTSK/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean",
    "GRWTSK/NumberTheory/Zeta/Riemann/DefectCriterion.lean",
    "GRWTSK/NumberTheory/Zeta/Riemann/ZeroExclusions.lean",
    "GRWTSK/NumberTheory/Zeta/Riemann.lean",
]
CHECKS = [
    "checks/NumberTheory/Zeta/Riemann/Declarations.lean",
    "checks/NumberTheory/Zeta/Riemann/ExcludedTrivialZero.lean",
    "checks/Logic/Counterexamples/PositivityIsNotVanishing.lean",
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
    if expected_failure:
        argv.append("--json")
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
    validation = None
    validation_error = None
    if expected_failure:
        try:
            validation = validate_negative_result(
                source, path, path.read_bytes(), process.returncode,
                process.stdout, process.stderr)
        except ValueError as error:
            passed = False
            validation_error = str(error)
    results.append({"source": source, "source_sha256": source_hash,
                    "exit_code": process.returncode, "expected_rejection": expected_failure,
                    "outcome": "passed" if passed else "failed", "seconds": time.monotonic() - start,
                    "output": output.replace(str(ROOT) + "/", ""),
                    "negative_validation": validation,
                    "validation_error": validation_error})
    print(source, process.returncode, flush=True)
    if not passed:
        raise RuntimeError(results[-1])
    return output


try:
    for module in MODULES:
        run(module, compile_module=True)
    audit = run(CHECKS[0])
    declarations.extend(validate_positive_audit(audit))
    allowed_axioms = {"propext", "Classical.choice", "Quot.sound"}
    for item in declarations:
        if not set(item["axioms"]) <= allowed_axioms:
            raise RuntimeError("unapproved axiom: " + item["name"])
    for check in CHECKS[1:]:
        run(check, expected_failure=True)
finally:
    inputs = MODULES + CHECKS + ["scripts/check_rh_target.py", "scripts/rh_target_oracle.py", "lean-toolchain", "lakefile.toml", "lake-manifest.json"]
    report = {
        "schema_version": 2, "cell": "RH-01-exact-target-and-zero-symmetry",
        "outcome": "passed" if len(results) == len(MODULES) + len(CHECKS) and all(r["outcome"] == "passed" for r in results) else "failed",
        "target": "_root_.RiemannHypothesis", "rh_proved": False,
        "scope": "Exact target comparator, defect equivalence, nontrivial-zero domain and zero symmetries; no unconditional RH proof.",
        "lean_version": lean_version,
        "lean_binary_sha256": hashlib.sha256(Path(lean).read_bytes()).hexdigest(),
        "dependency_revisions": {p["name"]: p["rev"] for p in json.loads((ROOT / "lake-manifest.json").read_text())["packages"]},
        "trust_profile": {"trust_level": 0, "allowed_axioms": ["propext", "Classical.choice", "Quot.sound"],
                          "source": "Selected project modules freshly elaborated; pinned dependency objects kernel-checked."},
        "files": {p: hashlib.sha256((ROOT / p).read_bytes()).hexdigest() for p in inputs},
        "declarations": sorted(declarations, key=lambda d: d["name"]), "checks": results,
        "public_acceptance_replaced": False,
        "negative_oracle": "One coded Tactic.unsolvedGoals error at the exact source range and False goal; signals, timeouts, stderr, warnings, unrelated errors and source drift rejected.",
    }
    # Keep the original public acceptance receipt historical. Each invocation
    # retains its own result, including failures and incomplete generations.
    receipt_directory = ROOT / ".local/rh-target/receipts"
    receipt_directory.mkdir(parents=True, exist_ok=True)
    receipt_path = receipt_directory / ("replay-" + str(time.time_ns()) + ".json")
    with receipt_path.open("x") as destination:
        json.dump(report, destination, indent=2)
        destination.write("\n")
    receipt_path.chmod(0o400)
print(json.dumps({"cell": report["cell"], "outcome": report["outcome"], "declarations": len(declarations), "checks": len(results), "receipt": str(receipt_path.relative_to(ROOT))}))
