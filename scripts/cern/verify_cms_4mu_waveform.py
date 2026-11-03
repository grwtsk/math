#!/usr/bin/env python3
"""Verify a pinned CMS CERN Open Data snapshot and its UniversalInput feed.

The original 41-column CSV remains immutable. Event row order is an index,
NOT a physical-time coordinate. Invariant mass M is a derived scalar channel;
all original source rows remain available. Requires Python standard library.
"""
from __future__ import annotations

import argparse
import csv
from decimal import Decimal, InvalidOperation
import hashlib
import io
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
ORIGINAL = ROOT / "data" / "cern" / "CMS_4mu_2012.csv"
FEED = ROOT / "data" / "cern" / "CMS_4mu_2012_waveform.json"
SOURCE_BLOB = "4d87fe4e859802bb225d722353c10148b96e7a95"
SOURCE_URL = ("https://github.com/cms-opendata-education/"
              "cms-jupyter-materials-english/blob/"
              "fd23734a71b863d944d44f7dbe9c0d0261c5302b/Data/4mu_2012.csv")
CERN_RECORD = "https://opendata.cern.ch/record/5200"
CERN_DOI = "10.7483/OPENDATA.CMS.YGG7.333M"

def blob_sha256_agnostic_gitsha1(data: bytes) -> str:
    """Git blob identity; SHA-1 here is the repository format, not a security claim."""
    return hashlib.sha1(b"blob " + str(len(data)).encode() + b"\x00" + data).hexdigest()

def exact_mantissa_and_scale(value: str) -> tuple[str, int]:
    sign = ""
    if value.startswith("-"):
        sign, value = "-", value[1:]
    whole, dot, frac = value.partition(".")
    if not whole.isdigit() or (dot and (not frac or not frac.isdigit())):
        raise ValueError("Unexpected invariant-mass decimal lexeme")
    return sign + whole + frac, len(frac) if dot else 0

def verify(original: Path = ORIGINAL, waveform: Path = FEED) -> dict:
    source_bytes = original.read_bytes()
    actual_git_blob = blob_sha256_agnostic_gitsha1(source_bytes)
    if actual_git_blob != SOURCE_BLOB:
        raise ValueError(f"Source Git blob mismatch: {actual_git_blob} != {SOURCE_BLOB}")
    text = source_bytes.decode("utf-8", errors="strict")
    raw_lines = text.splitlines()
    parsed = list(csv.reader(io.StringIO(text, newline="")))
    if not parsed:
        raise ValueError("Empty CSV")
    header, rows = parsed[0], parsed[1:]
    if len(header) != 41 or len(rows) != 95 or header[:2] != ["Run", "Event"] or header[-1] != "M":
        raise ValueError("Pinned CMS four-muon source schema/row count changed")
    if len(raw_lines) != len(rows) + 1:
        raise ValueError("Pinned source must have one complete CSV event per physical row")
    if any(len(r) != len(header) for r in rows):
        raise ValueError("Partial row: some original source columns have been lost")
    source_keys = [(r[0], r[1]) for r in rows]
    if len(source_keys) != len(set(source_keys)):
        raise ValueError("Run/Event source identifiers are not distinct in pinned sample")
    manifest = json.loads(waveform.read_text(encoding="utf-8"))
    if manifest.get("source", {}).get("mirror_blob") != SOURCE_BLOB:
        raise ValueError("Companion waveform points to a different source blob")
    if manifest.get("columns") != header:
        raise ValueError("Companion waveform changes the original 41-column order")
    samples = manifest["samples"]
    if len(samples) != len(rows):
        raise ValueError("Incomplete feed")
    masses = []
    for i, (row, sample) in enumerate(zip(rows, samples)):
        mantissa, scale = exact_mantissa_and_scale(row[-1])
        if (sample["index"] != i
            or sample["source_csv_row"] != raw_lines[i + 1]
            or sample["run_lexeme"] != row[0]
            or sample["event_lexeme"] != row[1]
            or sample["mass_lexeme"] != row[-1]
            or sample["mass_mantissa"] != mantissa
            or sample["mass_scale"] != scale):
            raise ValueError(f"Changed/lost source field at original row {i}")
        d = Decimal(row[-1])
        if not d.is_finite():
            raise ValueError(f"Nonfinite mass at original source row {i}")
        if d != Decimal(int(mantissa)) / (10 ** scale):
            raise ValueError(f"Nonexact decimal projection at source row {i}")
        masses.append(d)
    return {
      "status": "PASS_SOURCE_SNAPSHOT_AND_95_RECORD_PROJECTION",
      "source_git_blob": actual_git_blob,
      "record": CERN_RECORD,
      "doi": CERN_DOI,
      "source_url": SOURCE_URL,
      "event_count": len(rows),
      "original_column_count": len(header),
      "run_event_unique": len(source_keys),
      "minimum_mass_geV": str(min(masses)),
      "maximum_mass_geV": str(max(masses)),
      "mean_mass_geV": str(sum(masses) / len(masses)),
      "all_original_raw_CSV_rows_retained": True,
      "index_semantics": "zero_based_file_ordinal_not_physical_time",
      "native_Lean_verification": "NOT_RUN",
    }

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--original", type=Path, default=ORIGINAL)
    parser.add_argument("--waveform", type=Path, default=FEED)
    args = parser.parse_args()
    print(json.dumps(verify(args.original, args.waveform), indent=2, sort_keys=True))
