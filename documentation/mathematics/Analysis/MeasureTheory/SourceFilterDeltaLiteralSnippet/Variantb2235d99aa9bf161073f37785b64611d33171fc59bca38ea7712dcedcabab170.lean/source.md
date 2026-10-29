# Complete source: GRWTSK.Analysis.MeasureTheory.SourceFilterDeltaLiteralSnippet.Variantb2235d99aa9bf161073f37785b64611d33171fc59bca38ea7712dcedcabab170

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2947878077eead59c7eea8669bd156314ae7994e` · SHA-256 `b2235d99aa9bf161073f37785b64611d33171fc59bca38ea7712dcedcabab170`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

namespace SourceFilterDeltaLiteral
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison.MobiusSourceFilterQuotient
open SourceFilterDeltaScratch
noncomputable section
example : {z : ℂ | W z = 0}.Countable := W_zero_set_countable
example : ∀ᵐ t : ℝ, W ((t : ℂ) * Complex.I) ≠ 0 := boundaryW_ae_ne_zero
example (ε h t : ℝ) : boundaryFilter ε h t =
    W ((t : ℂ) * Complex.I) / W ((ε : ℂ) + (t : ℂ) * Complex.I) *
      (1 + (h : ℂ) * ((ε : ℂ) + (t : ℂ) * Complex.I))⁻¹ ^ 6 /
        (1 + (ε : ℂ) + (t : ℂ) * Complex.I) := rfl
end
end SourceFilterDeltaLiteral
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0c7ee307a28aee68b09fb09a5977d7961a6fed0fe86f5d08326bc01e78eb3638 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/SourceFilterDeltaLiteralSnippet/Variantb2235d99aa9bf161073f37785b64611d33171fc59bca38ea7712dcedcabab170.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
