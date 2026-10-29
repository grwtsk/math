import Mathlib.Analysis.InnerProductSpace.PiL2

/-!
# Real Euclidean plane

The affine carrier is Mathlib's canonical two-dimensional Euclidean space.
Cartesian display coordinates are constructors and projections of that carrier,
not a second point structure.
-/

namespace Mathematics.Geometry

/-- The real Euclidean plane with its canonical inner-product metric. -/
abbrev PlanePoint := EuclideanSpace ℝ (Fin 2)

namespace PlanePoint

/-- Construct a plane point from two Cartesian coordinates. -/
def cartesian (horizontal vertical : ℝ) : PlanePoint :=
  !₂[horizontal, vertical]

@[simp] theorem cartesian_horizontal (horizontal vertical : ℝ) :
    cartesian horizontal vertical 0 = horizontal := by
  simp [cartesian]

@[simp] theorem cartesian_vertical (horizontal vertical : ℝ) :
    cartesian horizontal vertical 1 = vertical := by
  simp [cartesian]

end PlanePoint

end Mathematics.Geometry
