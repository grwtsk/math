import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTwoMomentSamplingBound

/-!
# Uniform bounds for the actual source correlation derivative and Möbius kernel

The source's polynomial derivatives give an exact derivative energy.  Comparing
its three positive coefficients with the unchanged normalization proves the
all-real-scale bound `|C_A'| ≤ 5 / A`. This discharges the profile bounds in the
existing two-moment sampling theorem for the actual source.

These are analytic kernel estimates. They do not bound the complete signed
Mertens residual, its endpoint contribution, or assert RH.
-/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateActualSourceKernelBound

open MeasureTheory Set
open scoped Convolution
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization CorrelationRegularity BridgeNormalization
open EstimateSourceMobiusKernel EstimateMomentReflection EstimateLogSampling
open EstimateTwoMomentSampling EstimateTwoMomentSamplingBound

noncomputable section

/-- First derivative of the unit-scale polynomial bump `(1-x²)^4`. -/
def unitFirst (x : ℝ) : ℝ := -8*x + 24*x^3 - 24*x^5 + 8*x^7

/-- Third derivative of the same unit-scale bump, before scale normalization. -/
def unitThird (x : ℝ) : ℝ := 144*x - 480*x^3 + 336*x^5

theorem unitFirst_square_integral :
    (∫ x : ℝ in (-1)..1, unitFirst x ^ 2) = (131072 / 45045 : ℝ) := by
  have expand : (fun x : ℝ ↦ unitFirst x ^ 2) =
      (fun x ↦ 64*x^2 - 384*x^4 + 960*x^6 - 1280*x^8 +
        960*x^10 - 384*x^12 + 64*x^14) := by
    funext x
    dsimp [unitFirst]
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_sub,
      intervalIntegral.integral_const_mul, integral_pow]
  norm_num

theorem unitThird_square_integral :
    (∫ x : ℝ in (-1)..1, unitThird x ^ 2) = (65536 / 77 : ℝ) := by
  have expand : (fun x : ℝ ↦ unitThird x ^ 2) =
      (fun x ↦ 20736*x^2 - 138240*x^4 + 327168*x^6 -
        322560*x^8 + 112896*x^10) := by
    funext x
    dsimp [unitThird]
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_sub,
      intervalIntegral.integral_const_mul, integral_pow]
  norm_num

theorem unitThird_mul_first_integral :
    (∫ x : ℝ in (-1)..1, unitThird x * unitFirst x) =
      -(196608 / 5005 : ℝ) := by
  have expand : (fun x : ℝ ↦ unitThird x * unitFirst x) =
      (fun x ↦ -1152*x^2 + 7296*x^4 - 17664*x^6 +
        20736*x^8 - 11904*x^10 + 2688*x^12) := by
    funext x
    dsimp [unitThird, unitFirst]
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_sub,
      intervalIntegral.integral_const_mul, integral_pow]
  norm_num

/-- Exact energy numerator, before division by the source normalization. -/
def derivativeEnergyNumerator (A : ℝ) : ℝ :=
  (65536 / 77 : ℝ) / A^6 +
    (196608 / 5005 : ℝ) / (2*A^4) +
    (131072 / 45045 : ℝ) / (16*A^2)

theorem unit_derivative_square_integral (A : ℝ) :
    (∫ x : ℝ in (-1)..1, (unitThird x / A^3 - unitFirst x / (4*A))^2) =
      derivativeEnergyNumerator A := by
  have expand : (fun x : ℝ ↦ (unitThird x / A^3 - unitFirst x / (4*A))^2) =
      (fun x ↦ unitThird x^2 / A^6 -
        (unitThird x * unitFirst x) / (2*A^4) + unitFirst x^2 / (16*A^2)) := by
    funext x
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; dsimp [unitThird, unitFirst]; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_sub]
  simp only [intervalIntegral.integral_div, unitThird_square_integral,
    unitThird_mul_first_integral, unitFirst_square_integral, derivativeEnergyNumerator]
  ring

theorem normalizedTest_deriv_eq_indicator (A : ℝ) (hA : 0 < A) :
    deriv (normalizedTest explicitSecondDerivative A) =
      (Icc (-A) A).indicator (normalizedInteriorDerivative A) := by
  rw [normalizedTest_eq_indicator A hA]
  exact funext fun x ↦
    (indicator_hasDerivAt (normalizedInterior_hasDerivAt A)
      (normalizedInterior_frontier A hA) x).deriv

theorem normalized_derivative_square_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun x ↦ deriv (normalizedTest explicitSecondDerivative A) x ^ 2) := by
  have hAp : 0 < A := by linarith
  have hc := (normalizedTest_contDiff A hAp).continuous_deriv (by norm_num)
  have hs := (normalizedTest_hasCompactSupport A hAp).deriv
  exact (hc.pow 2).integrable_of_hasCompactSupport (by
    simpa only [pow_two] using hs.mul_right
      (f' := deriv (normalizedTest explicitSecondDerivative A)))

/-- Exact energy for the ordinary derivative, including the endpoint-matched zero extension. -/
theorem normalized_derivative_square_integral (A : ℝ) (hA : 1 ≤ A) :
    (∫ x, deriv (normalizedTest explicitSecondDerivative A) x ^ 2) =
      derivativeEnergyNumerator A / sourceNormalization A := by
  have hAp : 0 < A := by linarith
  have hAn : A ≠ 0 := hAp.ne'
  have hZ : 0 < sourceNormalization A := source_normalization_pos A hA
  have heq : (fun x ↦ deriv (normalizedTest explicitSecondDerivative A) x ^ 2) =
      (Icc (-A) A).indicator (fun x ↦ normalizedInteriorDerivative A x ^ 2) := by
    rw [normalizedTest_deriv_eq_indicator A hAp]
    funext x
    simp only [indicator_apply]
    split_ifs <;> simp
  have hscale (x : ℝ) : normalizedInteriorDerivative A x ^ 2 =
      ((unitThird (x/A) / A^3 - unitFirst (x/A) / (4*A))^2 / A) /
        sourceNormalization A := by
    have hf : normalizedInteriorDerivative A x =
        ((unitThird (x/A) / A^3 - unitFirst (x/A) / (4*A)) / Real.sqrt A) /
          Real.sqrt (sourceNormalization A) := by
      dsimp [normalizedInteriorDerivative, thirdInterior, firstInterior, unitThird, unitFirst]
      simp only [div_eq_mul_inv, mul_inv_rev]
      ring
    rw [hf, div_pow, div_pow, Real.sq_sqrt hAp.le, Real.sq_sqrt hZ.le]
  rw [heq, zeroExtension_integral _ (-A) A (by linarith)]
  simp_rw [hscale]
  rw [intervalIntegral.integral_div, intervalIntegral.integral_div,
    intervalIntegral.integral_comp_div
      (fun x ↦ (unitThird x / A^3 - unitFirst x / (4*A))^2) hAn]
  simp only [neg_div, div_self hAn, smul_eq_mul, unit_derivative_square_integral]
  rw [mul_div_cancel_left₀ _ hAn]

/-- Coefficientwise comparison proves derivative energy decay uniformly for all real scales. -/
theorem normalized_derivative_energy_le (A : ℝ) (hA : 1 ≤ A) :
    (∫ x, deriv (normalizedTest explicitSecondDerivative A) x ^ 2) ≤ 25 / A^2 := by
  rw [normalized_derivative_square_integral A hA]
  have hAp : 0 < A := by linarith
  have hZ : 0 < sourceNormalization A := source_normalization_pos A hA
  apply (div_le_iff₀ hZ).2
  unfold derivativeEnergyNumerator sourceNormalization
  have h2 : 0 ≤ (A^2)⁻¹ := by positivity
  have h4 : 0 ≤ (A^4)⁻¹ := by positivity
  have h6 : 0 ≤ (A^6)⁻¹ := by positivity
  have hident : (25 / A^2) *
      ((65536 / 109395 : ℝ) / 16 + (131072 / 45045 : ℝ) / (2*A^2) +
        (196608 / 5005 : ℝ) / A^4) -
      ((65536 / 77 : ℝ) / A^6 + (196608 / 5005 : ℝ) / (2*A^4) +
        (131072 / 45045 : ℝ) / (16*A^2)) =
      (25 * (65536 / 109395 : ℝ) / 16 - (131072 / 45045 : ℝ) / 16) * (A^2)⁻¹ +
      (25 * (131072 / 45045 : ℝ) / 2 - (196608 / 5005 : ℝ) / 2) * (A^4)⁻¹ +
      (25 * (196608 / 5005 : ℝ) - (65536 / 77 : ℝ)) * (A^6)⁻¹ := by
    field_simp
    ring
  have hn : 0 ≤
      (25 * (65536 / 109395 : ℝ) / 16 - (131072 / 45045 : ℝ) / 16) * (A^2)⁻¹ +
      (25 * (131072 / 45045 : ℝ) / 2 - (196608 / 5005 : ℝ) / 2) * (A^4)⁻¹ +
      (25 * (196608 / 5005 : ℝ) - (65536 / 77 : ℝ)) * (A^6)⁻¹ := by
    positivity
  linarith

/-- The correlation derivative is the signed integral of the source derivative
against the translated source. -/
theorem sourceCorrelation_deriv_integral (A t : ℝ) (hA : 1 ≤ A) :
    deriv (sourceCorrelation explicitSecondDerivative A) t =
      ∫ x, deriv (normalizedTest explicitSecondDerivative A) x *
        normalizedTest explicitSecondDerivative A (x - t) := by
  have hAp : 0 < A := by linarith
  have hd := (normalizedTest_hasCompactSupport A hAp).hasDerivAt_convolution_left
    (ContinuousLinearMap.lsmul ℝ ℝ)
    (normalizedTest_contDiff A hAp) (reflectedTest_integrable A hAp).locallyIntegrable t
  rw [sourceCorrelation_eq_convolution A, hd.deriv]
  unfold convolution
  apply integral_congr_ae
  filter_upwards with x
  simp [sub_eq_add_neg]

/-- A quantitative correlation derivative estimate with no analytic hypothesis,
valid for every admitted real scale and every real displacement. -/
theorem sourceCorrelation_deriv_abs_le (A t : ℝ) (hA : 1 ≤ A) :
    |deriv (sourceCorrelation explicitSecondDerivative A) t| ≤ 5 / A := by
  let f := normalizedTest explicitSecondDerivative A
  let g : ℝ → ℝ := fun x ↦ A / 5 * deriv f x
  have hAp : 0 < A := by linarith
  have hAn : A ≠ 0 := hAp.ne'
  have hd := normalized_derivative_square_integrable A hA
  have hg : Integrable (fun x ↦ g x ^ 2) := by
    simpa only [g, mul_pow] using hd.const_mul ((A / 5)^2)
  have hf : Integrable (fun x ↦ f (x-t)^2) :=
    (normalized_square_integrable A hA).comp_sub_right t
  have hgc : Continuous g :=
    continuous_const.mul ((normalizedTest_contDiff A hAp).continuous_deriv (by norm_num))
  have hgs : HasCompactSupport g :=
    ((normalizedTest_hasCompactSupport A hAp).deriv).mul_left
  have hfc : Continuous (fun x ↦ f (x-t)) :=
    (normalizedTest_contDiff A hAp).continuous.comp (continuous_id.sub continuous_const)
  have hprod : Integrable (fun x ↦ g x * f (x-t)) :=
    (hgc.mul hfc).integrable_of_hasCompactSupport hgs.mul_right
  have hgn : (∫ x, g x^2) ≤ 1 := by
    have henergy := normalized_derivative_energy_le A hA
    have hmul := mul_le_mul_of_nonneg_left henergy (sq_nonneg (A/5))
    have heq : (A/5)^2 * (25/A^2) = 1 := by field_simp; ring
    simp only [g, mul_pow, integral_const_mul]
    exact heq ▸ hmul
  have hfn : (∫ x, f (x-t)^2) = 1 := by
    rw [integral_sub_right_eq_self (μ := volume) (fun x ↦ f x^2) t]
    exact normalized_square_integral A hA
  have upper := integral_mono (hprod.const_mul 2) (hg.add hf)
    (fun x ↦ show 2 * (g x * f (x-t)) ≤ g x^2 + f (x-t)^2 by
      nlinarith [sq_nonneg (g x - f (x-t))])
  have lower := integral_mono (hprod.const_mul (-2)) (hg.add hf)
    (fun x ↦ show -2 * (g x * f (x-t)) ≤ g x^2 + f (x-t)^2 by
      nlinarith [sq_nonneg (g x + f (x-t))])
  simp only [Pi.add_apply] at upper lower
  rw [integral_const_mul, integral_add hg hf, hfn] at upper lower
  have habs : |∫ x, g x * f (x-t)| ≤ 1 := abs_le.mpr ⟨by linarith, by linarith⟩
  have heq : (∫ x, g x * f (x-t)) =
      A/5 * deriv (sourceCorrelation explicitSecondDerivative A) t := by
    rw [sourceCorrelation_deriv_integral A t hA, ← integral_const_mul]
    apply integral_congr_ae
    filter_upwards with x
    dsimp [g, f]
    ring
  rw [heq, abs_mul, abs_of_pos (by positivity : 0 < A/5)] at habs
  apply (le_div_iff₀ hAp).2
  nlinarith


/-- The existing sampler's profile assumptions are discharged for the actual source. -/
theorem sourceCorrelation_profileSupBounds (A : ℝ) (hA : 1 ≤ A) :
    ProfileSupBounds (sourceCorrelation explicitSecondDerivative A) 1 (5/A) := by
  refine ⟨by norm_num, by positivity, ?_, ?_⟩
  · exact fun t ↦ EstimateCorrelation.actual_correlation_abs_le_one A t hA
  · exact fun t ↦ sourceCorrelation_deriv_abs_le A t hA

/-- The actual fixed inventory contains the entire effective support when `x ≥ 1`.
The real cutoff and all endpoint cases are retained. -/
theorem sourceCorrelation_samplingTailZero (A x : ℝ) (hA : 1 ≤ A) (hx : 1 ≤ x) :
    SamplingTailZero (sourceCorrelation explicitSecondDerivative A) x
      (sourceKernelCutoff A) := by
  intro u hu
  have hxu : EstimateMertensAbel.sourceUpper A < u :=
    (Nat.lt_floor_add_one _).trans hu
  have hu0 : 0 < u := (Real.exp_pos (2*A)).trans hxu
  have hlogu : 2*A ≤ Real.log u :=
    (Real.le_log_iff_exp_le hu0).2 hxu.le
  have hlogx : 0 ≤ Real.log x := Real.log_nonneg hx
  have harg : 2*A ≤ |Real.log x + Real.log u| := by
    calc
      2*A ≤ Real.log x + Real.log u := by linarith
      _ ≤ |Real.log x + Real.log u| := le_abs_self _
  have hz := sourceCorrelation_eq_zero_of_two_mul_le_abs A
    (Real.log x + Real.log u) (by linarith) harg
  simp only [logSamplingTerm, hz, mul_zero]

/-- Unconditional source-specific bound for the complete signed finite Möbius
kernel, uniform over every real `A ≥ 1` and real kernel argument `x ≥ 1`. -/
theorem sourceMobiusKernel_abs_le (A x : ℝ) (hA : 1 ≤ A) (hx : 1 ≤ x) :
    |sourceMobiusKernel A x| ≤ (8 + 20/A) / Real.sqrt x := by
  have hx0 : 0 < x := by linarith
  have h := two_moment_sampling_bound_sqrt
    (sourceCorrelation_contDiff A (by linarith))
    (sourceCorrelation_twoMomentProfile A hA) hx0
    (sourceCorrelation_profileSupBounds A hA)
    (sourceKernelCutoff A) (sourceCorrelation_samplingTailZero A x hA hx)
  rw [leftSampleSum_source_eq A x (sourceKernelCutoff A) hx0] at h
  change |sourceMobiusKernel A x| ≤ _ at h
  convert h using 1
  ring

/-- A constant kernel envelope valid simultaneously over all admitted real scales. -/
theorem sourceMobiusKernel_abs_le_uniform (A x : ℝ) (hA : 1 ≤ A) (hx : 1 ≤ x) :
    |sourceMobiusKernel A x| ≤ 28 / Real.sqrt x := by
  have hA0 : 0 < A := by linarith
  have hdiv : 20/A ≤ 20 := (div_le_iff₀ hA0).2 (by linarith)
  exact (sourceMobiusKernel_abs_le A x hA hx).trans
    (div_le_div_of_nonneg_right (by linarith) (Real.sqrt_nonneg x))


/-- The retained lower Abel endpoint inherits a quantitative source-kernel bound.
The Mertens factor at this endpoint is not discarded or estimated here. -/
theorem sourceMobiusKernel_lower_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |sourceMobiusKernel A (EstimateMertensAbel.sourceLower A)| ≤
      (8 + 20/A) / A := by
  have hA0 : 0 ≤ A := by linarith
  have h := sourceMobiusKernel_abs_le A (A^2) hA (by nlinarith)
  simpa only [EstimateMertensAbel.sourceLower, Real.sqrt_sq hA0] using h


end
end EstimateActualSourceKernelBound
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
