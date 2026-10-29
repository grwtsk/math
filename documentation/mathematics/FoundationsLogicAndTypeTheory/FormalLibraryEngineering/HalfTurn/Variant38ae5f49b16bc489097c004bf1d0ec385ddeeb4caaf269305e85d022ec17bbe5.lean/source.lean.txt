import Mathematics.Geometry.SquaredDistance

/-!
# Affine half-turn

The half-turn is expressed by canonical vector operations on the Euclidean
plane.  Involution and metric preservation are proved, not runtime assumptions.
-/

namespace Mathematics.Geometry

/-- The affine half-turn about a designated center. -/
def halfTurn (center point : PlanePoint) : PlanePoint :=
  (2 : ℝ) • center - point

@[simp] theorem halfTurn_involutive (center point : PlanePoint) :
    halfTurn center (halfTurn center point) = point := by
  ext coordinate
  simp [halfTurn]

theorem halfTurn_difference (center point : PlanePoint) :
    center - halfTurn center point = -(center - point) := by
  ext coordinate
  simp [halfTurn]
  ring

theorem halfTurn_preserves_centered_squaredDistance
    (center point : PlanePoint) :
    planeSquaredDistance center (halfTurn center point) =
      planeSquaredDistance center point := by
  simp only [planeSquaredDistance, halfTurn_difference]
  simp [norm_sub_rev]

end Mathematics.Geometry
