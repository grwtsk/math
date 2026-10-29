import Mathematics.Resolution.Kind

/-!
# Non-collapsing square-carrier coordinates

Availability, checker validity, and theorem status occupy distinct channels.
An unresolved cell is therefore not an encoding of false.
-/

namespace Mathematics.Resolution

inductive EvidenceAvailability
  | missing
  | supplied
  deriving DecidableEq, Repr

inductive EvidenceValidity
  | unchecked
  | accepted
  | rejected
  deriving DecidableEq, Repr

inductive TheoremCoordinate
  | certifiedTrue
  | certifiedFalse
  | unknown
  deriving DecidableEq, Repr

structure ResolutionCarrierCell where
  availability : EvidenceAvailability
  validity : EvidenceValidity
  theoremStatus : TheoremCoordinate
  frequency : Nat
  deriving DecidableEq, Repr

def ResolutionCarrierCell.ofStatus :
    ProofStatus → Nat → ResolutionCarrierCell
  | .proved, frequency =>
      ⟨.supplied, .accepted, .certifiedTrue, frequency⟩
  | .unknownMissing, frequency =>
      ⟨.missing, .unchecked, .unknown, frequency⟩
  | .unknownUnaccepted, frequency =>
      ⟨.supplied, .rejected, .unknown, frequency⟩

theorem unresolved_status_is_not_false
    (status : ProofStatus)
    (unresolved : status ≠ .proved)
    (frequency : Nat) :
    (ResolutionCarrierCell.ofStatus status frequency).theoremStatus =
      TheoremCoordinate.unknown := by
  cases status <;> simp_all [ResolutionCarrierCell.ofStatus]

end Mathematics.Resolution
