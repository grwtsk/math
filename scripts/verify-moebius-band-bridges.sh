#!/usr/bin/env bash
# Copyright (c) 2026 grwtsk contributors. MIT.
# Verification entry point. This source does not assert that checks have run.
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$root"

command -v lake >/dev/null 2>&1 || {
  echo 'ERROR: lake not found; use the pinned lean-toolchain and lake-manifest.json.' >&2
  exit 127
}

echo "Repository: $(git rev-parse HEAD)"
echo "Toolchain: $(cat lean-toolchain)"
echo "Lake: $(lake --version)"

# Lean must elaborate both the new bridges and all their transitive imports.
lake build \
  GRWTSK.AlgebraicTopology.MoebiusBandGaugePacking \
  GRWTSK.AlgebraicTopology.MoebiusBandHolonomyClassification \
  GRWTSK.AlgebraicTopology.MoebiusBandOrientationDoubleCover \
  GRWTSK.AlgebraicTopology.MoebiusBandParitySignedWaveGauge \
  GRWTSK.AlgebraicTopology.MoebiusBandTwoBitGramBridge \
  GRWTSK.AlgebraicTopology.MoebiusBandQuantitativePackingPort \
  GRWTSK.AlgebraicTopology.MoebiusBandFractionalLinearGaugePort \
  GRWTSK.AlgebraicTopology.MoebiusBandPhysicalEllipticEndpointCriterion

tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT
cat > "$tmp/axiom-audit.lean" <<'LEAN'
import GRWTSK.AlgebraicTopology.MoebiusBandOrientationDoubleCover
import GRWTSK.AlgebraicTopology.MoebiusBandPhysicalEllipticEndpointCriterion

#print axioms GRWTSK.Topology.AlgebraicTopology.MoebiusBandOrientationDoubleCover.loopMonodromy_closed_gauge
#print axioms GRWTSK.Topology.AlgebraicTopology.MoebiusBandOrientationDoubleCover.loopMonodromy_twice
#print axioms GRWTSK.Topology.AlgebraicTopology.MoebiusBandPhysicalEllipticEndpointCriterion.physicalGram_eq_elliptic_add_complete_residual
#print axioms GRWTSK.Topology.AlgebraicTopology.MoebiusBandPhysicalEllipticEndpointCriterion.physicalBound_iff_originalEndpointBound
#print axioms GRWTSK.Topology.AlgebraicTopology.MoebiusBandPhysicalEllipticEndpointCriterion.physicalBound_iff_originalBirthBound
#print axioms GRWTSK.Topology.AlgebraicTopology.MoebiusBandPhysicalEllipticEndpointCriterion.canonical_RH_of_complete_physical_bound
#print axioms GRWTSK.Topology.AlgebraicTopology.MoebiusBandPhysicalEllipticEndpointCriterion.canonical_RH_of_complete_elliptic_bound
LEAN
lake env lean "$tmp/axiom-audit.lean" | tee "$tmp/axiom-audit.log"

if grep -E '(sorryAx|_sorry|grwtskResearchAxiom)' "$tmp/axiom-audit.log"; then
  echo 'FAIL: a prohibited or suspicious axiom was found in the reported closure.' >&2
  exit 1
fi

echo 'Lean elaboration completed, and requested #print axioms produced no listed sorryAx.'
echo 'Review the complete printed axiom sets before assigning acceptance status.'
