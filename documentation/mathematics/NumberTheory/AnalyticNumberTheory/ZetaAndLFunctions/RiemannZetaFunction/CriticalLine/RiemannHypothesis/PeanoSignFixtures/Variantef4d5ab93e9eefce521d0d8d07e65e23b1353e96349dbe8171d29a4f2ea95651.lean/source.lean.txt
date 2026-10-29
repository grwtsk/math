import SourceCorrelationSignChange
import FormalResearch.RiemannHypothesis.SourcePeanoProfileTransport

set_option autoImplicit false
noncomputable section
open Set
open FormalResearch.RiemannHypothesis.SourceCorrelationSignChange
open FormalResearch.RiemannHypothesis.SourcePositivePeanoPrimitive
open FormalResearch.RiemannHypothesis.SourcePeanoProfileTransport
open FormalResearch.RiemannHypothesis.SourceMangoldtInteraction

/-- At one exact certified scale, positivity of the primitive coexists with negative curvature. -/
theorem peano_five_nonnegative_with_negative_curvature :
    (∀ t : ℝ, t ∈ Icc 0 10 → 0 ≤ sourcePeanoPrimitive 5 t) ∧
    ∃ t : ℝ, 0 < t ∧ t < 10 ∧
      deriv (deriv (sourcePeanoPrimitive 5)) t < 0 := by
  constructor
  · intro t ht
    exact sourcePeanoPrimitive_nonneg (by norm_num) (by norm_num) ht.1
      (by simpa only [show (2 : ℝ) * 5 = 10 by norm_num] using ht.2)
  · obtain ⟨t, ht0, ht10, htneg⟩ :=
      sourceCorrelation_exists_neg_in_half_support (A := 5) (by norm_num)
    refine ⟨t, ht0, by linarith, ?_⟩
    rw [sourcePeanoPrimitive_second_deriv (by norm_num)]
    exact mul_neg_of_pos_of_neg (Real.exp_pos _) htneg

/-- The same actual primitive has positive center curvature, so neither curvature sign is global. -/
theorem peano_five_curvature_at_zero :
    deriv (deriv (sourcePeanoPrimitive 5)) 0 = 1 := by
  rw [sourcePeanoPrimitive_second_deriv (by norm_num)]
  simp [sourceCorrelation_zero (by norm_num : (0 : ℝ) < 5)]

#print axioms peano_five_nonnegative_with_negative_curvature
#print axioms peano_five_curvature_at_zero
