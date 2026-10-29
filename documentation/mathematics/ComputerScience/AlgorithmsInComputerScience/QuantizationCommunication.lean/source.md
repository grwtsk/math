# Quantization Communication — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c275d5e109708e09d42ae08eab084119d8454735` · SHA-256 `b43faa7a12c5bdf47a8a157ebf4ad0c79d96f18648a55fa6686b7b703edf3d32`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.ContinuousAssurance.QuantizedEvidence

/-!
# Quantization communication records

These records render selections, transitions, losses, and obligations for
review.  They are theorem-free communication data: a report digest is not a
semantic equivalence, a proof, a review, an authorization, or an accepted
source change.
-/

namespace Surface.ContinuousAssurance

/-- Which part of a quantization process a communication record describes. -/
inductive QuantizationCommunicationKind
  | request
  | selection
  | transition
  | decomposition
  | emittedObservation
  | obstruction
  | summary
  deriving DecidableEq, Repr

/-- Stable, source-linked communication about one quantization event. -/
structure QuantizationCommunicationRecord where
  identity : ArtifactIdentity
  subject : ArtifactIdentity
  kind : QuantizationCommunicationKind
  sourceEvidence : ProgressiveEvidence
  inputArtifacts : List ArtifactIdentity
  outputArtifacts : List ArtifactIdentity
  requestedBits : Option Nat
  selectedBits : Option Nat
  compilerBound : Option Nat
  decomposition : Option ArtifactIdentity
  cubicalDegree : Option Nat
  cubicalCell : Option ArtifactIdentity
  knownLosses : List String
  openObligations : List ArtifactIdentity
  affectedClaims : List ArtifactIdentity
  correctiveAction : String
  deriving Repr

namespace QuantizationCommunicationRecord

def authority
    (record : QuantizationCommunicationRecord) : AuthorityClass :=
  record.sourceEvidence.authority

def evidenceClass
    (record : QuantizationCommunicationRecord) : EvidenceClass :=
  record.sourceEvidence.evidenceClass

def assurance
    (record : QuantizationCommunicationRecord) : AssuranceLevel :=
  record.sourceEvidence.level

@[simp]
theorem authority_eq_source
    (record : QuantizationCommunicationRecord) :
    record.authority = record.sourceEvidence.authority :=
  rfl

@[simp]
theorem evidenceClass_eq_source
    (record : QuantizationCommunicationRecord) :
    record.evidenceClass = record.sourceEvidence.evidenceClass :=
  rfl

@[simp]
theorem assurance_eq_source
    (record : QuantizationCommunicationRecord) :
    record.assurance = record.sourceEvidence.level :=
  rfl

end QuantizationCommunicationRecord

/-- A report groups observations, transitions, and communication records. -/
structure QuantizationReport where
  identity : ArtifactIdentity
  sourceEvidence : ProgressiveEvidence
  observations : List QuantizedObservation
  transitions : List QuantizationTransitionContract
  records : List QuantizationCommunicationRecord
  knownLosses : List String
  openObligations : List ArtifactIdentity

/-- Reports observe, but never reclassify, an existing claim status. -/
def QuantizationReport.observedClaimStatus
    (_report : QuantizationReport)
    (status : ClaimStatus) : ClaimStatus :=
  status

/-- Rendering a report leaves any supplied claim classification unchanged. -/
@[simp]
theorem QuantizationReport.communicates_claim_status
    (report : QuantizationReport)
    (status : ClaimStatus) :
    report.observedClaimStatus status = status :=
  rfl

end Surface.ContinuousAssurance
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9fb4fa3583600b8217d78c5d57505c2a35bbe6a892bd3ca0e13298ee1c6517c7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizationCommunication/Variantb43faa7a12c5bdf47a8a157ebf4ad0c79d96f18648a55fa6686b7b703edf3d32.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
