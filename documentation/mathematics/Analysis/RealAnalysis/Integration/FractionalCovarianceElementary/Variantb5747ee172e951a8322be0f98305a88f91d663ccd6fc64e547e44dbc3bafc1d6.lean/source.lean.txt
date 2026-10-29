import FormalResearch.RiemannHypothesis.SourceComparison.MobiusEndpointBudget
import FormalResearch.RiemannHypothesis.SourceComparison.FractionalMellin

/-! Genuine fractional-part covariance and exact surviving corrected logarithmic moments. -/
set_option autoImplicit false
namespace FractionalCovarianceElementaryScratch
open MeasureTheory Set Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open MobiusEndpointBudget MobiusPoleNumerator FiniteMobiusController
noncomputable section

private theorem fract_le_of_nonneg (x : ℝ) (hx : 0 ≤ x) : Int.fract x ≤ x := by
  rw [Int.fract]
  exact sub_le_self _ (by exact_mod_cast (Int.floor_nonneg.mpr hx))

/-- The full off-diagonal fractional-part Gram integral is genuinely integrable at both ends. -/
theorem fractional_product_integrable (d e : ℝ) (hd : 0 < d) (he : 0 < e) :
    IntegrableOn (fun x : ℝ => Int.fract (x / d) * Int.fract (x / e) / x ^ 2)
      (Ioi (0 : ℝ)) := by
  have hm : Measurable (fun x : ℝ => Int.fract (x / d) * Int.fract (x / e) / x ^ 2) := by
    fun_prop
  have hnear : IntegrableOn (fun x : ℝ => Int.fract (x / d) * Int.fract (x / e) / x ^ 2)
      (Ioc (0 : ℝ) 1) := by
    have hc : IntegrableOn (fun _x : ℝ => 1 / (d * e)) (Ioc (0 : ℝ) 1) :=
      (continuousOn_const.integrableOn_Icc).mono_set Ioc_subset_Icc_self
    apply hc.mono' hm.aestronglyMeasurable
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with x hx
    rw [Real.norm_eq_abs, abs_of_nonneg (by positivity)]
    calc
      _ ≤ (x / d) * (x / e) / x ^ 2 := by
        apply div_le_div_of_nonneg_right _ (sq_nonneg x)
        exact mul_le_mul (fract_le_of_nonneg _ (div_nonneg hx.1.le hd.le))
          (fract_le_of_nonneg _ (div_nonneg hx.1.le he.le))
          (Int.fract_nonneg _) (div_nonneg hx.1.le hd.le)
      _ = _ := by field_simp [hx.1.ne', hd.ne', he.ne']
  have htail : IntegrableOn (fun x : ℝ => Int.fract (x / d) * Int.fract (x / e) / x ^ 2)
      (Ioi (1 : ℝ)) := by
    have hp : IntegrableOn (fun x : ℝ => 1 / x ^ 2) (Ioi (1 : ℝ)) := by
      convert (integrableOn_Ioi_rpow_of_lt (by norm_num : (-2 : ℝ) < -1) zero_lt_one) using 1
      ext x
      norm_num [Real.rpow_neg]
    apply hp.mono' hm.aestronglyMeasurable
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with x hx
    rw [Real.norm_eq_abs, abs_of_nonneg (by positivity)]
    apply div_le_div_of_nonneg_right _ (sq_nonneg x)
    exact (mul_le_mul (Int.fract_lt_one _).le (Int.fract_lt_one _).le
      (Int.fract_nonneg _) zero_le_one).trans_eq (by norm_num)
  rw [← Ioc_union_Ioi_eq_Ioi (show (0 : ℝ) ≤ 1 by norm_num)]
  exact hnear.union htail

/-- The actual off-diagonal covariance retains its exact positive scaling and rational ratio. -/
theorem fractional_product_rescale (d e : ℝ) (hd : 0 < d) (_he : 0 < e) :
    (∫ x : ℝ in Ioi (0 : ℝ), Int.fract (x / d) * Int.fract (x / e) / x ^ 2) =
      d⁻¹ * ∫ y : ℝ in Ioi (0 : ℝ), Int.fract y * Int.fract ((d / e) * y) / y ^ 2 := by
  have hi := integral_comp_mul_left_Ioi'
    (fun x : ℝ => Int.fract (x / d) * Int.fract (x / e) / x ^ 2) 0 hd
  simp only [mul_zero, smul_eq_mul] at hi
  have hf (y : ℝ) : Int.fract (d * y / d) * Int.fract (d * y / e) / (d * y) ^ 2 =
      d⁻¹ ^ 2 * (Int.fract y * Int.fract ((d / e) * y) / y ^ 2) := by
    rw [mul_div_cancel_left₀ y hd.ne', show d * y / e = d / e * y by ring]
    ring
  simp_rw [hf] at hi
  rw [integral_const_mul] at hi
  rw [← hi]
  field_simp

/-- The actual undamped endpoint kills its reciprocal moment exactly. -/
theorem corrected_reciprocal_moment_zero (X : ℕ) (hX : 1 ≤ X) :
    (∑ d ∈ Icc 1 X, dampedCoefficient X 0 d / (d : ℝ)) = 0 := by
  simp only [dampedCoefficient, neg_zero, zero_mul, Real.exp_zero, mul_one]
  simp_rw [sub_div, ite_div, zero_div]
  rw [sum_sub_distrib]
  simp [mobiusReciprocalSum, hX, (show (X : ℝ) ≠ 0 by exact_mod_cast (show X ≠ 0 by omega))]

/-- The logarithmic reciprocal moment survives with the signed source normalization. -/
theorem corrected_log_reciprocal_moment (X : ℕ) (hX : 1 ≤ X) :
    (∑ d ∈ Icc 1 X, dampedCoefficient X 0 d / (d : ℝ) * Real.log (d : ℝ)) =
      -logNormalization X := by
  have hs : (∑ d ∈ Icc 1 X, dampedCoefficient X 0 d / (d : ℝ) * Real.log (d : ℝ)) =
      (∑ d ∈ Icc 1 X, (ArithmeticFunction.moebius d : ℝ) / (d : ℝ) * Real.log (d : ℝ)) -
        mobiusReciprocalSum X * Real.log (X : ℝ) := by
    simp only [dampedCoefficient, neg_zero, zero_mul, Real.exp_zero, mul_one]
    simp_rw [sub_div, sub_mul, ite_div, ite_mul, zero_div, zero_mul]
    rw [sum_sub_distrib]
    simp [hX, (show (X : ℝ) ≠ 0 by exact_mod_cast (show X ≠ 0 by omega))]
  rw [hs]
  apply Complex.ofReal_injective
  have he := logNormalization_eq X hX
  simp only [Complex.ofReal_sub, Complex.ofReal_sum, Complex.ofReal_mul,
    Complex.ofReal_div, Complex.ofReal_natCast, Complex.ofReal_intCast, Complex.ofReal_neg]
  linear_combination he

/-- The full coefficient mass retains the original Mertens-prefix endpoint. -/
theorem corrected_total_mass (X : ℕ) (hX : 1 ≤ X) :
    (∑ d ∈ Icc 1 X, dampedCoefficient X 0 d) =
      (∑ d ∈ Icc 1 X, (ArithmeticFunction.moebius d : ℝ)) -
        (X : ℝ) * mobiusReciprocalSum X := by
  simp only [dampedCoefficient, neg_zero, zero_mul, Real.exp_zero, mul_one]
  rw [sum_sub_distrib]
  simp [hX]

private theorem low_rank_sum (S : Finset ℕ) (c u l : ℕ → ℝ) (C : ℝ) :
    (∑ d ∈ S, ∑ e ∈ S, c d * c e *
      (C / 2 * (u d + u e) + (u d - u e) * (l d - l e) / 2)) =
      C * (∑ d ∈ S, c d) * (∑ d ∈ S, c d * u d) +
      (∑ d ∈ S, c d) * (∑ d ∈ S, c d * u d * l d) -
      (∑ d ∈ S, c d * u d) * (∑ d ∈ S, c d * l d) := by
  have ht (d e : ℕ) : c d * c e *
      (C / 2 * (u d + u e) + (u d - u e) * (l d - l e) / 2) =
      C / 2 * (c d * u d) * c e + C / 2 * c d * (c e * u e) +
      (c d * u d * l d) / 2 * c e - (c d * u d) / 2 * (c e * l e) -
      (c d * l d) / 2 * (c e * u e) + c d / 2 * (c e * u e * l e) := by ring
  have hp (f g : ℕ → ℝ) : (∑ d ∈ S, ∑ e ∈ S, f d * g e) =
      (∑ d ∈ S, f d) * (∑ e ∈ S, g e) := by
    simp only [mul_sum, sum_mul]
    exact sum_comm
  simp only [ht, sum_add_distrib, sum_sub_distrib]
  simp only [hp]
  simp only [← mul_sum, ← sum_div]
  ring

/-- The exact undamped endpoint does not remove the surviving elementary covariance. -/
theorem corrected_elementary_covariance (X : ℕ) (hX : 1 ≤ X) (C : ℝ) :
    (∑ d ∈ Icc 1 X, ∑ e ∈ Icc 1 X, dampedCoefficient X 0 d * dampedCoefficient X 0 e *
      (C / 2 * ((d : ℝ)⁻¹ + (e : ℝ)⁻¹) +
        ((d : ℝ)⁻¹ - (e : ℝ)⁻¹) * (Real.log (d : ℝ) - Real.log (e : ℝ)) / 2)) =
      -((∑ d ∈ Icc 1 X, (ArithmeticFunction.moebius d : ℝ)) -
        (X : ℝ) * mobiusReciprocalSum X) * logNormalization X := by
  rw [low_rank_sum]
  simp only [← div_eq_mul_inv, corrected_reciprocal_moment_zero X hX,
    corrected_log_reciprocal_moment X hX, corrected_total_mass X hX]
  ring

end
end FractionalCovarianceElementaryScratch
