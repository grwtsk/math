"""Selected source replay and exact Energy consumer-result contracts.

The result oracle is separately source-qualified; immutable full-entrypoint
execution and complete standard owned-audit integration remain pending.
Historical public evidence is preserved; this command writes only local receipts.
"""
from pathlib import Path
import hashlib
import json
import os
import re
import subprocess
import tempfile
import time
from energy_result_oracle import (load_contract, validate_positive_result,
                                  validate_positive_audit, validate_negative_result)

ROOT = Path(__file__).resolve().parents[1]
RUN = Path(tempfile.mkdtemp(prefix="ccc-energy-", dir=ROOT / ".local"))
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
# Project imports must come from this run's fresh source objects.
CACHE = ":".join(p for p in CACHE.split(":") if Path(p).resolve() != (ROOT / ".lake/build/lib/lean").resolve())
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
        match = re.match(r"^\s*import\s+(.+)$", line)
        if match:
            for dependency in match[1].split("--", 1)[0].split():
                if dependency.startswith("GRWTSK."):
                    visit(dependency)
    ACTIVE.remove(module)
    SEEN.add(module)
    ORDER.append(path)


for module in ['GRWTSK.LinearAlgebra.AlmostMathieu', 'GRWTSK.Analysis.LaplaceTransform.ExponentialThreshold', 'GRWTSK.LinearAlgebra.Determinant.RankOneQuadraticForm', 'GRWTSK.NumberTheory.Zeta.Riemann.PolynomialEnergyCriterion', 'GRWTSK.NumberTheory.Moebius.ComparisonEnergy', 'GRWTSK.NumberTheory.Moebius.IntegerSampleGrowth', 'GRWTSK.NumberTheory.Moebius.UnsignedEnergyBound']:
    visit(module)
CONTRACT_PATH = ROOT / "checks/Analysis/Energy/result-contracts.json"
CONTRACT = load_contract(CONTRACT_PATH.read_bytes())
CONTROLS = ["MissingBudget", "DeterminantPaysBudget", "WrongPhase",
            "SingleRate", "FiniteSamples", "DroppedResidual"]
INPUTS = ORDER + ["checks/Analysis/Energy/Declarations.lean", "scripts/check_ccc_energy.py",
                  "scripts/energy_result_oracle.py", "checks/Analysis/Energy/result-contracts.json",
                  "lean-toolchain", "lakefile.toml", "lake-manifest.json", "docs/mathematics/NumberTheory/Moebius/Energy/growth.md"]
INPUTS += ["checks/Analysis/Energy/Controls/" + name + ".lean" for name in CONTROLS]
HASHES = {p: hashlib.sha256((ROOT / p).read_bytes()).hexdigest() for p in INPUTS}
CONTEXT_HASHES = {path: HASHES[path] for path in ORDER}
(RUN / "source-freeze.json").write_text(json.dumps(HASHES, indent=2) + "\n")
RESULTS = []


def stable_inputs():
    for rel, expected in HASHES.items():
        source = ROOT / rel
        if source.is_symlink() or hashlib.sha256(source.read_bytes()).hexdigest() != expected:
            raise RuntimeError("input changed during verification: " + rel)


def run(rel, expected_success=True, export=False):
    stable_inputs()
    source_bytes = (ROOT / rel).read_bytes()
    argv = [LEAN, "--trust=0", "--memory=4096", "--threads=1", "-DwarningAsError=true"]
    if not expected_success:
        argv.append("--json")
    if export:
        target = BUILD / Path(rel).with_suffix(".olean")
        target.parent.mkdir(parents=True, exist_ok=True)
        argv += ["-o", str(target)]
    argv.append(str(ROOT / rel))
    started = time.monotonic()
    process = subprocess.run(argv, cwd=ROOT, env=ENV, capture_output=True, text=True, timeout=600)
    out_path = RUN / (rel.replace("/", "--") + ".stdout")
    err_path = RUN / (rel.replace("/", "--") + ".stderr")
    out_path.write_text(process.stdout)
    err_path.write_text(process.stderr)
    entry = {"path": rel, "source_sha256": hashlib.sha256(source_bytes).hexdigest(),
             "expected_success": expected_success, "actual_success": process.returncode == 0,
             "exit_code": process.returncode, "timed_out": False, "argv": argv,
             "seconds": time.monotonic() - started,
             "stdout": str(out_path), "stderr": str(err_path),
             "stdout_sha256": hashlib.sha256(process.stdout.encode()).hexdigest(),
             "stderr_sha256": hashlib.sha256(process.stderr.encode()).hexdigest(),
             "output_sha256": hashlib.sha256((process.stdout + process.stderr).encode()).hexdigest(),
             "qualified_outcome": "UNQUALIFIED"}
    RESULTS.append(entry)
    try:
        if expected_success:
            validation = validate_positive_result(process.returncode, process.stdout,
                                                  process.stderr, timed_out=False)
        else:
            validation = validate_negative_result(
                rel, str(ROOT / rel), source_bytes, CONTEXT_HASHES, process.returncode,
                process.stdout, process.stderr, contract=CONTRACT,
                argv=argv, timed_out=False)
        stable_inputs()
        entry["validation"] = validation
        entry["qualified_outcome"] = "PASSED" if expected_success else "SOLE_EXACT_INTENDED_ERROR"
    finally:
        (RUN / "progress.json").write_text(json.dumps(RESULTS, indent=2) + "\n")
    print(rel, entry["qualified_outcome"], flush=True)
    return process.stdout


try:
    for path in ORDER:
        run(path, export=True)
    output = run("checks/Analysis/Energy/Declarations.lean")
    audit_result = validate_positive_audit(
        "checks/Analysis/Energy/Declarations.lean",
        str(ROOT / "checks/Analysis/Energy/Declarations.lean"),
        (ROOT / "checks/Analysis/Energy/Declarations.lean").read_bytes(),
        CONTEXT_HASHES, 0, output, "", contract=CONTRACT,
        argv=RESULTS[-1]["argv"], timed_out=False)
    declarations = audit_result["declarations"]
    contracts = {
        "riemannHypothesis_of_pickupCrossPoly": "PickupCrossPoly → RiemannHypothesis",
        "riemannHypothesis_of_pickupCrossSubexp": "PickupCrossSubexp → RiemannHypothesis",
        "riemannHypothesis_of_pickupCrossNatSubexp": "PickupCrossNatSubexp → RiemannHypothesis",
        "riemannHypothesis_of_pickupCrossNatPoly": "PickupCrossNatPoly → RiemannHypothesis",
        "riemannHypothesis_of_pickupWeightedEnergyAll": "PickupWeightedEnergyAll → RiemannHypothesis",
        "riemannHypothesis_of_pickupEnergyAbscissa_zero": "pickupEnergyAbscissa = 0 → RiemannHypothesis",
    }
    terminals = {}
    for name, expected in contracts.items():
        declaration = next(d for d in declarations if d["name"].endswith("." + name))
        if " ".join(declaration["type"].split()) != expected:
            raise RuntimeError(name + " lost its premise or target")
        terminals[name] = declaration
    terminal = terminals["riemannHypothesis_of_pickupCrossPoly"]
    for name in CONTROLS:
        run("checks/Analysis/Energy/Controls/" + name + ".lean", expected_success=False)
    stable_inputs()
    receipt = {"schema_version": 1, "status": "SCOPED_CONSUMER_RESULTS_PASSED_STANDARD_AUDIT_INTEGRATION_PENDING",
               "full_entrypoint_qualified": False,
               "complete_current_consumer_acceptance": False,
               "public_acceptance_replaced": False,
               "rh_proved": False, "P04_witness": None,
               "terminal_theorem": terminal, "terminal_theorems": terminals,
               "arithmetic_frontier": {
                   "P04": "OPEN", "every_rate_subexponential_bound": "OPEN",
                   "pickup_energy_abscissa_zero": "OPEN",
                   "complete_comparison_and_residual_supplier": "OPEN"},
               "source_sha256": HASHES,
               "lean_version": VERSION, "dependency_revisions": PINS,
               "dependency_scope": "Pinned dependency objects; complete selected project source closure freshly elaborated and exported at trust zero",
               "declaration_count": len(declarations), "declarations": declarations,
               "checks": RESULTS,
               "acceptance": "Local candidate; no upstream admission, independent review, or publication"}
    (RUN / "receipt.json").write_text(json.dumps(receipt, indent=2) + "\n")
    print("ENERGY_SELECTED_SOURCE_AND_EXACT_CONSUMER_RESULTS_PASSED", str(RUN / "receipt.json"), flush=True)
except Exception as error:
    (RUN / "failure.json").write_text(json.dumps({"status": "FAILED", "error": str(error), "checks": RESULTS}, indent=2) + "\n")
    raise
