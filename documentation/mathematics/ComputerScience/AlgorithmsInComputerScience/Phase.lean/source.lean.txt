import Mathematics.Core.SemanticIdentity

/-! # Evidence-governed phase classification -/

namespace Mathematics.Orbit

inductive Status
  | finite (period : Nat)
  | denseCircle
  | denseTorus (dimension : Nat)
  | unresolved
  deriving DecidableEq, Repr

inductive PhaseEvidence
  | exactRational (numerator : Int) (denominator : Nat)
  | certifiedIrrational (certificate : CertificateId)
  | finitePrefix (samples : List Int)
  deriving DecidableEq, Repr

def classify : PhaseEvidence → Status
  | .exactRational _ denominator =>
      if denominator = 0 then .unresolved else .finite denominator
  | .certifiedIrrational _ => .denseCircle
  | .finitePrefix _ => .unresolved

@[simp] theorem finite_prefix_never_claims_irrationality
    (samples : List Int) :
    classify (.finitePrefix samples) = .unresolved := rfl

end Mathematics.Orbit
