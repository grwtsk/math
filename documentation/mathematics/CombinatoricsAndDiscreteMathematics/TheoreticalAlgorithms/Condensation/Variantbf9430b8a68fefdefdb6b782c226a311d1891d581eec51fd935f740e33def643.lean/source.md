# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Condensation.Variantbf9430b8a68fefdefdb6b782c226a311d1891d581eec51fd935f740e33def643

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `40055c9d331f896f75bf55e3b93e7c828bfd087c` · SHA-256 `bf9430b8a68fefdefdb6b782c226a311d1891d581eec51fd935f740e33def643`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd25ab1268cd79d538e5f6ba355841c789e1f2813368845c788493f14f4ddcfc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Condensation/Variantbf9430b8a68fefdefdb6b782c226a311d1891d581eec51fd935f740e33def643.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
