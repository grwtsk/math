import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity
import Mathlib.Analysis.Complex.ExponentialBounds

/-!
# A literal positive mixed reflection kernel at scale two

This computes the unchanged normalized source, including its derivative, fixed
normalization and zero extension. It identifies the endpoint support region
needed for the actual Mangoldt/centered-Möbius mixed-block obstruction.

Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceDivisorLatticeKernel
open MeasureTheory Set
open SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

/-- At the actual scale two the interior polynomial has this exact factored form. -/
theorem normalizedInterior_two_factor (x : ℝ) :
    normalizedInterior 2 x =
      ((1 - (x / 2)^2)^2 * (56 * (x / 2)^2 - 8 - (1 - (x / 2)^2)^2)) /
        (4 * Real.sqrt 2 * Real.sqrt (sourceNormalization 2)) := by
  unfold normalizedInterior secondInterior bumpInterior
  ring

/-- The unchanged zero-extended test is nonnegative in either endpoint strip. -/
theorem normalizedTest_two_nonneg {x : ℝ} (hx : 1 ≤ |x|) :
    0 ≤ normalizedTest explicitSecondDerivative 2 x := by
  rw [normalizedTest_eq_indicator 2 (by norm_num)]
  by_cases hm : x ∈ Icc (-2 : ℝ) 2
  · rw [indicator_of_mem hm, normalizedInterior_two_factor]
    have ha : |x| ≤ 2 := abs_le.mpr hm
    have hsq : 1 / 4 ≤ (x / 2)^2 ∧ (x / 2)^2 ≤ 1 := by
      constructor <;> nlinarith [sq_abs x, sq_nonneg (|x| - 1), sq_nonneg (2 - |x|)]
    have hz : 0 ≤ 1 - (x / 2)^2 ∧ 1 - (x / 2)^2 ≤ 3 / 4 := by
      constructor <;> linarith
    have hz2 : (1 - (x / 2)^2)^2 ≤ 9 / 16 := by
      nlinarith [sq_nonneg (1 - (x / 2)^2), sq_nonneg (3 / 4 - (1 - (x / 2)^2))]
    have hb : 0 ≤ 56 * (x / 2)^2 - 8 - (1 - (x / 2)^2)^2 := by linarith
    exact div_nonneg (mul_nonneg (sq_nonneg _) hb) (by positivity)
  · rw [indicator_of_notMem hm]

/-- Strict positivity holds within the endpoint strips, before the closed endpoint. -/
theorem normalizedTest_two_pos {x : ℝ} (hx : 1 ≤ |x|) (hx2 : |x| < 2) :
    0 < normalizedTest explicitSecondDerivative 2 x := by
  rw [normalizedTest_eq_indicator 2 (by norm_num), indicator_of_mem (show x ∈ Icc (-2 : ℝ) 2 from abs_le.mp hx2.le),
    normalizedInterior_two_factor]
  have hsq : 1 / 4 ≤ (x / 2)^2 ∧ (x / 2)^2 < 1 := by
    constructor <;> nlinarith [sq_abs x, sq_nonneg (|x| - 1), sq_nonneg (2 - |x|)]
  have hz : 0 < 1 - (x / 2)^2 ∧ 1 - (x / 2)^2 ≤ 3 / 4 := by
    constructor <;> linarith
  have hz2 : (1 - (x / 2)^2)^2 ≤ 9 / 16 := by
    nlinarith [sq_nonneg (1 - (x / 2)^2), sq_nonneg (3 / 4 - (1 - (x / 2)^2))]
  have hb : 0 < 56 * (x / 2)^2 - 8 - (1 - (x / 2)^2)^2 := by linarith
  exact div_pos (mul_pos (sq_pos_of_pos hz.1) hb)
    (mul_pos (mul_pos (by norm_num) (Real.sqrt_pos.mpr (by norm_num)))
      (Real.sqrt_pos.mpr (source_normalization_pos 2 (by norm_num))))

/-- The literal source correlation is positive for sum-log shifts in this endpoint band. -/
theorem sourceCorrelation_two_pos {t : ℝ} (ht : 3 ≤ t) (ht4 : t < 4) :
    0 < sourceCorrelation explicitSecondDerivative 2 t := by
  let f : ℝ → ℝ := fun x => normalizedTest explicitSecondDerivative 2 x *
    normalizedTest explicitSecondDerivative 2 (x - t)
  have hcq := (normalizedTest_contDiff 2 (by norm_num)).continuous
  have hc : Continuous f := hcq.mul (hcq.comp (continuous_id.sub continuous_const))
  have hs : HasCompactSupport f := (normalizedTest_hasCompactSupport 2 (by norm_num)).mul_right
  have hp : 0 ≤ f := by
    intro x
    by_cases hx : 2 ≤ |x|
    · simp [f, normalizedTest_zero_of_le_abs 2 x (by norm_num) hx]
    by_cases hxt : 2 ≤ |x - t|
    · simp [f, normalizedTest_zero_of_le_abs 2 (x - t) (by norm_num) hxt]
    have hx2 : |x| < 2 := lt_of_not_ge hx
    have hxt2 : |x - t| < 2 := lt_of_not_ge hxt
    have hx1 : 1 ≤ |x| := by
      have h := (abs_lt.mp hxt2).1
      exact (by linarith : 1 ≤ x).trans (le_abs_self x)
    have hxt1 : 1 ≤ |x - t| := by
      have h := (abs_lt.mp hx2).2
      have hn : x - t ≤ -1 := by linarith
      rw [abs_of_nonpos (by linarith : x - t ≤ 0)]
      linarith
    exact mul_nonneg (normalizedTest_two_nonneg hx1) (normalizedTest_two_nonneg hxt1)
  have hf0 : f (t / 2) ≠ 0 := by
    have htm : 1 ≤ |t / 2| := by rw [abs_of_nonneg (by linarith)]; linarith
    have htp : |t / 2| < 2 := by rw [abs_of_nonneg (by linarith)]; linarith
    have hnm : 1 ≤ |t / 2 - t| := by rw [abs_of_nonpos (by linarith)]; linarith
    have hnp : |t / 2 - t| < 2 := by rw [abs_of_nonpos (by linarith)]; linarith
    exact (mul_pos (normalizedTest_two_pos htm htp) (normalizedTest_two_pos hnm hnp)).ne'
  exact hc.integral_pos_of_hasCompactSupport_nonneg_nonzero hs hp hf0

/-- Exact elementary bounds put the product of the actual atoms 5 and 7 in that band. -/
theorem log_thirtyfive_bounds : 3 < Real.log 35 ∧ Real.log 35 < 4 := by
  constructor
  · apply (Real.lt_log_iff_exp_lt (by norm_num)).mpr
    have he : Real.exp 3 = (Real.exp 1)^3 := by
      convert Real.exp_nat_mul 1 3 using 1 <;> norm_num
    rw [he]
    have hpow : (Real.exp 1)^3 < (3 : ℝ)^3 := by
      gcongr
      exact Real.exp_one_lt_three
    norm_num at hpow
    linarith
  · apply (Real.log_lt_iff_lt_exp (by norm_num)).mpr
    have he : Real.exp 4 = (Real.exp 1)^4 := by
      convert Real.exp_nat_mul 1 4 using 1 <;> norm_num
    rw [he]
    have h : (5 / 2 : ℝ) < Real.exp 1 := lt_trans (by norm_num) Real.exp_one_gt_d9
    have hpow : (5 / 2 : ℝ)^4 < (Real.exp 1)^4 := by gcongr
    norm_num at hpow
    linarith

/-- The physical reflected kernel between indices 5 and 7 is strictly positive. -/
theorem actual_five_seven_kernel_pos :
    0 < sourceCorrelation explicitSecondDerivative 2 (Real.log (5 : ℝ) + Real.log 7) := by
  rw [← Real.log_mul (by norm_num : (5 : ℝ) ≠ 0) (by norm_num : (7 : ℝ) ≠ 0)]
  norm_num only [show (5 : ℝ) * 7 = 35 by norm_num]
  exact sourceCorrelation_two_pos log_thirtyfive_bounds.1.le log_thirtyfive_bounds.2

/-- The actual prime-power product 5·8 has the same strictly positive source kernel. -/
theorem log_forty_bounds : 3 < Real.log 40 ∧ Real.log 40 < 4 := by
  constructor
  · exact log_thirtyfive_bounds.1.trans (Real.log_lt_log (by norm_num) (by norm_num))
  · apply (Real.log_lt_iff_lt_exp (by norm_num)).mpr
    have he : Real.exp 4 = (Real.exp 1)^4 := by
      convert Real.exp_nat_mul 1 4 using 1 <;> norm_num
    rw [he]
    have h : (8 / 3 : ℝ) < Real.exp 1 := lt_trans (by norm_num) Real.exp_one_gt_d9
    have hpow : (8 / 3 : ℝ)^4 < (Real.exp 1)^4 := by gcongr
    norm_num at hpow
    linarith

/-- This mixed pair retains the higher prime power 8 and both physical log shifts. -/
theorem actual_five_eight_kernel_pos :
    0 < sourceCorrelation explicitSecondDerivative 2 (Real.log (5 : ℝ) + Real.log 8) := by
  rw [← Real.log_mul (by norm_num : (5 : ℝ) ≠ 0) (by norm_num : (8 : ℝ) ≠ 0)]
  norm_num only [show (5 : ℝ) * 8 = 40 by norm_num]
  exact sourceCorrelation_two_pos log_forty_bounds.1.le log_forty_bounds.2

end FormalResearch.RiemannHypothesis.SourceDivisorLatticeKernel
