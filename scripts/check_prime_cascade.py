"""Fresh pinned source replay, exact contracts, and missing-premise controls."""
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
RUN = Path(tempfile.mkdtemp(prefix="prime-cascade-", dir=ROOT / ".local"))
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


visit("GRWTSK.NumberTheory.Moebius.PrimeFilterGrowth")
CONTROL_ERRORS = {
    "MissingBlockBound": "Type mismatch",
    "MissingPrimeBound": "Type mismatch",
    "CompositePrimitive": "unsolved goals",
}
CONTROLS = list(CONTROL_ERRORS)
INPUTS = ORDER + ["checks/NumberTheory/Moebius/PrimeFilterGrowth.lean", "scripts/check_prime_cascade.py",
                  "lean-toolchain", "lakefile.toml", "lake-manifest.json", "docs/mathematics/NumberTheory/Moebius/PrimeFilters/cascade.md"]
INPUTS += ["checks/NumberTheory/Moebius/PrimeFilterGrowth/Controls/" + name + ".lean" for name in CONTROLS]
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
    output = run("checks/NumberTheory/Moebius/PrimeFilterGrowth.lean")
    declarations = [json.loads(s) for s in re.findall(r"CASCADE_DECL::(\{[^\n]+\})", output)]
    counts = re.findall(r"CASCADE_COUNT::(\d+)", output)
    if len(counts) != 1 or len(declarations) != int(counts[0]) or not declarations:
        raise RuntimeError("incomplete native declaration audit")
    if len({d["name"] for d in declarations}) != len(declarations):
        raise RuntimeError("duplicate declaration records")
    terminals = {}
    for name, premise, target in [
        ("p04_of_block_reverberation", "PrimeBlockReverberation C q", "PickupCrossPoly"),
        ("p04_of_prime_reverberation", "PrimeReverberation A B q", "PickupCrossPoly"),
        ("riemannHypothesis_of_block_reverberation", "PrimeBlockReverberation C q", "RiemannHypothesis"),
    ]:
        declaration = next(d for d in declarations if d["name"].endswith("." + name))
        if premise not in declaration["type"] or not declaration["type"].strip().endswith(target):
            raise RuntimeError(name + " lost its arithmetic premise or target")
        terminals[name] = declaration
    required = ["pickup_eq_prime_note_cascade", "energy_after_prime_insertion",
                "harmonicPrimeMass_log_bound", "primeNoteCascade_insert",
                "noteCorrelation_zero_before"]
    for name in required:
        if not any(d["name"].endswith("." + name) for d in declarations):
            raise RuntimeError("missing exact theorem: " + name)
    for name in CONTROLS:
        run("checks/NumberTheory/Moebius/PrimeFilterGrowth/Controls/" + name + ".lean", expected_success=False,
            expected_error=CONTROL_ERRORS[name])
    stable_inputs()
    receipt = {"schema_version": 1, "status": "SCOPED_SOURCE_CHECKS_PASSED",
               "rh_proved": False, "P04_witness": None, "source_reverberation_witness": None,
               "terminal_theorems": terminals,
               "arithmetic_frontier": {"P04": "OPEN",
                                      "prime_reverberation": "ANALYTICALLY_OBSTRUCTED_NOT_LEAN_FORMALIZED",
                                      "block_reverberation": "ANALYTICALLY_OBSTRUCTED_NOT_LEAN_FORMALIZED",
                                      "recording_scale": "OPEN", "Kakeya_adapter": "OPEN"},
               "source_sha256": HASHES,
               "lean_version": VERSION, "dependency_revisions": PINS,
               "dependency_scope": "Pinned public dependency objects; complete selected project closure freshly elaborated and exported at trust zero",
               "declaration_count": len(declarations), "declarations": declarations,
               "checks": RESULTS,
               "acceptance": "Checked exact and conditional mathematical source; no independent human review or open arithmetic supplier"}
    (ROOT / "evidence/prime-cascade-checks.json").write_text(json.dumps(receipt, indent=2) + "\n")
    (RUN / "receipt.json").write_text(json.dumps(receipt, indent=2) + "\n")
    print("CCC_PRIME_CASCADE_SOURCE_AND_PREMISE_CONTROLS_PASSED", flush=True)
except Exception as error:
    (RUN / "failure.json").write_text(json.dumps({"status": "FAILED", "error": str(error), "checks": RESULTS}, indent=2) + "\n")
    raise
