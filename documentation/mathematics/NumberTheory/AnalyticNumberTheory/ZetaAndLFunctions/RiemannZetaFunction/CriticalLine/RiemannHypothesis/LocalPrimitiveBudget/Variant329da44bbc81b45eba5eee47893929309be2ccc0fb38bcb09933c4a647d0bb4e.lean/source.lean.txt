import «scratch».«continuous-research-01a109fc».pass7.primitive_review.ActualCriticalPrimitive
import «scratch».«continuous-research-01a109fc».pass7.primitive_closed_form.ExactCriticalPrimitive

/-! A finite-interval consumer for #321. The original frozen packet is unchanged.
No global primitive budget is inferred from a finite interval. -/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.Research.LocalPrimitiveBudget

open MeasureTheory Set
open scoped Interval
open ActualCriticalPrimitive
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual
open FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel

noncomputable section

/-- The separately reviewed finite arithmetic formula and the AC/IBP packet
use exactly the same independently defined actual primitive. -/
theorem actual_primitive_dictionary (t : ℝ) :
    criticalPrimitive t = ContinuousResearch.ExactCriticalPrimitive.primitive t := rfl

theorem actual_local_primitive_work_bound (M : ℝ) (hM : 0 ≤ M)
    (A : ℝ) (hA : 1 ≤ A)
    (hF : ∀ t : ℝ, t ∈ Icc 0 (2 * A) → |criticalPrimitive t| ≤ M) :
    |∫ t in 0..2 * A, criticalPrimitive t * deriv (criticalKernel A) t| ≤
      M * (130 / (3 * A) + Real.sqrt (65 / 3 : ℝ)) := by
  have hp : 0 < A := by linarith
  have hpoint (t : ℝ) (ht : t ∈ Ι (0 : ℝ) (2 * A)) :
      ‖criticalPrimitive t * deriv (criticalKernel A) t‖ ≤
        M * (65 / (3 * A ^ 2) + Real.sqrt (65 / 3 : ℝ) / (2 * A)) := by
    rw [Real.norm_eq_abs, abs_mul]
    have ht' : t ∈ Icc 0 (2 * A) := by
      exact (uIcc_of_le (by linarith : (0 : ℝ) ≤ 2 * A)) ▸ (uIoc_subset_uIcc ht)
    exact mul_le_mul (hF t ht') (criticalKernel_deriv_abs_le A t hA) (abs_nonneg _) hM
  have hb := intervalIntegral.norm_integral_le_of_norm_le_const hpoint
  simp only [Real.norm_eq_abs, sub_zero, abs_of_pos (by positivity : 0 < 2 * A)] at hb
  convert hb using 1
  field_simp
  ring

theorem actual_local_residual_upper (M : ℝ) (hM : 0 ≤ M)
    (A : ℝ) (hA : 1 ≤ A)
    (hF : ∀ t : ℝ, t ∈ Icc 0 (2 * A) → |criticalPrimitive t| ≤ M) :
    mertensResidual A ≤ 2 - Real.eulerMascheroniConstant +
      M * (130 / (3 * A) + Real.sqrt (65 / 3 : ℝ)) := by
  rw [actual_residual_primitive_reconstruction A hA]
  have hw := (abs_le.mp (actual_local_primitive_work_bound M hM A hA hF)).2
  have hc := (abs_le.mp (criticalContinuousMoment_abs_le_two A hA)).2
  linarith

theorem actual_local_gap_upper (M : ℝ) (hM : 0 ≤ M)
    (A : ℝ) (hA : 1 ≤ A)
    (hF : ∀ t : ℝ, t ∈ Icc 0 (2 * A) → |criticalPrimitive t| ≤ M)
    (G a0 : ℝ) (hG : a0 ≤ G) :
    2 * mertensResidual A - G ≤
      4 - 2 * Real.eulerMascheroniConstant - a0 +
        2 * M * (130 / 3 + Real.sqrt (65 / 3 : ℝ)) := by
  have hr := actual_local_residual_upper M hM A hA hF
  have hrat : 130 / (3 * A) ≤ (130 / 3 : ℝ) := by
    apply (div_le_iff₀ (by positivity : 0 < 3 * A)).2
    nlinarith
  have hb := mul_le_mul_of_nonneg_left (add_le_add_right hrat (Real.sqrt (65 / 3 : ℝ))) hM
  linarith

/-- Every real A in [1,20] uses only the supplied actual primitive bound on
[0,40]. Height verification, correction input and numeric comparison remain
explicit hypotheses, rather than an inferred global budget. -/
theorem actual_finite_gap_lt_thirty_four
    (hF : ∀ t : ℝ, t ∈ Icc 0 40 → |criticalPrimitive t| ≤ (266 / 1000 : ℝ))
    (G : ℝ → ℝ) (a0 : ℝ)
    (hG : ∀ A : ℝ, A ∈ Icc 1 20 → a0 ≤ G A)
    (hnum : 4 - 2 * Real.eulerMascheroniConstant - a0 +
      2 * (266 / 1000 : ℝ) * (130 / 3 + Real.sqrt (65 / 3 : ℝ)) < 34) :
    ∀ A : ℝ, A ∈ Icc 1 20 → 2 * mertensResidual A - G A < 34 := by
  intro A hA
  have hlocal : ∀ t : ℝ, t ∈ Icc 0 (2 * A) → |criticalPrimitive t| ≤ (266 / 1000 : ℝ) := by
    intro t ht
    exact hF t ⟨ht.1, by linarith [ht.2, hA.2]⟩
  exact (actual_local_gap_upper (266 / 1000) (by norm_num) A hA.1 hlocal (G A) a0
    (hG A hA)).trans_lt hnum

end
end FormalResearch.RiemannHypothesis.Research.LocalPrimitiveBudget

#check FormalResearch.RiemannHypothesis.Research.LocalPrimitiveBudget.actual_local_primitive_work_bound
#check FormalResearch.RiemannHypothesis.Research.LocalPrimitiveBudget.actual_primitive_dictionary
#print axioms FormalResearch.RiemannHypothesis.Research.LocalPrimitiveBudget.actual_primitive_dictionary
#print axioms FormalResearch.RiemannHypothesis.Research.LocalPrimitiveBudget.actual_local_primitive_work_bound
#check FormalResearch.RiemannHypothesis.Research.LocalPrimitiveBudget.actual_local_residual_upper
#print axioms FormalResearch.RiemannHypothesis.Research.LocalPrimitiveBudget.actual_local_residual_upper
#check FormalResearch.RiemannHypothesis.Research.LocalPrimitiveBudget.actual_local_gap_upper
#print axioms FormalResearch.RiemannHypothesis.Research.LocalPrimitiveBudget.actual_local_gap_upper
#check FormalResearch.RiemannHypothesis.Research.LocalPrimitiveBudget.actual_finite_gap_lt_thirty_four
#print axioms FormalResearch.RiemannHypothesis.Research.LocalPrimitiveBudget.actual_finite_gap_lt_thirty_four
