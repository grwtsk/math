"""Fresh pinned replay of Sturmian counts, the free IDS, cuts and repeated blocks."""
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
RUN = Path(tempfile.mkdtemp(prefix="ten-martini-", dir=ROOT / ".local"))
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
        match = re.match(r"^\s*import\s+(.+)$", line)
        if match:
            for dependency in match[1].split("--", 1)[0].split():
                if dependency.startswith("GRWTSK."):
                    visit(dependency)
    ACTIVE.remove(module)
    SEEN.add(module)
    ORDER.append(path)


visit("GRWTSK.Spectral.GapTransport")
visit("GRWTSK.LinearAlgebra.Sturmian")
visit("GRWTSK.Spectral.SturmianFiniteVolume")
visit("GRWTSK.Spectral.FreeIDS")
visit("GRWTSK.Spectral.DirichletCut")
visit("GRWTSK.Spectral.SturmianBlockCounts")
CONTROLS = {
    "MissingInjectivity": "Type mismatch",
    "MissingIDS2": "Type mismatch",
    "ZeroTraceAllEnergies": "unsolved goals",
    "WrongOffset": "Type mismatch",
    "DroppedIDSLimit": "Type mismatch",
    "DirichletCorner": "unsolved goals",
    "ExteriorLabelInverse": "unsolved goals",
    "WrongEigenvalueDenominator": "unsolved goals",
    "ZeroVolumeError": "unsolved goals",
    "MissingDefectEquality": "Type mismatch",
    "ExactCutAdditivity": "unsolved goals",
    "OneEndpointDefect": "unsolved goals",
    "WrongSecondOrigin": "unsolved goals",
    "DroppedRemainderCost": "unsolved goals",
    "DroppedBlockBoundaryCost": "unsolved goals",
    "MissingBlockLength": "Type mismatch",
    "WrongSamplingStep": "Type mismatch",
}
INPUTS = ORDER + ["checks/Spectral/FiniteVolume/Declarations.lean", "scripts/check_ten_martini.py",
                  "lean-toolchain", "lakefile.toml", "lake-manifest.json",
                  "docs/ten-martini-zero.md"]
INPUTS += ["checks/Spectral/FiniteVolume/Controls/" + name + ".lean" for name in CONTROLS]
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
output = run("checks/Spectral/FiniteVolume/Declarations.lean")
DECLS = [json.loads(s) for s in re.findall(r"TEN_MARTINI_DECL::(\{[^\n]+\})", output)]
COUNTS = re.findall(r"TEN_MARTINI_COUNT::(\d+)", output)
if len(COUNTS) != 1 or len(DECLS) != int(COUNTS[0]) or not DECLS:
    raise RuntimeError("incomplete native declaration audit")
if len({d["name"] for d in DECLS}) != len(DECLS):
    raise RuntimeError("duplicate declaration records")
for name, error in CONTROLS.items():
    run("checks/Spectral/FiniteVolume/Controls/" + name + ".lean", False, expected_error=error)
stable_inputs()
RECEIPT = {"schema_version": 1, "status": "FRESH_SOURCE_AND_NATIVE_CONTRACT_CHECKS_PASSED",
           "lean": VERSION, "package_revisions": PINS, "source_sha256": HASHES,
           "fresh_project_modules": ORDER, "declarations": DECLS, "checks": RESULTS,
           "pinned_dependency_objects_used": True, "run_directory": str(RUN),
           "scope": "conditional gap transport, literal Sturmian transfer, actual finite Dirichlet matrices and count comparisons, complete free sine diagonalization and actual free IDS count limit with inverse cuts, finite defect/rank count bound and actual rank-two adjacent-volume cut count error, accumulated repeated-block and remainder bounds, exact integer-origin to phase and L*alpha block sampling adapters; target Sturmian IDS and actual gaps remain premises",
           "finite_sturmian_hamiltonian_constructed": True,
           "finite_volume_eigenvalue_comparison_proved": True,
           "ids_limit_passage_proved_conditionally": True,
           "ids_limit_existence_proved": False,
           "free_ids_formula_proved": True,
           "free_ids_count_limit_proved": True,
           "free_ids_inverse_cuts_proved": True,
           "sturmian_ids_limit_existence_proved": False,
           "finite_defect_count_bound_proved": True,
           "actual_joining_edge_rank_two_bound_proved": True,
           "actual_adjacent_volume_count_error_proved": True,
           "actual_repeated_block_count_error_proved": True,
           "actual_remainder_volume_count_bound_proved": True,
           "exact_origin_to_phase_adapter_proved": True,
           "actual_block_phase_sampling_adapter_proved": True,
           "half_open_word_frequencies_proved": False,
           "actual_sturmian_tree_constructed": False, "actual_sturmian_dry_theorem_formalized": False,
           "operator_spectrum_constructed": False, "rh_proved": False,
           "independent_acceptance": "PENDING"}
(ROOT / "evidence/ten-martini-checks.json").write_text(json.dumps(RECEIPT, indent=2) + "\n")
print("TEN_MARTINI_CHECKS_PASSED", flush=True)
