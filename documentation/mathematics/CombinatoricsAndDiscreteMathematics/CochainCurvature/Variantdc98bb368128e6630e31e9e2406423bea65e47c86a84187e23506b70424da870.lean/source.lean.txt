import Mathematics.SemiLocalDefect.BoundaryCochain

/-!
# Exact cochain curvature

The exact capacity-derived cochain has zero square curvature.  Approximate
connector curvature is intentionally outside this exact proposition.
-/

namespace Mathematics.SemiLocalDefect

def cochainCurvature
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (cut : Finset Prime)
    (first second : Prime) :
    DiagonalOperator Coordinate :=
  capacity.increment cut first +
      capacity.increment (insert first cut) second -
    (capacity.increment cut second +
      capacity.increment (insert second cut) first)

theorem exact_capacity_cochain_curvature_zero
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (cut : Finset Prime)
    (first second : Prime) :
    cochainCurvature capacity cut first second = 0 := by
  rw [cochainCurvature]
  rw [capacity_increment_square_closed]
  exact sub_self _

end Mathematics.SemiLocalDefect
