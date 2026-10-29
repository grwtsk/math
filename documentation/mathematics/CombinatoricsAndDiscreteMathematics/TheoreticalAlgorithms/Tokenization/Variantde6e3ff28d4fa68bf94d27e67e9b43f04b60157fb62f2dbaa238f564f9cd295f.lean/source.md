# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Tokenization.Variantde6e3ff28d4fa68bf94d27e67e9b43f04b60157fb62f2dbaa238f564f9cd295f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `149624126f03fa1999879c6df814ee805941c204` · SHA-256 `de6e3ff28d4fa68bf94d27e67e9b43f04b60157fb62f2dbaa238f564f9cd295f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemanticTokenization.SpanFamily

/-!
# Structural tokenizations

Tokenizations certify finite ordering, disjointness, and explicit coverage.
They carry no semantic interpretation.
-/

namespace Mathematics.SemanticTokenization

structure Tokenization (text : TextCarrier) where
  spans : Array (Span text)
  nonempty : 0 < spans.size
  ordered : OrderedSpans spans
  disjoint : PairwiseDisjoint spans
  ignored : Array (IgnoredRegion text)
  covers : Covers spans ignored

namespace Tokenization

variable {text : TextCarrier}

theorem span_valid
    (tokenization : Tokenization text)
    {span : Span text}
    (member : span ∈ tokenization.spans) :
    span.Valid :=
  span.valid

theorem no_overlap (tokenization : Tokenization text) :
    PairwiseDisjoint tokenization.spans :=
  tokenization.disjoint

theorem coverage_sound (tokenization : Tokenization text) :
    Covers tokenization.spans tokenization.ignored :=
  tokenization.covers

end Tokenization

end Mathematics.SemanticTokenization
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=10ba88311c914de7a81e828e4c0ebd5146f81df44db99c2d660f924eb7696cae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tokenization/Variantde6e3ff28d4fa68bf94d27e67e9b43f04b60157fb62f2dbaa238f564f9cd295f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
