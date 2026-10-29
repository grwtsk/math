import Mathematics.SemanticTokenization.Span

/-!
# Finite candidate-span and coverage families
-/

namespace Mathematics.SemanticTokenization

inductive CandidateSpanSource
  | baseTokenizer
  | orthographicWord
  | punctuationUnit
  | lexicon
  | dictionaryExpression
  | parser
  | parserConstituent
  | externalAssertion
  | humanAnnotation
  | manualRegistration
  | boundedWindow
  | boundedGenerator
deriving DecidableEq, Repr

structure CandidateSpanConfiguration where
  enabledSources : Finset CandidateSpanSource
  maxPhraseLength : Nat
  maxPhraseLength_pos : 0 < maxPhraseLength
  digest : Digest
deriving Repr

structure CandidateSpanFamily (text : TextCarrier) where
  spans : Finset (Span text)
  configuration : CandidateSpanConfiguration
  generatedByFiniteRule : Prop

def OrderedSpans {text : TextCarrier}
    (spans : Array (Span text)) : Prop :=
  spans.toList.Pairwise (fun left right => left.Before right)

def PairwiseDisjoint {text : TextCarrier}
    (spans : Array (Span text)) : Prop :=
  spans.toList.Pairwise (fun left right => ¬ left.Overlaps right)

structure TextRegion (text : TextCarrier) where
  span : Span text

structure IgnoredRegion (text : TextCarrier) where
  span : Span text
  reason : String

def Covers {text : TextCarrier}
    (spans : Array (Span text))
    (ignored : Array (IgnoredRegion text)) : Prop :=
  ∀ index : Fin text.chars.size,
    (∃ span ∈ spans, span.CoversIndex index) ∨
    (∃ region ∈ ignored, region.span.CoversIndex index)

structure EvidenceRequiredSpans (text : TextCarrier) where
  spans : Finset (Span text)
  assertionIds : Finset AssertionId

structure CandidateCoverageCertificate
    {text : TextCarrier}
    (candidates : CandidateSpanFamily text)
    (required : EvidenceRequiredSpans text) : Prop where
  covered :
    ∀ span ∈ required.spans,
      span ∈ candidates.spans

theorem candidateCoverage_contains
    {text : TextCarrier}
    {candidates : CandidateSpanFamily text}
    {required : EvidenceRequiredSpans text}
    (certificate : CandidateCoverageCertificate candidates required)
    {span : Span text}
    (member : span ∈ required.spans) :
    span ∈ candidates.spans :=
  certificate.covered span member

end Mathematics.SemanticTokenization
