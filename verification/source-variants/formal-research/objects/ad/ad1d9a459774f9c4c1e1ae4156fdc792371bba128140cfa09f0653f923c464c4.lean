import MediumPNTLogError
import Mathlib.MeasureTheory.Integral.IntegralEqImproper

set_option autoImplicit false
noncomputable section
open MeasureTheory Set Filter
open scoped Topology
namespace ContinuousResearch.MediumPNTMoment
open ContinuousResearch.MediumPNTLogError

theorem psiRelativeError_measurable : Measurable psiRelativeError := by
  unfold psiRelativeError
  exact (Real.measurable_exp.comp measurable_neg).mul
    (Chebyshev.psi_mono.measurable.comp Real.measurable_exp) |>.sub measurable_const

/-- Genuine actual Chebyshev elementary bound, at every real logarithmic coordinate. -/
theorem psiRelativeError_bound (t : ℝ) :
    |psiRelativeError t| ≤ Real.log 4 + 5 := by
  have hp := Chebyshev.psi_le_const_mul_self (Real.exp_pos t).le
  have hn : 0 ≤ Real.exp (-t) * Chebyshev.psi (Real.exp t) :=
    mul_nonneg (Real.exp_pos _).le (Chebyshev.psi_nonneg _)
  have hu := mul_le_mul_of_nonneg_left hp (Real.exp_pos (-t)).le
  have he : Real.exp (-t) * ((Real.log 4 + 4) * Real.exp t) = Real.log 4 + 4 := by
    calc
      _ = (Real.log 4 + 4) * (Real.exp (-t) * Real.exp t) := by ring
      _ = _ := by rw [← Real.exp_add]; simp
  rw [he] at hu
  have hl : 0 ≤ Real.log 4 := Real.log_nonneg (by norm_num)
  unfold psiRelativeError
  apply abs_le.mpr
  constructor <;> linarith

private theorem inverse_square_integrable {T : ℝ} (hT : 0 < T) :
    IntegrableOn (fun t : ℝ => 1 / t^2) (Ioi T) := by
  have h := integrableOn_Ioi_rpow_of_lt (a:=(-2:ℝ)) (by norm_num) hT
  convert h using 1
  funext t
  rw [Real.rpow_neg_ofNat]
  simp

/-- Every fixed actual polynomial moment is genuinely absolutely integrable; no centering assumption. -/
theorem psiRelativeError_mul_pow_integrable (n : ℕ) :
    IntegrableOn (fun t : ℝ => t^n * psiRelativeError t) (Ioi (0:ℝ)) := by
  obtain ⟨T, hT, hbound⟩ := psiRelativeError_eventual_inverse_power (n+2)
  have hT0 : 0 < T := by linarith
  have hm : Measurable (fun t : ℝ => t^n * psiRelativeError t) :=
    (measurable_id.pow_const n).mul psiRelativeError_measurable
  have hnear : IntegrableOn (fun t : ℝ => t^n * psiRelativeError t) (Ioc (0:ℝ) T) := by
    refine (integrableOn_const (C:=T^n * (Real.log 4+5))
      (measure_Ioc_lt_top.ne)).mono' hm.aestronglyMeasurable ?_
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht
    rw [Real.norm_eq_abs, abs_mul, abs_of_pos (pow_pos ht.1 n)]
    exact mul_le_mul (pow_le_pow_left₀ ht.1.le ht.2 n) (psiRelativeError_bound t)
      (abs_nonneg _) (pow_nonneg hT0.le n)
  have htail : IntegrableOn (fun t : ℝ => t^n * psiRelativeError t) (Ioi T) := by
    refine (inverse_square_integrable hT0).mono' hm.aestronglyMeasurable ?_
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    have ht0 : 0 < t := hT0.trans ht
    rw [Real.norm_eq_abs, abs_mul, abs_of_pos (pow_pos ht0 n)]
    calc
      _ ≤ t^n * (1 / t^(n+2)) := mul_le_mul_of_nonneg_left
        (hbound t ht.le) (pow_nonneg ht0.le n)
      _ = 1 / t^2 := by rw [pow_add]; field_simp; ring
  have hi := hnear.union htail
  have hs : Ioc (0:ℝ) T ∪ Ioi T = Ioi 0 := by
    ext t
    simp only [mem_union, mem_Ioc, mem_Ioi]
    constructor
    · rintro (h|h)
      · exact h.1
      · exact hT0.trans h
    · intro ht
      by_cases h : t ≤ T
      · exact Or.inl ⟨ht,h⟩
      · exact Or.inr (lt_of_not_ge h)
  simpa only [hs] using hi

/-- Actual unweighted logarithmic Chebyshev relative error is L1. -/
theorem psiRelativeError_integrable : IntegrableOn psiRelativeError (Ioi (0:ℝ)) := by
  simpa using psiRelativeError_mul_pow_integrable 0

/-- The actual first weighted moment is L1, which is enough for the subsequent tail-Tonelli step. -/
theorem psiRelativeError_first_moment_integrable :
    IntegrableOn (fun t : ℝ => t * psiRelativeError t) (Ioi (0:ℝ)) := by
  simpa using psiRelativeError_mul_pow_integrable 1

end ContinuousResearch.MediumPNTMoment
set_option pp.fullNames true
set_option pp.universes true
#check ContinuousResearch.MediumPNTMoment.psiRelativeError_measurable
#print axioms ContinuousResearch.MediumPNTMoment.psiRelativeError_measurable
#print ContinuousResearch.MediumPNTMoment.psiRelativeError_measurable
#check ContinuousResearch.MediumPNTMoment.psiRelativeError_bound
#print axioms ContinuousResearch.MediumPNTMoment.psiRelativeError_bound
#print ContinuousResearch.MediumPNTMoment.psiRelativeError_bound
#check ContinuousResearch.MediumPNTMoment.psiRelativeError_mul_pow_integrable
#print axioms ContinuousResearch.MediumPNTMoment.psiRelativeError_mul_pow_integrable
#print ContinuousResearch.MediumPNTMoment.psiRelativeError_mul_pow_integrable
#check ContinuousResearch.MediumPNTMoment.psiRelativeError_integrable
#print axioms ContinuousResearch.MediumPNTMoment.psiRelativeError_integrable
#print ContinuousResearch.MediumPNTMoment.psiRelativeError_integrable
#check ContinuousResearch.MediumPNTMoment.psiRelativeError_first_moment_integrable
#print axioms ContinuousResearch.MediumPNTMoment.psiRelativeError_first_moment_integrable
#print ContinuousResearch.MediumPNTMoment.psiRelativeError_first_moment_integrable
