import Mathematics.Attention.Depth

/-!
# Observation-certified block condensation

A block sum is only a candidate aggregation until every protected downstream
observation has an exact or bounded factorization witness.
-/

namespace Mathematics.Attention

inductive ObservationPreservationMode
  | exact
  | bounded
  deriving DecidableEq, Repr

structure ProtectedBlockObservation where
  observationId : String
  sourceObservationDigest : String
  aggregateObservationDigest : String
  errorBound : ℝ
  errorNonnegative : 0 ≤ errorBound
  mode : ObservationPreservationMode
  exactModeLaw :
    mode = .exact →
      errorBound = 0 ∧
      aggregateObservationDigest = sourceObservationDigest

def ProtectedBlockObservation.Certified
    (observation : ProtectedBlockObservation) : Prop :=
  observation.observationId ≠ "" ∧
  observation.sourceObservationDigest ≠ "" ∧
  observation.aggregateObservationDigest ≠ "" ∧
  0 ≤ observation.errorBound ∧
  (observation.mode = .exact →
    observation.errorBound = 0 ∧
    observation.aggregateObservationDigest =
      observation.sourceObservationDigest)

theorem ProtectedBlockObservation.certified
    (observation : ProtectedBlockObservation)
    (idPresent : observation.observationId ≠ "")
    (sourcePresent : observation.sourceObservationDigest ≠ "")
    (aggregatePresent : observation.aggregateObservationDigest ≠ "") :
    observation.Certified :=
  ⟨idPresent, sourcePresent, aggregatePresent,
    observation.errorNonnegative, observation.exactModeLaw⟩

structure BlockAttentionCondensationCertificate where
  blockId : String
  aggregationDigest : String
  protectedObservations : List ProtectedBlockObservation
  completeObservationSet : Prop
  completeObservationSetCertified : completeObservationSet
  allCertified :
    ∀ observation ∈ protectedObservations,
      observation.Certified

def BlockAttentionCondensationCertificate.Certified
    (certificate : BlockAttentionCondensationCertificate) : Prop :=
  certificate.blockId ≠ "" ∧
  certificate.aggregationDigest ≠ "" ∧
  certificate.protectedObservations ≠ [] ∧
  certificate.completeObservationSet ∧
  ∀ observation ∈ certificate.protectedObservations,
    observation.Certified

end Mathematics.Attention
