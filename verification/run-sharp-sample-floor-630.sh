#!/usr/bin/env bash
# Fail-closed exact-source Lean qualification for the sharp sample floor.
set -euo pipefail
cd "$(dirname "$0")/.."
expected_lean='leanprover/lean4:v4.33.0'
expected_mathlib='db584cd6d46c92f209a44c0f1c829460d327499d'
test -f lean-toolchain
test "$(tr -d '\r\n' < lean-toolchain)" = "$expected_lean" || { echo 'FAIL: unexpected Lean pin' >&2; exit 1; }
command -v lake >/dev/null || { echo 'FAIL: lake unavailable' >&2; exit 1; }
command -v lean >/dev/null || { echo 'FAIL: lean unavailable' >&2; exit 1; }
test -f lake-manifest.json
python3 - "$expected_mathlib" <<'PY'
import json,sys
m=json.load(open("lake-manifest.json"))
matches=[p for p in m.get("packages",[]) if p.get("name")=="mathlib"]
if len(matches)!=1 or matches[0].get("rev")!=sys.argv[1]:
    raise SystemExit("FAIL: unexpected Mathlib revision")
PY
test -f .lake/packages/mathlib/Mathlib.lean || { echo 'FAIL: Mathlib checkout unavailable' >&2; exit 1; }
echo 'Building the complete selected transitive import graph'
lake build GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FinitePatternCountBalancing
lake build GRWTSK.NumberTheory.ArithmeticFunctions.LiouvilleSharpSampleFloor
echo 'Elaborating the two selected source files explicitly'
lake env lean GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternCountBalancing.lean
lake env lean GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleSharpSampleFloor.lean
tmp="$(mktemp "$PWD/.sharp-sample-floor-audit-XXXXXX.lean")"
trap 'rm -f "$tmp"' EXIT
cat > "$tmp" <<'LEAN'
import GRWTSK.NumberTheory.ArithmeticFunctions.LiouvilleSharpSampleFloor
#print GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic.finite_count_square_parseval_floor
#print GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic.nonemptyCorrelationEnergy_eq_natCount_defect
#print GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic.nonemptyCorrelationEnergy_sharp_sample_floor
#print GRWTSK.NumberTheory.LiouvilleWalshSourceBridge.liouvilleAllOrderEnergy_sharp_sample_floor
#print axioms GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic.finite_count_square_parseval_floor
#print axioms GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic.nonemptyCorrelationEnergy_eq_natCount_defect
#print axioms GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic.nonemptyCorrelationEnergy_sharp_sample_floor
#print axioms GRWTSK.NumberTheory.LiouvilleWalshSourceBridge.liouvilleAllOrderEnergy_sharp_sample_floor
LEAN
echo 'Printing exact types and transitive axioms'
audit_log="$(mktemp "$PWD/.sharp-sample-floor-output-XXXXXX.log")"
trap 'rm -f "$tmp" "$audit_log"' EXIT
lake env lean "$tmp" 2>&1 | tee "$audit_log"
# Lean can elaborate a declaration with sorryAx and still exit successfully.
# Reject such an output; require manual review for other opaque axioms.
if grep -Eq 'sorryAx|admitAx|Lean\.ofReduceBool|native_decide' "$audit_log"; then
  echo 'FAIL: unapproved axiom or proof placeholder in theorem audit' >&2
  exit 1
fi
# Lean may report either a nonempty axiom list or that a theorem
# does not depend on axioms. Both are legitimate audit responses.
report_count="$(grep -Ec 'depends on axioms:|does not depend on any axioms' "$audit_log" || true)"
if [ "$report_count" -ne 4 ]; then
  echo "FAIL: expected four axiom reports, received $report_count" >&2
  exit 1
fi
echo 'SELECTED ELABORATION AND BASIC AXIOM SCREEN PASSED; independent replay and full axiom review remain required'
