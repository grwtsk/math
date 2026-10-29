import Mathematics.SemiLocalDefect.PositiveCapacity

/-!
# Pair interaction

Pair interaction is a second difference of the capacity.  It is symmetric,
but monotonicity alone does not give it a sign.  This object remains separate
from the identically zero exact cochain curvature.
-/

namespace Mathematics.SemiLocalDefect

def pairInteraction
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (cut : Finset Prime)
    (first second : Prime) :
    DiagonalOperator Coordinate :=
  capacity.value (insert first (insert second cut)) -
    capacity.value (insert first cut) -
    capacity.value (insert second cut) +
    capacity.value cut

theorem pairInteraction_symmetric
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (cut : Finset Prime)
    (first second : Prime) :
    pairInteraction capacity cut first second =
      pairInteraction capacity cut second first := by
  have terminal_cuts_equal :
      insert first (insert second cut) =
        insert second (insert first cut) := by
    ext prime
    simp [or_left_comm]
  funext coordinate
  simp only [pairInteraction, Pi.add_apply, Pi.sub_apply]
  rw [terminal_cuts_equal]
  ring

end Mathematics.SemiLocalDefect
