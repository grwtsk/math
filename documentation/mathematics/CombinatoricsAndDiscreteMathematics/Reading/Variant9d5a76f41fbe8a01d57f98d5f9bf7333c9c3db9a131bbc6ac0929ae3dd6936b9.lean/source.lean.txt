import Mathematics.SemanticTokenization.Composition

/-!
# Literal candidates and externally certified contextual readings
-/

namespace Mathematics.SemanticTokenization

structure LiteralReading
    (cut : EvidenceCut)
    (phrase : PhraseCandidate cut) where
  composition : CompositionCertificate cut phrase
  lexicalEvidence : Finset EvidenceId
  syntacticEvidence : Finset EvidenceId

structure ContextualReading
    (cut : EvidenceCut)
    (phrase : PhraseCandidate cut) where
  interpretation : CertifiedInterpretation cut
  sourceMatches :
    interpretation.external.source =
      phrase.spans.toList.toFinset
  contextMatches :
    interpretation.external.context =
      phrase.context

theorem certified_interpretation_has_external_source
    {cut : EvidenceCut}
    (interpretation : CertifiedInterpretation cut) :
    ∃ external,
      interpretation.external = external ∧
      AcceptedInterpretation cut external :=
  no_interpretation_without_external_assertion interpretation

theorem model_candidate_not_theorem_authority
    {cut : EvidenceCut}
    {candidate : CandidateInterpretation cut.text}
    (member : candidate ∈ generateCandidates cut) :
    candidate.authoritative = false :=
  generated_candidates_not_certified member

end Mathematics.SemanticTokenization
