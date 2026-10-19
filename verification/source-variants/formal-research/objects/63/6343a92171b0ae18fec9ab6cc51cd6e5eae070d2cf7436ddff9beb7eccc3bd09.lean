import Mathematics.SemanticTokenization.Span

/-! # Finite, explicitly bounded candidate-span families -/

namespace Mathematics.SemanticTokenization

structure CandidateSpanFamily (text : TextCarrier) where
  generatorRuleId : StableId
  maximumPhraseLength : Nat
  maximum_positive : 0 < maximumPhraseLength
  spans : List (Span text)
  requiredEvidenceSpans : List (Span text)
  required_covered :
    ∀ required ∈ requiredEvidenceSpans,
      ∃ candidate ∈ spans,
        candidate.SameCoordinates required
  within_bound :
    ∀ candidate ∈ spans,
      candidate.stop - candidate.start ≤ maximumPhraseLength

def CandidateSpanFamily.Contains
    {text : TextCarrier}
    (family : CandidateSpanFamily text)
    (span : Span text) : Prop :=
  ∃ candidate ∈ family.spans,
    candidate.SameCoordinates span

theorem CandidateSpanFamily.contains_required
    {text : TextCarrier}
    (family : CandidateSpanFamily text)
    {span : Span text}
    (member : span ∈ family.requiredEvidenceSpans) :
    family.Contains span :=
  family.required_covered span member

end Mathematics.SemanticTokenization
