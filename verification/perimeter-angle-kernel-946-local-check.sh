# Source-only exact-head verification instructions for perimeter angle kernel
# This script is NOT a verification receipt. Run from a local clone with the
# repository's pinned Lean/Lake toolchain and dependencies already installed.
# No CI/workflow, dependency, or toolchain changes are made.
set -euo pipefail
EXPECTED_PARENT=5aa55f9366e1d02ebc0b764b691dece299b4697a
TARGET=GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterAngleKernel.lean
test -f "$TARGET"
command -v lake >/dev/null
command -v lean >/dev/null
git status --short
git log -1 --format='%H'
lake env lean "$TARGET"
# Independently request kernel elaboration of the imported declarations
# and inspect their transitive axioms. Keep this temporary file outside GRWTSK.
tmp=$(mktemp --suffix=.lean)
trap 'rm -f "$tmp"' EXIT
cat > "$tmp" <<'LEAN'
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAngleKernel
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAngleKernel
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
lake env lean "$tmp"
# Do not claim acceptance until a separate --trust=0 kernel replay,
# import/unsafe audit, and hostile seam controls are completed under #100.
