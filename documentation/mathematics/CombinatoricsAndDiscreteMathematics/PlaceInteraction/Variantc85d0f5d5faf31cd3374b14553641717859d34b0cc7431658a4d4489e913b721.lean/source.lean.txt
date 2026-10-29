import Mathematics.SemiLocalDefect.CochainReconstruction

/-!
# Higher place interaction

Closedness of the first cochain is automatic.  The second finite difference is
a new sign-bearing invariant.
-/

namespace Mathematics.SemiLocalDefect

universe uPrime

def placeInteraction
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (cut : Finset Prime)
    (left right : Prime) :
    model.Operator :=
  capacity.defect (insert left (insert right cut)) -
    capacity.defect (insert left cut) -
    capacity.defect (insert right cut) +
    capacity.defect cut

theorem placeInteraction_eq_incrementDifference
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (cut : Finset Prime)
    (left right : Prime) :
    placeInteraction capacity cut left right =
      capacity.increment (insert right cut) left -
        capacity.increment cut left := by
  simp only [placeInteraction,
    PrimeCutDefectCapacity.increment]
  abel

inductive InteractionSign
  | diminishing
  | additive
  | reinforcing
  | indefinite
deriving DecidableEq, Repr

structure PlaceInteractionCertificate
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (cut : Finset Prime)
    (left right : Prime) where
  sign : InteractionSign
  diminishing :
    sign = .diminishing →
      model.Nonnegative
        (-placeInteraction
          capacity cut left right)
  additive :
    sign = .additive →
      placeInteraction capacity cut left right = 0
  reinforcing :
    sign = .reinforcing →
      model.Nonnegative
        (placeInteraction
          capacity cut left right)

end Mathematics.SemiLocalDefect
