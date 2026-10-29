# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SpanFamily.Variant6343a92171b0ae18fec9ab6cc51cd6e5eae070d2cf7436ddff9beb7eccc3bd09

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f70ea695af87f38bfcdec49c26820ecb9d6725b1` · SHA-256 `6343a92171b0ae18fec9ab6cc51cd6e5eae070d2cf7436ddff9beb7eccc3bd09`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3604b5ef03d10b42cef860068ea311910cf0290f4712284850173090e73b4ae1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpanFamily/Variant6343a92171b0ae18fec9ab6cc51cd6e5eae070d2cf7436ddff9beb7eccc3bd09.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
