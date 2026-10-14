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
    return {
        "schema": "grwtsk-math-source-catalog-v1",
        "authoritative_source": "docs/math-layout.json#active_sources",
        "source_count": len(sources),
        "counts_by_subject": dict(sorted(Counter(x["subject"] for x in sources).items())),
        "counts_by_role": dict(sorted(Counter(x["source_role"] for x in sources).items())),
        "counts_by_operation": dict(sorted(Counter(x["operation"] for x in sources).items())),
        "sources": sources,
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
    print("math source catalog: %d sources" % json.loads(result)["source_count"])


if __name__ == "__main__":
    main()
