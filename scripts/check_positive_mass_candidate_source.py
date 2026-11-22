#!/usr/bin/env python3
"""Verify byte preservation of the submitted positive-mass Lean source slices.

This verifies source integrity only. It does not parse or compile Lean, run the
kernel, audit axioms, or check the validity of a mathematical theorem.
"""

from __future__ import annotations

import hashlib
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
MANIFEST = ROOT / "GRWTSK/DifferentialGeometry/PositiveMassCandidate/SourceManifest.json"


def git_blob_sha(raw: bytes) -> str:
    return hashlib.sha1(b"blob " + str(len(raw)).encode() + b"\0" + raw).hexdigest()


def main() -> None:
    manifest = json.loads(MANIFEST.read_text(encoding="utf-8"))
    modules = manifest["modules"]
    assert len(modules) == 15, "unexpected module count"
    recovered: list[bytes] = []
    next_line = 1
    prior_name: str | None = None
    for index, module in enumerate(modules, 1):
        assert module["index"] == index
        start, end = module["start_line"], module["end_line"]
        assert start == next_line and end >= start
        next_line = end + 1
        file_bytes = (ROOT / module["path"]).read_bytes()
        assert git_blob_sha(file_bytes) == module["git_blob_sha1"], module["path"]
        begin_mark = f"-- SOURCE_START: lines {start}..{end} from answer (1).lean\n".encode()
        end_mark = f"\n-- SOURCE_END: lines {start}..{end} from answer (1).lean".encode()
        assert file_bytes.count(begin_mark) == 1, module["path"]
        assert file_bytes.count(end_mark) == 1, module["path"]
        prefix, tail = file_bytes.split(begin_mark, 1)
        body, _suffix = tail.split(end_mark, 1)
        assert len(body.split(b"\n")) == end - start + 1, module["path"]
        if prior_name is not None:
            imported = (
                "import GRWTSK.DifferentialGeometry.PositiveMassCandidate."
                + prior_name
            ).encode()
            assert imported in prefix, module["path"]
        prior_name = module["name"]
        recovered.append(body + b"\n")
    original = b"".join(recovered)
    assert next_line - 1 == manifest["source_lines"]
    assert len(original) == manifest["source_bytes"]
    assert hashlib.sha256(original).hexdigest() == manifest["source_sha256"]
    assert git_blob_sha(original) == manifest["source_git_blob_sha1"]
    print(f"PASS: {len(modules)} ordered Lean modules recover "
          f"{manifest['source_lines']} original lines and {len(original)} bytes")
    print(f"SHA256: {manifest['source_sha256']}")
    print("Lean elaboration, kernel replay, and mathematical acceptance: NOT_RUN")


if __name__ == "__main__":
    main()
