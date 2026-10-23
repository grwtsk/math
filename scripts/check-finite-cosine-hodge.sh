#!/usr/bin/env bash
# Reproducible, fail-closed source and Lean verification gate for math#193 / PR#971.
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"
file="GRWTSK/Analysis/HeatFlow/FiniteCosineHodge.lean"
module="GRWTSK.Analysis.HeatFlow.FiniteCosineHodge"
test -f "$file"
command -v lake >/dev/null || { echo "UNAVAILABLE: lake is not installed" >&2; exit 2; }
# elan may supply lean/lake only inside its selected toolchain; lake env is authoritative.
lake env lean --version >/dev/null || { echo "UNAVAILABLE: selected Lean toolchain is not installed" >&2; exit 2; }
printf 'commit=%s\n' "$(git rev-parse HEAD)"
printf 'source_sha256=%s\n' "$(sha256sum "$file" | awk '{print $1}')"
printf 'toolchain=%s\n' "$(cat lean-toolchain)"
# No default trust relaxation or sorry substitution.
lake build --wfail "$module"
# Independently elaborate and kernel-check the exact source with zero trust.
lake env lean --trust=0 -DwarningAsError=true "$file"
# A source scan is supplemental, never a substitute for transitive axiom audit.
if grep -nE '(^|[^[:alnum:]_])(sorry|admit|native_decide)([^[:alnum:]_]|$)' "$file"; then
  echo "REJECTED: prohibited proof placeholder or native decision in source" >&2
  exit 1
fi
printf 'PASS: module build and standalone trust=0 elaboration (transitive axiom audit still separate)\n'
