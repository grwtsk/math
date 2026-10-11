"""Fresh finite-window Laplace replay, literal tail contracts, and false-shortcut controls."""
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
RUN = Path(tempfile.mkdtemp(prefix="prime-window-", dir=ROOT / ".local"))
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


visit("GRWTSK.NumberTheory.Moebius.PrimeFilterLaplace")
CONTROL_ERRORS = {
    "MissingTail": "Type mismatch",
    "WrongWindow": "Type mismatch",
    "FalseMultiplier": "Type mismatch",
}
CONTROLS = list(CONTROL_ERRORS)
INPUTS = ORDER + ["checks/NumberTheory/Moebius/PrimeFilterLaplace.lean", "scripts/check_prime_window_laplace.py",
                  "lean-toolchain", "lakefile.toml", "lake-manifest.json", "docs/ccc-prime-window-laplace.md"]
INPUTS += ["checks/NumberTheory/Moebius/PrimeFilterLaplace/Controls/" + name + ".lean" for name in CONTROLS]
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
    output = run("checks/NumberTheory/Moebius/PrimeFilterLaplace.lean")
    declarations = [json.loads(s) for s in re.findall(r"PRIME_WINDOW_DECL::(\{[^\n]+\})", output)]
    counts = re.findall(r"PRIME_WINDOW_COUNT::(\d+)", output)
    if len(counts) != 1 or len(declarations) != int(counts[0]) or not declarations:
        raise RuntimeError("incomplete native declaration audit")
    if len({d["name"] for d in declarations}) != len(declarations):
        raise RuntimeError("duplicate declaration records")
    required = ["noteWindowLaplace_causalShift", "noteWindowLaplace_primeFilter",
                "noteWindowLaplace_cascade_insert", "noteWindowLaplace_actual_cascade",
                "noteWindowLaplace_primeFilter_before_delay", "first_prime_window_not_multiplier",
                "primeLaplaceWeight_eq_exp"]
    contracts = {}
    for name in required:
        declaration = next((d for d in declarations if d["name"].endswith("."+name)), None)
        if declaration is None:
            raise RuntimeError("missing exact theorem: "+name)
        contracts[name] = declaration
    if "noteLaplaceTail" not in contracts["noteWindowLaplace_primeFilter"]["type"]:
        raise RuntimeError("prime filter lost its full signed tail")
    if "T - a" not in contracts["noteWindowLaplace_causalShift"]["type"]:
        raise RuntimeError("causal shift lost its shorter recording")
    for name in CONTROLS:
        run("checks/NumberTheory/Moebius/PrimeFilterLaplace/Controls/" + name + ".lean", expected_success=False,
            expected_error=CONTROL_ERRORS[name])
    stable_inputs()
    receipt = {"schema_version": 1, "status": "SCOPED_SOURCE_CHECKS_PASSED",
               "rh_proved": False, "P04_witness": None, "boundary_estimate": None,
               "finite_window_identity": "KERNEL_CHECKED_WITH_FULL_SIGNED_TAIL",
               "multiplier_only_counterexample": "KERNEL_CHECKED_AT_PRIME_TWO_AND_POSITIVE_REAL_LAPLACE_PARAMETER_ONE",
               "exact_contracts": contracts,
               "arithmetic_frontier": {"P04": "OPEN", "recording_scale": "OPEN",
                                       "independent_signed_boundary_estimate": "OPEN"},
               "source_sha256": HASHES,
               "excluded_scratch": "Exploratory floating-point calculations are not proof inputs",
               "lean_version": VERSION, "dependency_revisions": PINS,
               "dependency_scope": "Pinned public dependency objects; complete selected project closure freshly elaborated and exported at trust zero",
               "declaration_count": len(declarations), "declarations": declarations,
               "checks": RESULTS,
               "acceptance": "Checked exact compact-window identities and an actual source counterexample; no independent human review or arithmetic upper estimate"}
    (ROOT / "evidence/prime-window-laplace-checks.json").write_text(json.dumps(receipt, indent=2) + "\n")
    (RUN / "receipt.json").write_text(json.dumps(receipt, indent=2) + "\n")
    print("CCC_PRIME_WINDOW_SOURCE_AND_SHORTCUT_CONTROLS_PASSED", flush=True)
except Exception as error:
    (RUN / "failure.json").write_text(json.dumps({"status": "FAILED", "error": str(error), "checks": RESULTS}, indent=2) + "\n")
    raise
