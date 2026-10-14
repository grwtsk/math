"""Fresh closed-cutoff Laplace replay, literal endpoint contracts and domain controls."""
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
RUN = Path(tempfile.mkdtemp(prefix="cutoff-laplace-", dir=ROOT / ".local"))
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


visit("GRWTSK.NumberTheory.Moebius.FiniteLaplaceTransform")
CONTROL_ERRORS = {'MissingWeightedEndpoint': 'Type mismatch', 'MissingMertensEndpoint': 'Type mismatch', 'MissingZNonzero': 'Type mismatch', 'MissingSNonzero': 'Type mismatch', 'RawProduct': 'Type mismatch'}
CONTROLS = list(CONTROL_ERRORS)
INPUTS = ORDER + ["GRWTSK/NumberTheory/Moebius/Checks/Positive/FiniteLaplaceTransform.lean", "scripts/check_pickup_cutoff_laplace.py",
                  "lean-toolchain", "lakefile.toml", "lake-manifest.json",
                  "docs/mathematics/NumberTheory/Moebius/Laplace/cutoff.md"]
INPUTS += ["GRWTSK/NumberTheory/Moebius/FiniteLaplaceTransform/Checks/Negative/" + name + ".lean" for name in CONTROLS]
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
    passed = (success == expected_success and reason_matches and
              (expected_success or "error" in output))
    stable_inputs()
    entry = {"path": rel, "expected_success": expected_success, "actual_success": success,
             "exit_code": process.returncode, "seconds": time.monotonic() - started,
             "output_sha256": hashlib.sha256(output.encode()).hexdigest(),
             "expected_error_fragment": expected_error,
             "expected_error_matched": reason_matches}
    RESULTS.append(entry)
    (RUN / "progress.json").write_text(json.dumps(RESULTS, indent=2) + "\n")
    print(rel, "PASS" if passed else "FAIL", flush=True)
    if success != expected_success or (not expected_success and "error" not in output):
        raise RuntimeError(rel + " unexpected result\n" + output)
    if not reason_matches:
        raise RuntimeError(rel + " failed for an unintended reason\n" + output)
    return output


try:
    for path in ORDER:
        run(path, export=True)
    output = run("GRWTSK/NumberTheory/Moebius/Checks/Positive/FiniteLaplaceTransform.lean")
    declarations = [json.loads(s) for s in re.findall(r"PICKUP_CUTOFF_DECL::(\{[^\n]+\})", output)]
    counts = re.findall(r"PICKUP_CUTOFF_COUNT::(\d+)", output)
    if len(counts) != 1 or len(declarations) != int(counts[0]) or not declarations:
        raise RuntimeError("incomplete native declaration audit")
    if len({d["name"] for d in declarations}) != len(declarations):
        raise RuntimeError("duplicate declaration records")
    required = ["wholePickup_cutoff_laplace", "pickupResponseWindowLaplace",
                "noteWindowLaplace_fixed_inventory", "pickupResponseWindow_at_birth",
                "cutoff_zero_not_without_weighted_endpoint", "cutoff_zero_not_without_mertens_endpoint",
                "cutoff_three_product_debt", "cutoff_three_not_raw_product"]
    contracts = {}
    for name in required:
        declaration = next((d for d in declarations if d["name"].endswith("."+name)), None)
        if declaration is None:
            raise RuntimeError("missing exact theorem: "+name)
        contracts[name] = declaration
    for name in ["wholePickup_cutoff_laplace", "pickupResponseWindowLaplace"]:
        for fragment in ["z ≠ 0", "s ≠ 0", "s = z + 1 / 2"]:
            if fragment not in contracts[name]["type"]:
                raise RuntimeError(name + " lost its exact domain: " + fragment)
    for fragment in ["pickupDirichletPrefix", "pickupWeightedPrefix", "pickupMertensPrefix", "⌊Real.exp T⌋₊"]:
        if fragment not in contracts["wholePickup_cutoff_laplace"]["type"]:
            raise RuntimeError("cutoff identity lost its signed closed inventory: " + fragment)
    for name in CONTROLS:
        run("GRWTSK/NumberTheory/Moebius/FiniteLaplaceTransform/Checks/Negative/" + name + ".lean", expected_success=False,
            expected_error=CONTROL_ERRORS[name])
    stable_inputs()
    receipt = {"schema_version": 1, "status": "SCOPED_SOURCE_CHECKS_PASSED",
               "rh_proved": False, "P04_witness": None, "boundary_estimate": None,
               "cutoff_identity": "KERNEL_CHECKED_WITH_BOTH_SIGNED_ENDPOINTS_AND_NONZERO_DENOMINATORS",
               "endpoint_omission_counterexamples": "KERNEL_CHECKED_AT_ZERO_WINDOW_AND_Z_ONE",
               "raw_product_counterexample": "KERNEL_CHECKED_AT_CUTOFF_THREE_FOR_EVERY_COMPLEX_S",
               "exact_contracts": contracts,
               "arithmetic_frontier": {"P04": "OPEN", "recording_scale": "OPEN",
                                       "independent_signed_boundary_estimate": "OPEN"},
               "source_sha256": HASHES,
               "excluded_scratch": "Exploratory floating-point calculations are not proof inputs",
               "lean_version": VERSION, "dependency_revisions": PINS,
               "dependency_scope": "Pinned public dependency objects; complete selected project closure freshly elaborated and exported at trust zero",
               "declaration_count": len(declarations), "declarations": declarations,
               "checks": RESULTS,
               "acceptance": "Checked exact cutoff transform, signed endpoint counterexamples and arithmetic product debt; no independent human review or arithmetic upper estimate"}
    with (RUN / "receipt.json").open("x", encoding="utf-8") as output:
        output.write(json.dumps(receipt, indent=2) + "\n")
    print("CCC_PICKUP_CUTOFF_SOURCE_AND_ENDPOINT_CONTROLS_PASSED", flush=True)
except Exception as error:
    (RUN / "failure.json").write_text(json.dumps({"status": "FAILED", "error": str(error), "checks": RESULTS}, indent=2) + "\n")
    raise
