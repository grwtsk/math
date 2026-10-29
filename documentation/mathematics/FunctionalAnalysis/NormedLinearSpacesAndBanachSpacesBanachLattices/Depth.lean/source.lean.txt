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
