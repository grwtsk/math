#!/usr/bin/env python3
"""Render the inspectable source catalog from the authoritative layout index."""

import argparse
from collections import Counter
import json
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
LAYOUT = ROOT / "docs/math-layout.json"
OUTPUT = ROOT / "docs/reference/math-source-catalog.json"


def catalog(layout):
    sources = layout["active_sources"]
    candidates = layout.get("candidate_sources", [])
    paths = [entry["path"] for entry in sources]
    if len(paths) != len(set(paths)):
        raise ValueError("duplicate active source path")
    required = {
        "path", "original_path", "sha256", "git_blob", "working_tree_state",
        "source_root", "module", "namespaces", "public_declarations", "imports",
        "reverse_consumers", "subject", "object", "source_role", "target_path",
        "placement_rationale", "operation", "logical_status", "open_premises",
        "verification", "runner", "other_consumers",
    }
    for entry in sources:
        missing = required - set(entry)
        if missing:
            raise ValueError(f"{entry.get('path', '<unknown>')}: missing {sorted(missing)}")
    candidate_paths = [entry.get("path") for entry in candidates if isinstance(entry, dict)]
    if len(candidate_paths) != len(candidates) or any(not isinstance(path, str)
                                                       for path in candidate_paths):
        raise ValueError("candidate source record lacks a path")
    if len(candidate_paths) != len(set(candidate_paths)):
        raise ValueError("duplicate candidate source path")
    overlap = sorted(set(paths) & set(candidate_paths))
    if overlap:
        raise ValueError("active/candidate source overlap: " + ", ".join(overlap))
    candidate_required = {
        "path", "sha256", "bytes", "status", "source_set", "source_intake",
        "git_blob", "working_tree_state", "source_root", "module", "namespaces",
        "public_declarations", "imports", "reverse_consumers", "subject", "object",
        "target_path", "logical_status", "mathematical_admission",
        "public_release_eligible", "native_compilation", "axiom_audit",
    }
    for entry in candidates:
        missing = candidate_required - set(entry)
        if missing:
            raise ValueError(f"{entry['path']}: missing candidate fields {sorted(missing)}")
        if (entry["status"] != "CANDIDATE_SOURCE_ONLY"
                or entry["source_set"] != "candidate-evidence"
                or entry["mathematical_admission"] is not False
                or entry["public_release_eligible"] is not False):
            raise ValueError(f"{entry['path']}: candidate-only admission contract changed")
    return {
        "schema": "grwtsk-math-source-catalog-v1",
        "authoritative_source": "docs/math-layout.json#active_sources",
        "candidate_authoritative_source": "docs/math-layout.json#candidate_sources",
        "source_count": len(sources),
        "present_lean_source_count": len(sources) + len(candidates),
        "candidate_source_count": len(candidates),
        "counts_by_subject": dict(sorted(Counter(x["subject"] for x in sources).items())),
        "counts_by_role": dict(sorted(Counter(x["source_role"] for x in sources).items())),
        "counts_by_operation": dict(sorted(Counter(x["operation"] for x in sources).items())),
        "candidate_counts_by_subject": dict(sorted(Counter(
            x["subject"] for x in candidates).items())),
        "candidate_counts_by_status": dict(sorted(Counter(
            x["status"] for x in candidates).items())),
        "sources": sources,
        "candidate_sources": candidates,
    }


def encoded(value):
    return json.dumps(value, ensure_ascii=True, indent=2, sort_keys=True) + "\n"


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--render", action="store_true")
    args = parser.parse_args()
    result = encoded(catalog(json.loads(LAYOUT.read_text())))
    if args.render:
        OUTPUT.write_text(result)
    elif not OUTPUT.is_file() or OUTPUT.read_text() != result:
        raise SystemExit("generated source catalog is stale; run with --render")
    rendered = json.loads(result)
    print("math source catalog: %d active sources, %d candidate-only sources" % (
        rendered["source_count"], rendered["candidate_source_count"]))


if __name__ == "__main__":
    main()
