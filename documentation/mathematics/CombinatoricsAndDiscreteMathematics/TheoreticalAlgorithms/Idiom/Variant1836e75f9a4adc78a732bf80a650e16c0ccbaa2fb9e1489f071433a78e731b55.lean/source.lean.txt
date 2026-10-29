import Mathematics.SemanticTokenization.Composition

/-! # Evidence-bearing idiom records -/

namespace Mathematics.SemanticTokenization

inductive IdiomProductivity
  | fixed
  | semiProductive
  | productive
  | unknown
  deriving DecidableEq, Repr

structure IdiomCertificate (text : TextCarrier) where
  idiomId : StableId
  phrase : PhraseCandidate text
  context : Context
  conventionalMeaning : MeaningPayload
  domain : StableId
  productivity : IdiomProductivity
  fixednessEvidence : EvidenceBundle text
  substitutionEvidence : EvidenceBundle text
  provenance : List (ProvenancePath text)
  snapshot : SnapshotId
  context_snapshot_exact :
    context.snapshot = snapshot

structure IdiomRecord (text : TextCarrier) where
  certificate : IdiomCertificate text
  readingClass : ReadingClass
  idiomatic :
    readingClass = .idiomatic

theorem IdiomRecord.is_idiomatic
    {text : TextCarrier}
    (record : IdiomRecord text) :
    record.readingClass = .idiomatic :=
  record.idiomatic

end Mathematics.SemanticTokenization
