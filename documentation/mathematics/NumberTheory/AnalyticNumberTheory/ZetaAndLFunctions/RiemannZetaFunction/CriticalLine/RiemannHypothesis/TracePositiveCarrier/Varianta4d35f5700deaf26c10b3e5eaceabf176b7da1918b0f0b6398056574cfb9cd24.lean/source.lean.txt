import FormalResearch.RiemannHypothesis.Conversation.TraceDual

/-!
# A separate positive carrier for complete real trace coordinates

The recorded rational inverse base-changes exactly to the reals and recovers
every real coordinate vector. Squared complete moment coordinates give a
positive carrier. This does not replace the indefinite trace form by a
positive one, identify an external field, or bound any arithmetic source.

Source boundary: audited RH conversation Batches 24–25. Human framework:
grwtsk contributors. Local base-change and consumer proofs: OpenAI Codex.
Matrix base-change and finite square positivity are imported Mathlib laws.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.TracePositiveCarrier

open TraceDual
open scoped BigOperators
noncomputable section

def realGram : Matrix (Fin 6) (Fin 6) ℝ := traceGram.map (algebraMap ℚ ℝ)
def realGramInverse : Matrix (Fin 6) (Fin 6) ℝ := traceGramInverse.map (algebraMap ℚ ℝ)

theorem real_inverse_mul_gram : realGramInverse * realGram = 1 := by
  rw [realGramInverse, realGram, ← Matrix.map_mul, inverse_mul_gram]
  exact Matrix.map_one _ (map_zero _) (map_one _)

theorem real_gram_mul_inverse : realGram * realGramInverse = 1 := by
  rw [realGramInverse, realGram, ← Matrix.map_mul, gram_mul_inverse]
  exact Matrix.map_one _ (map_zero _) (map_one _)

theorem real_trace_dual_recovers_all (v : Fin 6 → ℝ) :
    realGramInverse.mulVec (realGram.mulVec v) = v := by
  rw [Matrix.mulVec_mulVec, real_inverse_mul_gram, Matrix.one_mulVec]

theorem real_trace_moments_injective : Function.Injective realGram.mulVec := by
  intro v w h
  have hh := congrArg realGramInverse.mulVec h
  simpa only [real_trace_dual_recovers_all] using hh

def positiveMomentEnergy (v : Fin 6 → ℝ) : ℝ := ∑ i, (realGram.mulVec v i) ^ 2

theorem positiveMomentEnergy_nonneg (v : Fin 6 → ℝ) : 0 ≤ positiveMomentEnergy v :=
  Finset.sum_nonneg (fun _ _ => sq_nonneg _)

/-- The separate positive carrier has no hidden nonzero coordinate in its kernel. -/
theorem positiveMomentEnergy_eq_zero_iff (v : Fin 6 → ℝ) :
    positiveMomentEnergy v = 0 ↔ v = 0 := by
  constructor
  · intro h
    unfold positiveMomentEnergy at h
    have heach := (Finset.sum_eq_zero_iff_of_nonneg (fun i _ =>
      sq_nonneg (realGram.mulVec v i))).mp h
    have hm : realGram.mulVec v = 0 := by
      funext i
      exact sq_eq_zero_iff.mp (heach i (Finset.mem_univ i))
    have hr := real_trace_dual_recovers_all v
    rw [hm, Matrix.mulVec_zero] at hr
    exact hr.symm
  · rintro rfl
    simp [positiveMomentEnergy, Matrix.mulVec_zero]

theorem positiveMomentEnergy_pos {v : Fin 6 → ℝ} (hv : v ≠ 0) :
    0 < positiveMomentEnergy v := by
  by_contra h
  have he : positiveMomentEnergy v = 0 :=
    le_antisymm (le_of_not_gt h) (positiveMomentEnergy_nonneg v)
  exact hv ((positiveMomentEnergy_eq_zero_iff v).mp he)

end
end GRWTSK.RiemannHypothesis.Conversation.TracePositiveCarrier
