#!/usr/bin/env python3
"""Bounded replay for the published GRL-TWMK finite package.

Runs the exact/hostile tests and producer under ordinary and optimized Python,
requires byte-identical outputs, and records stdout/stderr. It does not run Lean,
construct K-theory, or modify Git.
"""
from __future__ import annotations
import argparse
import hashlib
import json
from pathlib import Path
import subprocess
import sys
from typing import Any

REQUIRED = {
    "scripts/triadic_waveform_exact.py": "f818de4909ba470912447633c662631c7eaf778e8a44839f2e2ab8ebf159d59d",
    "tests/test_triadic_waveform_exact.py": "81f85fc789c1ecd1f1298c62d44c2c2f29d61ac76515a5e4907060fc5dd2ba10",
}


def sha256(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(1 << 20), b""):
            h.update(chunk)
    return h.hexdigest()


def run(cmd: list[str], cwd: Path) -> dict[str, Any]:
    cp = subprocess.run(cmd, cwd=cwd, text=True, capture_output=True, check=False)
    return {"command": cmd, "returncode": cp.returncode, "stdout": cp.stdout, "stderr": cp.stderr}


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--output-dir", type=Path, required=True)
    args = parser.parse_args()
    if args.output_dir.exists():
        raise FileExistsError(args.output_dir)
    args.output_dir.mkdir(parents=True)
    root = Path(__file__).resolve().parents[1]
    for rel, digest in REQUIRED.items():
        path = root / rel
        if not path.is_file() or sha256(path) != digest:
            raise ValueError(f"source identity mismatch: {rel}")

    records: list[dict[str, Any]] = []
    outputs: list[Path] = []
    for optimized in (False, True):
        mode = "optimized" if optimized else "normal"
        prefix = [sys.executable] + (["-O"] if optimized else [])
        tests = run(prefix + ["-B", "-m", "unittest", "discover", "-s", "tests",
                              "-p", "test_triadic_waveform_exact.py", "-v"], root)
        records.append({"kind": "tests", "mode": mode, **tests})
        if tests["returncode"] != 0:
            raise RuntimeError(f"{mode} tests failed")
        out = args.output_dir / f"exact-checks-{mode}.json"
        producer = run(prefix + ["-B", "scripts/triadic_waveform_exact.py", "--output", str(out)], root)
        records.append({"kind": "producer", "mode": mode, **producer})
        if producer["returncode"] != 0:
            raise RuntimeError(f"{mode} producer failed")
        outputs.append(out)
    if outputs[0].read_bytes() != outputs[1].read_bytes():
        raise ValueError("normal and optimized outputs differ")
    payload = json.loads(outputs[0].read_text())
    if payload.get("status") != "passed" or payload.get("check_count") != 354:
        raise ValueError("unexpected exact-check contract")
    report = {
        "schema": "grl-twmk-published-replay-v1",
        "status": "passed",
        "source_hashes": REQUIRED,
        "check_count": payload["check_count"],
        "producer_outputs_identical": True,
        "records": records,
        "native_Lean": "NOT_RUN",
        "RH": False,
    }
    (args.output_dir / "replay.json").write_text(json.dumps(report, indent=2, sort_keys=True) + "\n")
    print(json.dumps({"status": "passed", "check_count": payload["check_count"]}, sort_keys=True))


if __name__ == "__main__":
    main()
