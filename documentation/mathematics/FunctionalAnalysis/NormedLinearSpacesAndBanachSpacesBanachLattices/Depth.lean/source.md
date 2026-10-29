# Depth — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `663a4b72f533a15712248639b809500d7d3b075c` · SHA-256 `88decc5d2eab7f6f047d9fb06fdf35957aefdebdc72f84cd4bbc4de2fba4fdc5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Attention.Retention
import Mathlib.Analysis.Normed.Module.Basic

/-!
# Normalized depth retrieval

Attention Residuals are represented only by a nonnegative normalized
barycentric family over retained depth sources.
-/

namespace Mathematics.Attention

open scoped BigOperators

structure DepthAttentionWeights (sourceCount : Nat) where
  weight : Fin sourceCount → ℝ
  nonnegative : ∀ source, 0 ≤ weight source
  normalized : ∑ source, weight source = 1

namespace DepthAttentionWeights

variable {Carrier : Type*}
  [NormedAddCommGroup Carrier] [NormedSpace ℝ Carrier]

noncomputable def retrieve
    (weights : DepthAttentionWeights sourceCount)
    (source : Fin sourceCount → Carrier) : Carrier :=
  ∑ index, weights.weight index • source index

theorem norm_retrieve_le
    (weights : DepthAttentionWeights sourceCount)
    (source : Fin sourceCount → Carrier)
    (bound : ℝ)
    (sourceBound : ∀ index, ‖source index‖ ≤ bound) :
    ‖weights.retrieve source‖ ≤ bound := by
  calc
    ‖weights.retrieve source‖
        ≤ ∑ index, ‖weights.weight index • source index‖ :=
      norm_sum_le _ _
    _ = ∑ index, weights.weight index * ‖source index‖ := by
      apply Finset.sum_congr rfl
      intro index _
      rw [norm_smul, Real.norm_eq_abs, abs_of_nonneg
        (weights.nonnegative index)]
    _ ≤ ∑ index, weights.weight index * bound := by
      apply Finset.sum_le_sum
      intro index _
      exact mul_le_mul_of_nonneg_left
        (sourceBound index) (weights.nonnegative index)
    _ = bound := by
      rw [← Finset.sum_mul, weights.normalized, one_mul]

end DepthAttentionWeights

structure DepthAttentionNormalizationCertificate
    (sourceCount : Nat) where
  weights : DepthAttentionWeights sourceCount
  pseudoQueryDigest : String
  retainedSourceDigest : String
  pseudoQueryPresent : pseudoQueryDigest ≠ ""
  retainedSourcesPresent : retainedSourceDigest ≠ ""

end Mathematics.Attention
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=67d70cad39b48dd87d944a65b7171dea0802e259574da8de7935ed72564157c8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Depth/Variant88decc5d2eab7f6f047d9fb06fdf35957aefdebdc72f84cd4bbc4de2fba4fdc5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
