"""Bounded native audit and independently frozen determinant controls.

Run after project outputs are built in the pinned environment. This checks the
selected interface; it does not grant transactional admission or certify the
provenance of cached dependency objects. --interface-only is an explicit bounded
reconstruction contract for the published slice, without the repository-wide
layout gate. Admission separately requires the full current layout gate.
"""
from pathlib import Path
import argparse
import datetime as dt
import fcntl
import hashlib
import json
import os
import re
import resource
import signal
import stat
import subprocess
import time
import uuid

ROOT = Path(__file__).resolve().parents[1]
CONTROL_ROOT = "GRWTSK/LinearAlgebra/Determinant/OrderedProduct/Checks/"
# Independently retained fixture bytes, before runner implementation.
CONTROLS = {
    "ExactRingAndWeighted": "c28589d246b9b7bbf4538eb8b0fa6c0ff921445d5d70f4a8fe940e1d515f1be7",
    "MissingFactorDeterminant": "037227c29572b504d32eecfcf6177f136825e3acddf911d61763fcf066e348b7",
    "MissingNonzeroCoefficient": "aeb6b35823c26582e0929ff097feeb1fa09f92b9ce9b30ea5a0701e25fb2da67",
}
LAYOUT_INPUTS = ["AGENTS.md", "docs/math-layout.json", "scripts/check_math_layout.py"]
INTERFACE_INPUTS = [
    "scripts/check_ordered_product_determinant.py", "lean-toolchain",
    "lakefile.toml", "lake-manifest.json", "GRWTSK/LinearAlgebra/Determinant/OrderedProduct/Checks/Audit.lean",
    "GRWTSK/Algebra/OrderedProduct.lean",
    "GRWTSK/LinearAlgebra/SchrodingerTransfer.lean",
    "GRWTSK/LinearAlgebra/JacobiTransfer.lean",
    "GRWTSK/LinearAlgebra/OrderedTransfer.lean",
    "GRWTSK/LinearAlgebra/OrderedProductDeterminant.lean",
] + [CONTROL_ROOT + ("Positive/" if name == "ExactRingAndWeighted" else "Negative/") +
     name + ".lean" for name in CONTROLS]
INPUTS = LAYOUT_INPUTS + INTERFACE_INPUTS
SECONDS = 1800  # Per procedure, not a four-procedure aggregate reservation.
RSS_BYTES = 12 * 1024**3
DISK_BYTES = 4 * 1024**3
LOG_BYTES = 8 * 1024**2  # Bounded diagnostic reading; preserve larger logs on failure.


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def freeze(full_layout=True):
    inputs = {name: digest(ROOT / name) for name in (INPUTS if full_layout else INTERFACE_INPUTS)}
    for name, expected in CONTROLS.items():
        relative = CONTROL_ROOT + ("Positive/" if name == "ExactRingAndWeighted" else "Negative/") + name + ".lean"
        if inputs[relative] != expected:
            raise RuntimeError("STALE_FIXTURE: " + name)
    if (ROOT / "lean-toolchain").read_text().strip() != "leanprover/lean4:v4.33.0":
        raise RuntimeError("UNSUPPORTED_TOOLCHAIN")
    return inputs


def qualified(label, returncode, output):
    """Check native diagnostics; an arbitrary process failure is not hostile success."""
    if label == "audit":
        return returncode == 0 and all(output.count(marker) == count for marker, count in {
            "ORDERED_DETERMINANT_CONTRACT::": 2,
            "ORDERED_DETERMINANT_SYNTHETIC::": 2,
            "ORDERED_DETERMINANT_ORIGINAL::": 1,
        }.items())
    if label == "ExactRingAndWeighted":
        return returncode == 0 and "error:" not in output
    diagnostic = CONTROL_ROOT + "Negative/" + label + ".lean:4:"
    matching_source = any(
        (line.startswith(diagnostic) or line.startswith(str(ROOT) + "/" + diagnostic))
        and re.search(r":\d+: error: unsolved goals$", line)
        for line in output.splitlines())
    return (label in CONTROLS and returncode == 1 and matching_source
            and output.count("error:") == 1
            and "error: unsolved goals" in output and "⊢ False" in output
            and "warning:" not in output)


def elapsed_cpu(value):
    total = 0.0
    for field in value.split(":"):
        total = total * 60 + float(field)
    return total


def run_native(label, source, run):
    argv = ["lake", "env", "lean", "--threads=1", "--memory=12288",
            "--trust=0", "-DwarningAsError=true", source]
    log = run / (label + ".log")
    started = time.monotonic()
    usage = resource.getrusage(resource.RUSAGE_CHILDREN)
    peak = 0
    reason = None
    env = dict(os.environ, LEAN_NUM_THREADS="1", HTTP_PROXY="http://127.0.0.1:9",
               HTTPS_PROXY="http://127.0.0.1:9", ALL_PROXY="http://127.0.0.1:9", NO_PROXY="")
    with log.open("xb") as stream:
        proc = subprocess.Popen(argv, cwd=ROOT, env=env, stdout=stream,
                                stderr=subprocess.STDOUT, start_new_session=True)
        try:
            while proc.poll() is None:
                rows = subprocess.check_output(["ps", "-axo", "pgid=,rss=,time="], text=True)
                group = [row.split() for row in rows.splitlines()
                         if row.split() and row.split()[0] == str(proc.pid)]
                rss = sum(int(row[1]) * 1024 for row in group)
                cpu = sum(elapsed_cpu(row[2]) for row in group)
                peak = max(peak, rss)
                disk = sum(path.stat().st_size for path in run.iterdir() if path.is_file())
                if time.monotonic() - started >= SECONDS or cpu >= SECONDS:
                    reason = "TIMED_OUT"
                elif rss > RSS_BYTES or disk > DISK_BYTES:
                    reason = "RESOURCE_BOUNDED"
                if reason:
                    try:
                        os.killpg(proc.pid, signal.SIGKILL)
                    except ProcessLookupError:
                        pass
                    break
                time.sleep(0.25)
        finally:
            if proc.poll() is None:
                try:
                    os.killpg(proc.pid, signal.SIGKILL)
                except ProcessLookupError:
                    pass
            proc.wait()
    after = resource.getrusage(resource.RUSAGE_CHILDREN)
    disk = sum(path.stat().st_size for path in run.iterdir() if path.is_file())
    if time.monotonic() - started >= SECONDS:
        reason = "TIMED_OUT"
    elif disk > DISK_BYTES or log.stat().st_size > LOG_BYTES:
        reason = "RESOURCE_BOUNDED"
    text = log.read_text(errors="replace") if log.stat().st_size <= LOG_BYTES else ""
    passed = reason is None and qualified(label, proc.returncode, text)
    return {"label": label, "source": source, "argv": argv,
            "exit_code": proc.returncode, "status": "PASS" if passed else reason or "FAILED_EXPECTATION",
            "wall_seconds": time.monotonic() - started,
            "sampled_process_group_peak_rss_bytes": peak, "rss_sample_interval_seconds": 0.25,
            "waited_children_cpu_seconds_including_resource_sampler":
                after.ru_utime + after.ru_stime - usage.ru_utime - usage.ru_stime,
            "log": log.name, "log_bytes": log.stat().st_size,
            "log_sha256": digest(log) if log.stat().st_size <= LOG_BYTES else None,
            "log_sha256_state": "KNOWN" if log.stat().st_size <= LOG_BYTES else "UNAVAILABLE_RESOURCE_BOUNDED",
            "mathematical_refutation": False}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--preflight-only", action="store_true", help="check exact fixture bytes and shared lane; no Lean")
    parser.add_argument("--interface-only", action="store_true",
                        help="check only the named public interface/fixtures; no global layout or admission")
    args = parser.parse_args()
    if subprocess.run(["git", "check-ignore", "-q", "--", ".local/"], cwd=ROOT).returncode:
        raise RuntimeError("Private output must be ignored")
    full_layout = not args.interface_only
    inputs = freeze(full_layout)
    base = ROOT / ".local/math-trust"
    base.mkdir(exist_ok=True)
    fd = os.open(base / "replay.lock", os.O_RDWR | os.O_CREAT | os.O_NOFOLLOW, 0o600)
    with os.fdopen(fd, "a+") as lock:
        if not stat.S_ISREG(os.fstat(lock.fileno()).st_mode):
            raise RuntimeError("Unsafe replay lock")
        try:
            fcntl.flock(lock, fcntl.LOCK_EX | fcntl.LOCK_NB)
        except BlockingIOError:
            print(json.dumps({"status": "BUSY", "compiler_jobs": 0,
                              "reason": "Coordinated math replay owns the shared lane"}))
            return 2
        if args.preflight_only:
            print(json.dumps({"status": "FIXTURES_CURRENT_LANE_FREE", "compiler_jobs": 0,
                              "inputs": inputs, "native_checks": "NOT_RUN",
                              "global_layout": "REQUIRED_BEFORE_EXECUTION" if full_layout else "NOT_RUN_BOUNDED_INTERFACE"}))
            return 0
        if full_layout:
            layout = subprocess.run(["python3", "-B", "scripts/check_math_layout.py"],
                                    cwd=ROOT, capture_output=True, text=True, timeout=60)
            if layout.returncode:
                raise RuntimeError("Layout gate failed")
        if freeze(full_layout) != inputs:
            raise RuntimeError("Inputs changed")
        run = ROOT / ".local/ordered-product-determinant" / (dt.datetime.now(dt.timezone.utc).strftime("%Y%m%dT%H%M%SZ") + "-" + uuid.uuid4().hex[:10])
        run.mkdir(parents=True)
        report = {"profile": "ORDERED-PRODUCT-DETERMINANT-NATIVE-CONTROLS/v1",
                  "status": "RUNNING", "inputs": inputs, "results": [],
                  "source_theorems": 2, "definitions": 0, "stored_equation_helpers": 0,
                  "actual_original_intrafamily_consumer_roles": 1, "synthetic_wrappers": 2,
                  "transactional_M7": "NOT_CLAIMED", "rh_proved": False,
                  "scope": "SELECTED_PUBLIC_INTERFACE" if args.interface_only else "SELECTED_INTERFACE_WITH_GLOBAL_LAYOUT_GATE",
                  "global_layout": "NOT_RUN_BOUNDED_INTERFACE" if args.interface_only else "PASSED_CURRENT_CHECK",
                  "resource_envelope": {"seconds_per_procedure": SECONDS, "process_group_rss_bytes": RSS_BYTES,
                                        "new_disk_bytes": DISK_BYTES, "compiler_threads": 1},
                  "dependency_source_replay": "NOT_RUN; pinned existing dependency objects",
                  "independent_human_review": "NOT_RUN"}
        receipt = run / "receipt.json"
        report["restart_cursor"] = "audit"
        receipt.write_text(json.dumps(report, indent=2) + "\n")
        try:
            for label, source in [("audit", "GRWTSK/LinearAlgebra/Determinant/OrderedProduct/Checks/Audit.lean")] + [
                    (name, CONTROL_ROOT + ("Positive/" if name == "ExactRingAndWeighted" else "Negative/") +
                     name + ".lean") for name in CONTROLS]:
                report["restart_cursor"] = label
                receipt.write_text(json.dumps(report, indent=2) + "\n")
                if freeze(full_layout) != inputs:
                    report["status"] = "STALE_INPUT"
                    break
                report["results"].append(run_native(label, source, run))
                report["status"] = "RUNNING" if report["results"][-1]["status"] == "PASS" else "FAILED"
                receipt.write_text(json.dumps(report, indent=2) + "\n")
                if report["status"] == "FAILED":
                    break
            if report["status"] == "RUNNING":
                report["status"] = "NATIVE_KERNEL_AND_HOSTILE_CONTROLS_PASSED" if freeze(full_layout) == inputs else "STALE_INPUT"
        except Exception as error:
            report["status"] = "PROCEDURE_STOPPED"
            report["failure"] = {"type": type(error).__name__, "reason": str(error),
                                 "label": report["restart_cursor"], "mathematical_refutation": False}
        report["not_run"] = [label for label in ["audit", *CONTROLS]
                             if label not in {row["label"] for row in report["results"]}]
        if report["status"] == "NATIVE_KERNEL_AND_HOSTILE_CONTROLS_PASSED":
            report["restart_cursor"] = None
        receipt.write_text(json.dumps(report, indent=2) + "\n")
        print(json.dumps({"status": report["status"], "receipt": str(receipt)}))
        return 0 if report["status"] == "NATIVE_KERNEL_AND_HOSTILE_CONTROLS_PASSED" else 1


if __name__ == "__main__":
    raise SystemExit(main())
