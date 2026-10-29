# Obstruction — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef352d859226b06a3e246678a2875b7497072f48` · SHA-256 `77734b9913e38db94ee209fe73936edaa2405e09701e39dd8e76ff4e041009f9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.ContinuousAssurance.Communication.Cech

/-!
# Stable coherence obstructions

Failed overlap, boundary, translation, global/local, surgery, and
representation squares become stable records.  A nonzero record blocks the
corresponding gluing claim; it is not silently downgraded to prose.
-/

namespace Surface.ContinuousAssurance

inductive ObstructionDegree
  | zero
  | one
  | two
  | higher (degree : Nat)
  deriving DecidableEq, Repr

inductive ObstructionKind
  | uncoveredCoordinate
  | overlapMismatch
  | boundaryMismatch
  | translationDefect
  | operatorRestrictionFailure
  | surgeryLocusMismatch
  | representationTriangleFailure
  | thresholdMarginFailure
  | reviewMismatch
  | authorizationMismatch
  | other
  deriving DecidableEq, Repr

/-- Content-addressable obstruction relative to an exact finite context. -/
structure CoherenceObstruction where
  identity : ObligationId
  kind : ObstructionKind
  degree : ObstructionDegree
  objectId : MathematicalObjectId
  representation : RepresentationId
  globalReference : Option MathematicalObjectId
  attentionRegion : Option GlobalLocusRef
  coefficientObject : String
  metricVersion : Option DAF.Version
  horizon : Option Nat
  thresholdConvention : Option String
  indexRoot : EvidenceDigest
  witnessRef : ArtifactIdentity
  status : ClaimStatus
  assuranceLevel : AssuranceLevel
  deriving Repr

/-- An unresolved obstruction remains an explicit obligation. -/
def CoherenceObstruction.IsOpen (obstruction : CoherenceObstruction) : Prop :=
  obstruction.status ≠ .verified ∧ obstruction.status ≠ .refuted

end Surface.ContinuousAssurance
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c491141fbe4b95718df935938037cef98eca4e2b92a2e51c98a99c6e41cee1f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Obstruction/Variant77734b9913e38db94ee209fe73936edaa2405e09701e39dd8e76ff4e041009f9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
