#!/usr/bin/env bash
# Source-only exact-head verification instructions for perimeter angle kernel
# This script is NOT a verification receipt. Run from a local clone with the
# repository's pinned Lean/Lake toolchain and dependencies already installed.
# No CI/workflow, dependency, or toolchain changes are made.
set -euo pipefail
EXPECTED_PARENT=5aa55f9366e1d02ebc0b764b691dece299b4697a
EXPECTED_HEAD=d2f48b29d1798e4d52c0119bb789b4b4a11aa708
EXPECTED_KERNEL_BLOB=debad508b11d0e349e4f9114a38fc66f67f32e71
TARGET=GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterAngleKernel.lean
test -f "$TARGET"
actual_blob=$(git hash-object "$TARGET")
if [ "$actual_blob" != "$EXPECTED_KERNEL_BLOB" ]; then
  echo "Kernel source differs from audited blob: $actual_blob" >&2
  exit 1
fi
command -v lake >/dev/null
lake env lean --version >/dev/null
# The receipt must identify the actual toolchain, not just the source.
lake --version
lake env lean --version
git merge-base --is-ancestor "$EXPECTED_PARENT" HEAD || { echo 'Pinned parent is not an ancestor' >&2; exit 1; }
actual_head=$(git rev-parse HEAD)
if [ "$actual_head" != "$EXPECTED_HEAD" ]; then
  echo "Expected exact PR #974 head $EXPECTED_HEAD, got $actual_head" >&2
  exit 1
fi
# Reject changes to the mathematical parent modules, even when ancestry holds.
for upstream in \
  GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean \
  GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean \
  GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean; do
  if ! git diff --quiet "$EXPECTED_PARENT" HEAD -- "$upstream" ||
     ! git diff --quiet HEAD -- "$upstream"; then
    echo "Pinned upstream source changed: $upstream" >&2
    exit 1
  fi
done
printf 'HEAD: '; git rev-parse HEAD
if [ -n "$(git status --porcelain --untracked-files=no)" ]; then
  echo 'Tracked working tree is dirty; refusing source-bound audit' >&2
  exit 1
fi
printf 'Working tree status:\n'; git status --short
printf 'Kernel blob: %s\n' "$actual_blob"
# Build the module first: a plain lean invocation does not produce the .olean
# required by the subsequent independent import-and-axioms inspection.
lake build GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAngleKernel
lake env lean --trust=0 --wfail "$TARGET"
# Independently request kernel elaboration of the imported declarations
# and inspect their transitive axioms. Keep this temporary file outside GRWTSK.
tmp=$(mktemp --suffix=.lean)
trap 'rm -f "$tmp"' EXIT
cat > "$tmp" <<'LEAN'
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAngleKernel
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAngleKernel
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleEquivalence
#print axioms perimeterAngle_injective
#print axioms perimeterAngle_surjective
#print axioms perimeterAngle_bijective
#print axioms perimeterCircleHomeomorph
#print axioms perimeterUnitCircleHomeomorph
#print source_angle_eq_iff_perimeter_projection_eq
#print source_angle_eq_iff_connected
#print source_angle_ne_iff_projection_ne
#print source_angle_ne_iff_not_connected
#print perimeter_angle_eq_iff
#print axioms source_angle_eq_iff_perimeter_projection_eq
#print axioms source_angle_eq_iff_connected
#print axioms source_angle_ne_iff_projection_ne
#print axioms source_angle_ne_iff_not_connected
#print axioms perimeter_angle_eq_iff
LEAN
lake env lean --trust=0 --wfail "$tmp"
# Hostile controls: a genuine endpoint seam must alias, while the
# first two distinct directed corners must NOT alias on the perimeter.
# The same corners DO alias after the paired attaching map.
cat > "$tmp" <<'LEAN'
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAngleKernel
open GRWTSK.GroupTheory.Words.HigherGenusHeisenbergWitness
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAttachment
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleAddress
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleEquivalence
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAngleKernel
example (k : ℕ) (c : PolygonCorner k) :
    perimeterProjection k (c, 1) =
      perimeterProjection k (nextDirectedCorner k c, 0) :=
  perimeterProjection_one_eq_nextDirectedCorner k c
example (k : ℕ) :
    perimeterAngle k
        (perimeterProjection k ((firstHandle k, (0 : Fin 4)), 0)) ≠
      perimeterAngle k
        (perimeterProjection k ((firstHandle k, (1 : Fin 4)), 0)) :=
  distinct_first_corner_angles k
example (k : ℕ) :
    (perimeterAngle k
        (perimeterProjection k ((firstHandle k, (0 : Fin 4)), 0)) ≠
      perimeterAngle k
        (perimeterProjection k ((firstHandle k, (1 : Fin 4)), 0))) ∧
    (perimeterAttach k
        (perimeterProjection k ((firstHandle k, (0 : Fin 4)), 0)) =
      perimeterAttach k
        (perimeterProjection k ((firstHandle k, (1 : Fin 4)), 0))) :=
  distinct_angles_same_attached_vertex k
LEAN
lake env lean --trust=0 --wfail "$tmp"
# Exact source-level negative control: the quotient map is injective
# on canonical half-open representatives, but NOT on the original
# closed interval copies at their glued endpoints. This checks the
# normalization boundary rather than accidentally assuming it away.
cat > "$tmp" <<'LEAN'
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAngleKernel
open GRWTSK.GroupTheory.Words.HigherGenusHeisenbergWitness
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAttachment
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleEquivalence
example (k : ℕ) (c : PolygonCorner k) :
    perimeterProjection k (c, 1) =
      perimeterProjection k (nextDirectedCorner k c, 0) :=
  perimeterProjection_one_eq_nextDirectedCorner k c
example (k : ℕ) (p : BoundaryPoint k) :
    perimeterProjection k (canonicalBoundaryPoint k p) =
      perimeterProjection k p :=
  canonicalBoundaryPoint_projection k p
example (k : ℕ) (p : BoundaryPoint k) :
    ((canonicalBoundaryPoint k p).2 : ℝ) < 1 :=
  canonicalBoundaryPoint_parameter_lt_one k p
LEAN
lake env lean --trust=0 --wfail "$tmp"
# This script performs a trust=0 elaboration request and prints both inherited
# homeomorphism dependency axioms and child theorem axioms, but
# does not replace independent import/unsafe review or hostile seam fixtures.
# Do not claim acceptance without an authorized immutable #100 receipt.
