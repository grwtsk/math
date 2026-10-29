import FormalResearch.RiemannHypothesis.ThetaKernel
import FormalResearch.RiemannHypothesis.ThetaTailCalculus

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

open Filter MeasureTheory Set

noncomputable section

/-- Every polynomial and fixed real exponential weight is absorbed by the
literal theta kernel beyond an explicit threshold. -/
theorem thetaPhi_poly_exp_norm_le_tail (m : ℕ) (R : ℝ) {t : ℝ}
    (ht : 11 + |R| ≤ t) :
    ‖thetaPhi t * t ^ m * Real.exp (R * t)‖ ≤
      (thetaPhiDecayConstant * (m.factorial : ℝ)) * Real.exp (-t) := by
  have hT0 : 0 ≤ 11 + |R| := by positivity
  have ht0 : 0 ≤ t := hT0.trans ht
  have hmul : (11 + |R|) * t ≤ t ^ 2 := by
    nlinarith [mul_nonneg (sub_nonneg.mpr ht) ht0]
  have he := Real.quadratic_le_exp_of_nonneg (show 0 ≤ 4 * t by positivity)
  have hsqexp : t ^ 2 ≤ Real.exp (4 * t) := by nlinarith [sq_nonneg t]
  have hpi : 1 ≤ Real.pi / 2 := by nlinarith [Real.pi_gt_three]
  have hdebt : (11 + |R|) * t ≤ (Real.pi / 2) * Real.exp (4 * t) :=
    hmul.trans <| hsqexp.trans (by
      nlinarith [mul_nonneg (sub_nonneg.mpr hpi) (Real.exp_pos (4 * t)).le])
  have hpow : t ^ m ≤ (m.factorial : ℝ) * Real.exp t := by
    have h := Real.pow_div_factorial_le_exp t ht0 m
    have hfac : (0 : ℝ) < m.factorial := by positivity
    nlinarith [(div_le_iff₀ hfac).mp h]
  have hphi : 0 ≤ thetaPhi t := (thetaPhi_positive t ht0).le
  have hC := thetaPhiDecayConstant_positive
  rw [Real.norm_of_nonneg (by positivity)]
  calc
    _ ≤ ((thetaPhiDecayConstant *
        Real.exp (9 * t - (Real.pi / 2) * Real.exp (4 * t))) *
        ((m.factorial : ℝ) * Real.exp t)) * Real.exp (R * t) := by
      apply mul_le_mul_of_nonneg_right _ (Real.exp_pos _).le
      exact mul_le_mul (thetaPhi_le_superexp ht0) hpow (by positivity) (by positivity)
    _ = (thetaPhiDecayConstant * (m.factorial : ℝ)) *
        Real.exp ((10 + R) * t - (Real.pi / 2) * Real.exp (4 * t)) := by
      rw [show (10 + R) * t - (Real.pi / 2) * Real.exp (4 * t) =
        (9 * t - (Real.pi / 2) * Real.exp (4 * t)) + t + R * t by ring]
      rw [Real.exp_add, Real.exp_add]
      ring
    _ ≤ _ := by
      apply mul_le_mul_of_nonneg_left _ (by positivity)
      apply Real.exp_le_exp.mpr
      have hR : R * t ≤ |R| * t := mul_le_mul_of_nonneg_right (le_abs_self R) ht0
      linarith

/-- All literal theta polynomial moments with fixed real exponential weights
are absolutely integrable on the positive half-line. -/
theorem thetaPhi_poly_exp_integrableOn (m : ℕ) (R : ℝ) :
    IntegrableOn (fun t => thetaPhi t * t ^ m * Real.exp (R * t)) (Ioi (0 : ℝ)) := by
  let T : ℝ := 11 + |R|
  have hTpos : 0 < T := by dsimp [T]; positivity
  have hcont : Continuous (fun t => thetaPhi t * t ^ m * Real.exp (R * t)) := by
    exact (continuous_thetaPhi.mul (continuous_id.pow m)).mul (by fun_prop)
  have hinitial :
      IntegrableOn (fun t => thetaPhi t * t ^ m * Real.exp (R * t)) (Ioc (0 : ℝ) T) := by
    rw [← intervalIntegrable_iff_integrableOn_Ioc_of_le hTpos.le]
    exact hcont.intervalIntegrable _ _
  have hmajor : IntegrableOn (fun t : ℝ =>
      (thetaPhiDecayConstant * (m.factorial : ℝ)) * Real.exp (-t)) (Ioi T) :=
    (integrableOn_exp_neg_Ioi T).const_mul _
  have htail :
      IntegrableOn (fun t => thetaPhi t * t ^ m * Real.exp (R * t)) (Ioi T) := by
    refine Integrable.mono' hmajor hcont.aestronglyMeasurable ?_
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact thetaPhi_poly_exp_norm_le_tail m R (le_of_lt ht)
  apply (hinitial.union htail).mono_set
  intro t ht
  by_cases htT : t ≤ T
  · exact Or.inl ⟨ht, htT⟩
  · exact Or.inr (lt_of_not_ge htT)

/-- The pre-existing even-basis moment integrability in the open-half-line
convention used by the actual xi transform. -/
theorem thetaPhi_evenBasis_integrableOn (n : ℕ) :
    IntegrableOn (fun t => thetaPhi t * evenBasis n t) (Ioi (0 : ℝ)) :=
  (thetaPhi_mul_evenBasis_integrable n).mono_set Ioi_subset_Ici_self

end

end FormalResearch.RiemannHypothesis.ThetaPositiveLift
