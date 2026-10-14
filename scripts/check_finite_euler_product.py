#!/usr/bin/env python3
"""Replay the finite Euler product source and audit, with two statement controls.

Uses pinned dependency objects and excludes canonical project build objects.
This is a selected-source check, not a whole-repository or Mathlib rebuild.
"""
from pathlib import Path
import argparse
import datetime
import fcntl
import hashlib
import importlib.util
import json
import os
import re
import subprocess
import tempfile
import time
from pathlib import PurePosixPath

ROOT = Path(__file__).resolve().parents[1]
RELS = [
    "GRWTSK/NumberTheory/Moebius/FiniteEulerProduct.lean",
    "GRWTSK/NumberTheory/Moebius/Checks/Positive/FiniteEulerProduct.lean",
    "GRWTSK/NumberTheory/Moebius/FiniteEulerProduct/Checks/Negative/MissingDebt.lean",
    "GRWTSK/NumberTheory/Moebius/FiniteEulerProduct/Checks/Negative/OpenCutoff.lean",
]
ALLOWED = {"propext", "Classical.choice", "Quot.sound"}
PREFIX = "GRWTSK.NumberTheory.Moebius."
ROOTS = {PREFIX + n for n in ["prime_subset_weight", "born_prime_subset_sum",
         "finite_euler_product_cutoff", "finite_euler_product_cutoff_zero"]}


def require(condition, message):
    if not condition:
        raise RuntimeError(message)


def digest(body):
    return hashlib.sha256(body).hexdigest()


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--receipt",
        help=("fresh repository-relative durable receipt below "
              "evidence/NumberTheory/Moebius; omitted keeps the receipt in .local"),
    )
    args = parser.parse_args()
    lock_path = ROOT / ".local/math-trust/replay.lock"
    lock_path.parent.mkdir(parents=True, exist_ok=True)
    with lock_path.open("a+") as lock:
        try:
            fcntl.flock(lock, fcntl.LOCK_EX | fcntl.LOCK_NB)
        except BlockingIOError:
            print("DEFERRED: another replay holds the shared lock", flush=True)
            return 2
        spec = importlib.util.spec_from_file_location("guard", ROOT / "scripts/check_math_trust.py")
        guard = importlib.util.module_from_spec(spec)
        spec.loader.exec_module(guard)
        jobs = guard.competing_jobs(ROOT)
        if jobs:
            print(json.dumps({"status": "DEFERRED_NATIVE_BUSY", "jobs": jobs}), flush=True)
            return 2
        return replay(args)


def replay(args):
    destination = None
    if args.receipt is not None:
        relative = PurePosixPath(args.receipt)
        require(not relative.is_absolute() and "." not in relative.parts
                and ".." not in relative.parts, "unsafe receipt path")
        require(relative.parts[:3] == ("evidence", "NumberTheory", "Moebius")
                and relative.suffix == ".json", "durable receipt must be a JSON file below evidence/NumberTheory/Moebius")
        destination = ROOT / relative
        require(not destination.exists() and not destination.is_symlink(),
                "durable receipt path must be absent")
    require((ROOT / "lean-toolchain").read_text().strip() == "leanprover/lean4:v4.33.0", "toolchain mismatch")
    pins = {p["name"]: p["rev"] for p in json.loads((ROOT / "lake-manifest.json").read_text())["packages"]}
    require(pins["mathlib"] == "db584cd6d46c92f209a44c0f1c829460d327499d", "Mathlib pin mismatch")
    revision = subprocess.check_output(["git", "-C", str(ROOT / ".lake/packages/mathlib"), "rev-parse", "HEAD"], text=True).strip()
    require(revision == pins["mathlib"], "Mathlib checkout mismatch")
    lean = subprocess.check_output(["elan", "which", "lean"], cwd=ROOT, text=True).strip()
    version = subprocess.check_output([lean, "--version"], text=True).strip()
    require("4.33.0" in version and "d8b18978322de05a8f3dba51ef03cf5461676c17" in version, "Lean binary mismatch")
    base = ROOT / ".local/finite-euler-product-checks"
    base.mkdir(parents=True, exist_ok=True)
    run = Path(tempfile.mkdtemp(prefix="replay-", dir=base))
    source, build = run / "source", run / "build"
    source.mkdir()
    build.mkdir()
    hashes = {}
    for rel in RELS:
        body = (ROOT / rel).read_bytes()
        hashes[rel] = digest(body)
        destination = source / rel
        destination.parent.mkdir(parents=True, exist_ok=True)
        destination.write_bytes(body)
        destination.chmod(0o444)
    require(not re.search(r"^import GRWTSK\.", (source / RELS[0]).read_text(), re.M), "unexpected project dependency")
    cache = subprocess.check_output(["lake", "env", "printenv", "LEAN_PATH"], cwd=ROOT, text=True).strip()
    cache = os.pathsep.join(p for p in cache.split(os.pathsep)
             if Path(p).resolve() != (ROOT / ".lake/build/lib/lean").resolve())
    env = dict(os.environ, LEAN_PATH=str(build) + os.pathsep + cache)
    receipt = {
        "schema": "finite-euler-product-selected-replay-v1", "outcome": "running",
        "at": datetime.datetime.now(datetime.timezone.utc).isoformat(),
        "head_observed": subprocess.check_output(["git", "rev-parse", "HEAD"], cwd=ROOT, text=True).strip(),
        "source_hashes": hashes, "checker_sha256": digest(Path(__file__).read_bytes()),
        "guard_sha256": digest((ROOT / "scripts/check_math_trust.py").read_bytes()),
        "toolchain": "leanprover/lean4:v4.33.0", "lean_version": version, "pins": pins,
        "canonical_project_objects_excluded": True, "trust": 0, "fatal_warnings": True,
        "scope": "One immutable Mathlib-only project source; exact consumer contracts; complete owned module census, including generated helpers; two measured statement-reuse rejections. Pinned dependency objects reused.",
        "full_repository_build": False, "mathlib_source_rebuild": False,
        "independent_human_proof_review": False, "rh_proved": False,
        "selected_checks": {}, "results": [],
    }

    def save():
        (run / "receipt.json").write_text(json.dumps(receipt, indent=2) + "\n")

    save()
    print("RUN " + str(run), flush=True)
    try:
        for index, rel in enumerate(RELS):
            argv = [lean, "--trust=0", "--memory=4096", "--threads=1", "-DwarningAsError=true", "--root=" + str(source)]
            if index == 0:
                obj = build / Path(rel).with_suffix(".olean")
                obj.parent.mkdir(parents=True, exist_ok=True)
                argv += ["-o", str(obj)]
            argv.append(str(source / rel))
            started = time.monotonic()
            process = subprocess.run(argv, cwd=source, env=env, text=True, capture_output=True, timeout=600)
            output = process.stdout + process.stderr
            (run / (str(index) + ".log")).write_text(output)
            item = {"path": rel, "exit_code": process.returncode,
                    "seconds": time.monotonic() - started, "argv": argv,
                    "output_sha256": digest(output.encode())}
            receipt["results"].append(item)
            if index >= 2:
                require(process.returncode != 0 and output.count("error:") == 1
                        and "error: Type mismatch" in output
                        and "finite_euler_product_cutoff f hf N" in output
                        and "but is expected to have type" in output
                        and str(source / rel) in output, "control did not fail at the intended statement: " + rel)
                item["expected_failure"] = True
                print(rel + " INTENDED TYPE REJECTION", flush=True)
            else:
                require(process.returncode == 0, "replay failed: " + rel + "\n" + output)
                print(rel + " PASSED", flush=True)
            if index == 1:
                records = [json.loads(line.split("FINITE_EULER_DECL::", 1)[1]) for line in output.splitlines()
                           if "FINITE_EULER_DECL::" in line]
                counts = re.findall(r"FINITE_EULER_COUNT::(\d+)", output)
                require(len(counts) == 1 and int(counts[0]) == len(records) and bool(records), "census cardinality mismatch")
                require(len({d["name"] for d in records}) == len(records), "duplicate declaration")
                require(ROOTS <= {d["name"] for d in records}, "missing public theorem")
                require(all(d["module"] == PREFIX + "FiniteEulerProduct" and set(d["axioms"]) <= ALLOWED
                            and not d["unsafe"] and not d["partial"] for d in records), "invalid ownership or axiom census")
                receipt["declarations"] = records
            receipt["selected_checks"][rel] = "passed"
            save()
        require(all(digest((ROOT / rel).read_bytes()) == value for rel, value in hashes.items()), "concurrent source drift")
        require(digest(Path(__file__).read_bytes()) == receipt["checker_sha256"], "concurrent checker drift")
        receipt["outcome"] = "passed"
        save()
        if destination is not None:
            destination.parent.mkdir(parents=True, exist_ok=True)
            with destination.open("x") as output:
                output.write(json.dumps(receipt, indent=2) + "\n")
        print(json.dumps({"outcome": "passed", "owned_declarations": len(receipt["declarations"]),
                          "receipt": str(destination if destination is not None else run / "receipt.json"),
                          "run": str(run)}), flush=True)
        return 0
    except Exception as error:
        receipt["outcome"] = "failed"
        receipt["failure"] = str(error)
        save()
        raise


if __name__ == "__main__":
    raise SystemExit(main())
