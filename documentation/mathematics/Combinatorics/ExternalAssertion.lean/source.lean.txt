import Mathematics.SemanticTokenization.Metadata
import Mathematics.SemanticTokenization.Provenance

/-!
# Externally supplied typed assertions and interpretations
-/

namespace Mathematics.SemanticTokenization

structure ExternalAssertion
    (text : TextCarrier)
    (metadataType : MetadataType) where
  id : AssertionId
  source : Finset (Span text)
  source_nonempty : source.Nonempty
  value : MetadataValue metadataType
  context : ContextId
  dependency : ContextDependency
  evidence : Finset EvidenceId
  evidence_nonempty : evidence.Nonempty
  authority : AuthorityClass
  intendedUse : AssertionUse
  snapshot : SnapshotId

abbrev PackedExternalAssertion (text : TextCarrier) :=
  Sigma (ExternalAssertion text)

structure MeaningPayload where
  identifier : String
  conceptRefs : Finset ConceptId
  payloadDigest : Digest
deriving Repr

inductive ReadingClass
  | literal
  | technical
  | collocational
  | metaphorical
  | idiomatic
  | mixed
  | unresolved
deriving DecidableEq, Repr

structure ExternalInterpretation
    (text : TextCarrier) where
  id : AssertionId
  source : Finset (Span text)
  source_nonempty : source.Nonempty
  readingClass : ReadingClass
  meaning : MeaningPayload
  context : ContextId
  dependency : ContextDependency
  evidence : Finset EvidenceId
  evidence_nonempty : evidence.Nonempty
  authority : AuthorityClass
  snapshot : SnapshotId

structure CandidateInterpretation
    (text : TextCarrier) where
  source : Finset (Span text)
  proposedReading : ReadingClass
  proposedMeaning : MeaningPayload
  producer : EvidenceSourceKind
  authoritative : Bool := false

end Mathematics.SemanticTokenization
