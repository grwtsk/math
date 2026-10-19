import Mathematics.Operational.Surgery
import Mathematics.TensorNetwork.Anchor

/-!
# Beacon-preserving anchor rebirth

Anchor replacement is surgery, not gauge.  The active state is unchanged when
candidate verification fails, and accepted surgery preserves permanent beacon
labels through an injective continuation.
-/

namespace Mathematics.TensorNetwork

universe u v

/-- Proof-bearing state surgery into one reproductive anchor. -/
structure AnchorRebirthCertificate
    (Context : Type u)
    (N D : Nat)
    (SourceLabel TargetLabel : Type v)
    (sourceBeacon : SourceLabel → TensorState N D)
    (targetBeacon : TargetLabel → TensorState N D)
    (active : TensorState N D) where
  anchor : ReproductiveAnchorCertificate Context N D
  surgery : TensorState N D → TensorState N D
  selectsAnchor :
    surgery active = anchor.anchorState
  beaconPreservation :
    Mathematics.Operational.BeaconPreservationCertificate
      sourceBeacon targetBeacon surgery
  prestate : TensorState N D
  prestateExact : prestate = active

/-- Immutable candidate application: rejection preserves the exact prestate. -/
def applyCandidate
    (accepted : Bool)
    (active candidate : TensorState N D) :
    TensorState N D :=
  if accepted then candidate else active

@[simp] theorem rejectedCandidate_preserves_active
    (active candidate : TensorState N D) :
    applyCandidate false active candidate = active := by
  simp [applyCandidate]

end Mathematics.TensorNetwork
