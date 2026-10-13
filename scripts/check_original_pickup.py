"""Fresh pinned replay of the actual original CCC pickup identification."""
from pathlib import Path
import hashlib
import json
import os
import re
import subprocess
import tempfile
import time

ROOT = Path(__file__).resolve().parents[1]
(ROOT / ".local").mkdir(exist_ok=True)
RUN = Path(tempfile.mkdtemp(prefix="original-pickup-", dir=ROOT / ".local"))
BUILD = RUN / "build"
BUILD.mkdir()
LEAN = subprocess.check_output(["elan", "which", "lean"], cwd=ROOT, text=True).strip()
VERSION = subprocess.check_output([LEAN, "--version"], text=True).strip()
if "4.33.0" not in VERSION or "d8b18978322de05a8f3dba51ef03cf5461676c17" not in VERSION:
    raise RuntimeError("unexpected Lean version: " + VERSION)
LOCK = json.loads((ROOT / "lake-manifest.json").read_text())
PINS = {p["name"]: p["rev"] for p in LOCK["packages"]}
if PINS["mathlib"] != "db584cd6d46c92f209a44c0f1c829460d327499d":
    raise RuntimeError("unexpected mathlib pin")
CACHE = subprocess.check_output(["lake", "env", "printenv", "LEAN_PATH"], cwd=ROOT, text=True).strip()
CACHE = ":".join(p for p in CACHE.split(":")
                 if Path(p).resolve() != (ROOT / ".lake/build/lib/lean").resolve())
ENV = dict(os.environ, LEAN_PATH=str(BUILD) + ":" + CACHE)
ORDER, ACTIVE, SEEN = [], set(), set()


def visit(module):
    if module in ACTIVE:
        raise RuntimeError("cyclic project import: " + module)
    if module in SEEN:
        return
    path = module.replace(".", "/") + ".lean"
    source = ROOT / path
    if source.is_symlink() or not source.is_file():
        raise RuntimeError("invalid project source: " + path)
    ACTIVE.add(module)
    for line in source.read_text().splitlines():
        match = re.match(r"^\s*(?:public\s+)?import\s+(.+)$", line)
        if match:
            for dependency in match[1].split("--", 1)[0].split():
                if dependency.startswith("GRWTSK."):
                    visit(dependency)
    ACTIVE.remove(module)
    SEEN.add(module)
    ORDER.append(path)


visit("GRWTSK.NumberTheory.Moebius.PrimitiveIdentification")
CONTROLS = {
    "MissingTimeOrder": "Type mismatch",
    "MissingMainEnergyBudget": "Type mismatch",
    "ResidualAsMainBudget": "Type mismatch",
    "WrongPrimeSign": "unsolved goals",
    "DroppedOneAtom": "unsolved goals",
    "OnlyOneCrossOrder": "unsolved goals",
}
INPUTS = ORDER + ["checks/NumberTheory/Moebius/PrimitiveIdentification.lean", "scripts/check_original_pickup.py",
                  "lean-toolchain", "lakefile.toml", "lake-manifest.json",
                  "docs/mathematics/NumberTheory/Moebius/Pickup/identification.md"]
INPUTS += ["checks/NumberTheory/Moebius/PrimitiveIdentification/Controls/" + name + ".lean" for name in CONTROLS]
HASHES = {p: hashlib.sha256((ROOT / p).read_bytes()).hexdigest() for p in INPUTS}
(RUN / "source-freeze.json").write_text(json.dumps(HASHES, indent=2) + "\n")
RESULTS = []


def stable_inputs():
    for rel, expected in HASHES.items():
        source = ROOT / rel
        if source.is_symlink() or hashlib.sha256(source.read_bytes()).hexdigest() != expected:
            raise RuntimeError("input changed during verification: " + rel)


def run(rel, expected_success=True, export=False, expected_error=None):
    stable_inputs()
    argv = [LEAN, "--trust=0", "--memory=4096", "--threads=1", "-DwarningAsError=true"]
    if export:
        target = BUILD / Path(rel).with_suffix(".olean")
        target.parent.mkdir(parents=True, exist_ok=True)
        argv += ["-o", str(target)]
    argv.append(str(ROOT / rel))
    started = time.monotonic()
    process = subprocess.run(argv, cwd=ROOT, env=ENV, capture_output=True, text=True, timeout=600)
    output = process.stdout + process.stderr
    (RUN / (rel.replace("/", "--") + ".log")).write_text(output)
    success = process.returncode == 0
    reason_matches = expected_error is None or expected_error.casefold() in output.casefold()
    passed = success == expected_success and reason_matches and (success or "error" in output)
    stable_inputs()
    RESULTS.append({"path": rel, "expected_success": expected_success,
                    "actual_success": success, "exit_code": process.returncode,
                    "seconds": time.monotonic() - started,
                    "output_sha256": hashlib.sha256(output.encode()).hexdigest(),
                    "expected_error_fragment": expected_error,
                    "expected_error_matched": reason_matches})
    (RUN / "progress.json").write_text(json.dumps(RESULTS, indent=2) + "\n")
    print(rel, "PASS" if passed else "FAIL", flush=True)
    if not passed:
        raise RuntimeError(rel + " unexpected result or reason\n" + output)
    return output


for path in ORDER:
    run(path, export=True)
output = run("checks/NumberTheory/Moebius/PrimitiveIdentification.lean")
DECLS = [json.loads(s) for s in re.findall(r"ORIGINAL_PICKUP_DECL::(\{[^\n]+\})", output)]
COUNTS = re.findall(r"ORIGINAL_PICKUP_COUNT::(\d+)", output)
if len(COUNTS) != 1 or len(DECLS) != int(COUNTS[0]) or not DECLS:
    raise RuntimeError("incomplete native declaration audit")
if len({d["name"] for d in DECLS}) != len(DECLS):
    raise RuntimeError("duplicate declaration records")
for name, error in CONTROLS.items():
    run("checks/NumberTheory/Moebius/PrimitiveIdentification/Controls/" + name + ".lean", False, expected_error=error)
stable_inputs()
RECEIPT = {"schema_version": 1, "status": "FRESH_SOURCE_AND_NATIVE_CONTRACT_CHECKS_PASSED",
           "lean": VERSION, "package_revisions": PINS, "source_sha256": HASHES,
           "fresh_project_modules": ORDER, "declarations": DECLS, "checks": RESULTS,
           "pinned_dependency_objects_used": True, "run_directory": str(RUN),
           "scope": "Actual material integral equals actual signed time pickup on nonnegative real times; unsigned responses, closed inventory, complete signed Gram/diagonal/cross, energy/local energy, and budget proposition equivalences; complete comparison residual zero",
           "actual_observable_identification_proved": True,
           "complete_signed_residual_zero_proved": True,
           "complete_signed_residual_all_rate_budget_proved": True,
           "independent_main_energy_all_rate_budget_proved": False,
           "original_supplier_witness_proved": False,
           "sturmian_observable_identification_proved": False,
           "rh_proved": False, "independent_acceptance": "PENDING"}
(ROOT / "evidence/original-pickup-checks.json").write_text(json.dumps(RECEIPT, indent=2) + "\n")
print("ORIGINAL_PICKUP_CHECKS_PASSED", flush=True)
