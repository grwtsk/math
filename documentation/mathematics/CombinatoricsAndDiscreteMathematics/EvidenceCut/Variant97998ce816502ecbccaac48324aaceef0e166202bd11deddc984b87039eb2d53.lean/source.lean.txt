import Mathematics.SemanticTokenization.Adjudication
import Mathematics.SemanticTokenization.Normalization
import Mathematics.SemanticTokenization.RelationAlgebra
import Mathematics.SemanticTokenization.Tokenization
import Mathematics.SemanticTokenization.UnknownKind

/-!
# Immutable finite evidence cut

This is the nonrecursive frozen core.  Phrase, boundary, concept, and network
registries are dependent extensions in later modules, preventing an unsafe
self-referential cut.
-/

namespace Mathematics.SemanticTokenization

structure AcceptedEvent where
  id : EventId
  cutDigest : Digest
  resolutionDigest : Digest
  snapshot : SnapshotId
deriving DecidableEq, Repr

structure LineageRecord where
  cutDigest : Digest
  parentDigest : Option Digest
  resultDigest : Digest
  snapshot : SnapshotId
deriving Repr

structure EvidenceCut where
  rawText : RawText
  text : TextCarrier
  activeSnapshot : SnapshotId
  normalizationSpec : NormalizationSpec
  normalizationCertificate :
    Option
      (NormalizationCertificate
        rawText text normalizationSpec)
  candidateSpans : CandidateSpanFamily text
  candidateCoverage :
    Option
      (Sigma fun required : EvidenceRequiredSpans text =>
        CandidateCoverageCertificate candidateSpans required)
  baseTokenization : Option (Tokenization text)
  authorityPolicy : AuthorityPolicy
  evidenceRegistry : Array (EvidenceRef text)
  provenanceRegistry : Array (ProvenancePath text)
  contexts : Array Context
  contextSufficiency : Array ContextSufficiencyRecord
  contextTransports : Array ContextTransportCertificate
  snapshotTransports : Array SnapshotTransportCertificate
  metadataAssertions : Array (PackedExternalAssertion text)
  interpretations : Array (ExternalInterpretation text)
  adjudications : Array AdjudicationCertificate
  relationAlgebra : RelationAlgebra
  invalidatedAssertions : Finset AssertionId
  proofRegistry : Array Digest
  lineageLedger : Array LineageRecord
  eventLedger : Array AcceptedEvent
  budget : ResourceBudget

namespace EvidenceCut

def workEstimate (cut : EvidenceCut) : Nat :=
  cut.candidateSpans.spans.card +
  cut.evidenceRegistry.size +
  cut.provenanceRegistry.size +
  cut.contexts.size +
  cut.metadataAssertions.size +
  cut.interpretations.size +
  cut.adjudications.size

def hasEvidence (cut : EvidenceCut) (id : EvidenceId) : Prop :=
  ∃ evidence : Fin cut.evidenceRegistry.size,
    (cut.evidenceRegistry[evidence]).id = id

def hasAcceptedEvidence
    (cut : EvidenceCut)
    (id : EvidenceId) : Prop :=
  ∃ evidence : Fin cut.evidenceRegistry.size,
    (cut.evidenceRegistry[evidence]).id = id ∧
    (cut.evidenceRegistry[evidence]).accepted = true

def hasContext (cut : EvidenceCut) (id : ContextId) : Prop :=
  ∃ context : Fin cut.contexts.size,
    (cut.contexts[context]).id = id

def contextOf (cut : EvidenceCut) (id : ContextId) : Option Context :=
  cut.contexts.find? fun context => context.id = id

def hasSnapshotTransport
    (cut : EvidenceCut)
    (source target : SnapshotId) : Prop :=
  SnapshotTransportedTo cut.snapshotTransports source target

def hasProvenance
    (cut : EvidenceCut)
    (assertion : AssertionId) : Prop :=
  ∃ path : Fin cut.provenanceRegistry.size,
    (cut.provenanceRegistry[path]).assertion = assertion ∧
    (cut.provenanceRegistry[path]).Valid
      cut.activeSnapshot cut.hasAcceptedEvidence

def hasSufficientContext
    (cut : EvidenceCut)
    (context : ContextId)
    (dependency : ContextDependency) : Prop :=
  ∃ record : Fin cut.contextSufficiency.size,
    (cut.contextSufficiency[record]).context = context ∧
    (cut.contextSufficiency[record]).dependency = dependency ∧
    (cut.contextSufficiency[record]).snapshot =
      cut.activeSnapshot ∧
    (cut.contextSufficiency[record]).requiredFieldsAvailable

end EvidenceCut

structure AcceptedAssertion
    (cut : EvidenceCut)
    (assertion : PackedExternalAssertion cut.text) : Prop where
  sourceValid :
    ∀ span ∈ assertion.2.source,
      span ∈ cut.candidateSpans.spans
  contextExists :
    cut.hasContext assertion.2.context
  sufficientContext :
    cut.hasSufficientContext
      assertion.2.context assertion.2.dependency
  evidenceExists :
    ∀ evidence ∈ assertion.2.evidence,
      cut.hasAcceptedEvidence evidence
  authorityAccepted :
    cut.authorityPolicy.permits
      assertion.2.authority
      assertion.2.intendedUse = true
  snapshotMatches :
    assertion.2.snapshot = cut.activeSnapshot
  provenanceExists :
    cut.hasProvenance assertion.2.id
  noContradiction :
    assertion.2.id ∉ cut.invalidatedAssertions

structure PackedAcceptedAssertion
    (cut : EvidenceCut) where
  assertion : PackedExternalAssertion cut.text
  accepted : AcceptedAssertion cut assertion

def EvidenceCut.isAcceptedAssertion
    (cut : EvidenceCut)
    (id : AssertionId) : Prop :=
  ∃ assertion : Fin cut.metadataAssertions.size,
    (cut.metadataAssertions[assertion]).2.id = id ∧
    AcceptedAssertion cut
      (cut.metadataAssertions[assertion])

structure AcceptedInterpretation
    (cut : EvidenceCut)
    (interpretation : ExternalInterpretation cut.text) : Prop where
  sourceValid :
    ∀ span ∈ interpretation.source,
      span ∈ cut.candidateSpans.spans
  contextExists :
    cut.hasContext interpretation.context
  sufficientContext :
    cut.hasSufficientContext
      interpretation.context interpretation.dependency
  evidenceExists :
    ∀ evidence ∈ interpretation.evidence,
      cut.hasAcceptedEvidence evidence
  authorityAccepted :
    cut.authorityPolicy.permits
      interpretation.authority .semantic = true
  snapshotMatches :
    interpretation.snapshot = cut.activeSnapshot
  provenanceExists :
    cut.hasProvenance interpretation.id
  noContradiction :
    interpretation.id ∉ cut.invalidatedAssertions

structure CertifiedInterpretation
    (cut : EvidenceCut) where
  external : ExternalInterpretation cut.text
  accepted : AcceptedInterpretation cut external

theorem no_interpretation_without_external_assertion
    {cut : EvidenceCut}
    (interpretation : CertifiedInterpretation cut) :
    ∃ external : ExternalInterpretation cut.text,
      interpretation.external = external ∧
      AcceptedInterpretation cut external :=
  ⟨interpretation.external, rfl, interpretation.accepted⟩

def generateCandidates
    (cut : EvidenceCut) :
    Array (CandidateInterpretation cut.text) :=
  #[]

theorem generated_candidates_not_certified
    {cut : EvidenceCut}
    {candidate : CandidateInterpretation cut.text}
    (member : candidate ∈ generateCandidates cut) :
    candidate.authoritative = false := by
  simp [generateCandidates] at member

structure CutWellFormed
    (cut : EvidenceCut) : Prop where
  normalizationPresent :
    cut.normalizationCertificate.isSome
  textIdentityValid :
    cut.rawText.id = cut.text.id
  sourceDigestValid :
    cut.rawText.sourceDigest = cut.text.sourceDigest
  evidenceIdsUnique :
    PairwiseUnique
      (cut.evidenceRegistry.map EvidenceRef.id)
  contextIdsUnique :
    PairwiseUnique
      (cut.contexts.map Context.id)
  allEvidenceSnapshotsValid :
    ∀ evidence : Fin cut.evidenceRegistry.size,
      (cut.evidenceRegistry[evidence]).snapshot =
        cut.activeSnapshot ∨
      cut.hasSnapshotTransport
        (cut.evidenceRegistry[evidence]).snapshot
        cut.activeSnapshot
  boundedSteps :
    0 < cut.budget.maxSteps
  boundedCandidates :
    0 < cut.budget.maxCandidates
  boundedEvidence :
    0 < cut.budget.maxEvidence
  candidateRegistryBounded :
    cut.candidateSpans.spans.card ≤
      cut.budget.maxCandidates
  evidenceRegistryBounded :
    cut.evidenceRegistry.size ≤
      cut.budget.maxEvidence
  totalWorkBounded :
    cut.workEstimate ≤ cut.budget.maxSteps

theorem accepted_assertion_uses_active_snapshot
    {cut : EvidenceCut}
    {assertion : PackedExternalAssertion cut.text}
    (accepted : AcceptedAssertion cut assertion) :
    assertion.2.snapshot = cut.activeSnapshot :=
  accepted.snapshotMatches

theorem stale_assertion_not_accepted
    {cut : EvidenceCut}
    {assertion : PackedExternalAssertion cut.text}
    (stale : assertion.2.snapshot ≠ cut.activeSnapshot)
    (_noTransport :
      ¬ cut.hasSnapshotTransport
        assertion.2.snapshot cut.activeSnapshot) :
    ¬ AcceptedAssertion cut assertion := by
  intro accepted
  exact stale accepted.snapshotMatches

end Mathematics.SemanticTokenization
