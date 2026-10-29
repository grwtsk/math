# Half Cutoff Tail Statement Snippet — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bb440ca86fcf93c7a097d32213a29c416c6e27a1` · SHA-256 `f2dfed113d60b76bf3abc02e410b698be7b5d38e2434c2d9331d00b92ccace21`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace HalfCutoffTailStatementChecks

open Finset
open FormalResearch.RiemannHypothesis.SourceComparison

noncomputable section

example (Y G : ℕ) (hYG : Y ≤ G) (hhalf : G / 2 ≤ Y) :
    (∑ g ∈ Ioc Y G, 1 / (g : ℝ)) ≤ 1 := by
  exact HalfCutoffTailScratch.reciprocal_half_cutoff_tail_le Y G hYG hhalf

example (h g : ℕ) :
    Real.sqrt ((h*g^2 : ℕ) : ℝ) = Real.sqrt (h : ℝ) * (g : ℝ) := by
  exact HalfCutoffTailScratch.sqrt_square_scale h g

example (A : ℝ) (h Y G : ℕ)
    (hA : 1 ≤ A) (hh : 1 ≤ h) (hYG : Y ≤ G) (hhalf : G / 2 ≤ Y) :
    |∑ g ∈ Ioc Y G, ThetaRemainder.thetaRemainder A (h*g^2)| ≤
      ThetaKernelEstimate.kernelBound A / Real.sqrt (h : ℝ) := by
  exact HalfCutoffTailScratch.thetaRemainder_half_cutoff_tail_abs_le A h Y G hA hh hYG hhalf

end
end HalfCutoffTailStatementChecks
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fc50e0755c0f42a12f34633c8c442433f1734547d60aacbb6e5bc8727c8fdf6c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/HalfCutoffTailStatementSnippet/Variantf2dfed113d60b76bf3abc02e410b698be7b5d38e2434c2d9331d00b92ccace21.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
