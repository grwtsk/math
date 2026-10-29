-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.NormalizedTestDerivIntegrable.Variant8aa46248c1e0d9c4c9c57f89906811bd0573b1fc81e894b5b8857043ffad8200","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8aa46248c1e0d9c4c9c57f89906811bd0573b1fc81e894b5b8857043ffad8200","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.NormalizedTestDerivIntegrable.Variant8aa46248c1e0d9c4c9c57f89906811bd0573b1fc81e894b5b8857043ffad8200","mathematical_subject":"Analysis.Calculus","original_sha256":"8aa46248c1e0d9c4c9c57f89906811bd0573b1fc81e894b5b8857043ffad8200","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/8aa46248c1e0d9c4c9c57f89906811bd0573b1fc81e894b5b8857043ffad8200.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEnergyRefinement

/-!
# A second derivative for the actual source correlation

The normalized test is only used with its proved global C¹ regularity and
compact support. Differentiating the left convolution factor once and the
reflected right factor once produces the second correlation derivative without
asserting that the zero-extended test is globally C².
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.NormalizedTestDerivIntegrable.Variant8aa46248c1e0d9c4c9c57f89906811bd0573b1fc81e894b5b8857043ffad8200

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateSourceCorrelationDerivative

open MeasureTheory Set
open scoped Convolution ContDiff
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization CorrelationRegularity BridgeNormalization
open EstimateActualSourceKernelBound EstimateSourceMobiusKernel
open EstimateMomentReflection EstimateKernelMoments EstimateLogSampling
open EstimateTwoMomentSampling EstimateTwoMomentSamplingBound

noncomputable section

/-- The first derivative of the endpoint-matched test is continuous and integrable. -/
theorem normalizedTest_deriv_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (deriv (normalizedTest explicitSecondDerivative A)) := by
  have hc := (normalizedTest_contDiff A (by linarith)).continuous_deriv (by norm_num)
  exact hc.integrable_of_hasCompactSupport
    (normalizedTest_hasCompactSupport A (by linarith)).deriv

/-- Reflection preserves the actual test's global C¹ regularity. -/
theorem reflectedTest_contDiff (A : ℝ) (hA : 1 ≤ A) :
    ContDiff ℝ 1 (fun x ↦ normalizedTest explicitSecondDerivative A (-x)) :=
  (normalizedTest_contDiff A (by linarith)).comp contDiff_neg

/-- Reflection reverses the sign of the ordinary first derivative. -/
theorem reflectedTest_deriv (A : ℝ) (hA : 1 ≤ A) :
    deriv (fun x ↦ normalizedTest explicitSecondDerivative A (-x)) =
      fun x ↦ -deriv (normalizedTest explicitSecondDerivative A) (-x) := by
  funext x
  have hg := (normalizedTest_contDiff A (by linarith)).differentiable (by norm_num)
  have h := ((hg (-x)).hasDerivAt.comp x (hasDerivAt_id x).neg).deriv
  simpa only [Function.comp_def, mul_neg, mul_one] using h

/-- The first correlation derivative differentiates only the left convolution factor. -/
theorem sourceCorrelation_deriv_eq_convolution (A : ℝ) (hA : 1 ≤ A) :
    deriv (sourceCorrelation explicitSecondDerivative A) =
      (deriv (normalizedTest explicitSecondDerivative A) ⋆
        (fun x ↦ normalizedTest explicitSecondDerivative A (-x))) := by
  funext t
  rw [sourceCorrelation_deriv_integral A t hA]
  unfold convolution
  apply integral_congr_ae
  filter_upwards with x
  simp [sub_eq_add_neg]

/-- The derivative correlation is C¹ by differentiating its reflected C¹ factor. -/
theorem sourceCorrelation_deriv_contDiff (A : ℝ) (hA : 1 ≤ A) :
    ContDiff ℝ 1 (deriv (sourceCorrelation explicitSecondDerivative A)) := by
  rw [sourceCorrelation_deriv_eq_convolution A hA]
  exact (reflectedTest_hasCompactSupport A (by linarith)).contDiff_convolution_right
    (ContinuousLinearMap.lsmul ℝ ℝ)
    (normalizedTest_deriv_integrable A hA).locallyIntegrable (reflectedTest_contDiff A hA)

/-- Products of the two actual test derivatives are integrable at every displacement. -/
theorem normalizedTest_deriv_product_integrable (A t : ℝ) (hA : 1 ≤ A) :
    Integrable (fun x ↦ deriv (normalizedTest explicitSecondDerivative A) x *
      deriv (normalizedTest explicitSecondDerivative A) (x - t)) := by
  have hc := (normalizedTest_contDiff A (by linarith)).continuous_deriv (by norm_num)
  have hs := (normalizedTest_hasCompactSupport A (by linarith)).deriv
  exact (hc.mul (hc.comp (continuous_id.sub continuous_const))).integrable_of_hasCompactSupport
    hs.mul_right

/-- The second derivative is the negative autocorrelation of the first test derivative.
Both differentiations are justified by compact convolution theorems. -/
theorem sourceCorrelation_second_deriv_integral (A t : ℝ) (hA : 1 ≤ A) :
    deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t =
      -(∫ x, deriv (normalizedTest explicitSecondDerivative A) x *
        deriv (normalizedTest explicitSecondDerivative A) (x - t)) := by
  have hd := (reflectedTest_hasCompactSupport A (by linarith)).hasDerivAt_convolution_right
    (ContinuousLinearMap.lsmul ℝ ℝ)
    (normalizedTest_deriv_integrable A hA).locallyIntegrable (reflectedTest_contDiff A hA) t
  rw [sourceCorrelation_deriv_eq_convolution A hA, hd.deriv, reflectedTest_deriv A hA]
  unfold convolution
  rw [← integral_neg]
  apply integral_congr_ae
  filter_upwards with x
  simp [sub_eq_add_neg]

/-- The correlation is globally C² although the test was only required to be C¹. -/
theorem sourceCorrelation_contDiff_two (A : ℝ) (hA : 1 ≤ A) :
    ContDiff ℝ 2 (sourceCorrelation explicitSecondDerivative A) := by
  rw [show (2 : ℕ∞ω) = 1 + 1 by rfl, contDiff_succ_iff_deriv]
  exact ⟨(sourceCorrelation_contDiff A (by linarith)).differentiable (by norm_num),
    by norm_num, sourceCorrelation_deriv_contDiff A hA⟩

/-- Translation preserves derivative energy, giving the sharp supplied C_A'' bound. -/
theorem sourceCorrelation_second_deriv_abs_le (A t : ℝ) (hA : 1 ≤ A) :
    |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| ≤
      65 / (3 * A ^ 2) := by
  let f := deriv (normalizedTest explicitSecondDerivative A)
  have hf : Integrable (fun x ↦ f x ^ 2) := normalized_derivative_square_integrable A hA
  have hg : Integrable (fun x ↦ f (x - t) ^ 2) := hf.comp_sub_right t
  have hp : Integrable (fun x ↦ f x * f (x - t)) :=
    normalizedTest_deriv_product_integrable A t hA
  have nf : (∫ x, f x ^ 2) ≤ 65 / (3 * A ^ 2) :=
    EstimateSourceEnergyRefinement.normalized_derivative_energy_le A hA
  have ng : (∫ x, f (x - t) ^ 2) = ∫ x, f x ^ 2 :=
    integral_sub_right_eq_self (μ := volume) (fun x ↦ f x ^ 2) t
  have upper := integral_mono (hp.const_mul 2) (hf.add hg)
    (fun x ↦ show 2 * (f x * f (x - t)) ≤ f x ^ 2 + f (x - t) ^ 2 by
      nlinarith [sq_nonneg (f x - f (x - t))])
  have lower := integral_mono (hp.const_mul (-2)) (hf.add hg)
    (fun x ↦ show -2 * (f x * f (x - t)) ≤ f x ^ 2 + f (x - t) ^ 2 by
      nlinarith [sq_nonneg (f x + f (x - t))])
  simp only [Pi.add_apply] at upper lower
  rw [integral_const_mul, integral_add hf hg, ng] at upper lower
  rw [sourceCorrelation_second_deriv_integral A t hA, abs_neg]
  exact abs_le.mpr ⟨by linarith, by linarith⟩

/-- The actual first test derivative vanishes at both zero-extension seams and beyond. -/
theorem normalizedTest_deriv_zero_of_le_abs (A x : ℝ) (hA : 1 ≤ A) (hx : A ≤ |x|) :
    deriv (normalizedTest explicitSecondDerivative A) x = 0 := by
  rw [normalizedTest_deriv_eq_indicator A (by linarith)]
  by_cases hm : x ∈ Icc (-A) A
  · rw [indicator_of_mem hm]
    have he : x = -A ∨ x = A := by
      rcases le_total x 0 with hn | hp
      · left
        rw [abs_of_nonpos hn] at hx
        exact le_antisymm (by linarith) hm.1
      · right
        rw [abs_of_nonneg hp] at hx
        exact le_antisymm hm.2 (by linarith)
    have hfront : x ∈ frontier (Icc (-A) A) := by
      rw [frontier_Icc (by linarith)]
      rcases he with he | he <;> simp [he]
    exact (normalizedInterior_frontier A (by linarith) x hfront).2
  · exact indicator_of_notMem hm _

/-- The first correlation derivative vanishes at the support endpoints as well as outside. -/
theorem sourceCorrelation_deriv_zero_of_two_mul_le_abs
    (A t : ℝ) (hA : 1 ≤ A) (ht : 2 * A ≤ |t|) :
    deriv (sourceCorrelation explicitSecondDerivative A) t = 0 := by
  rw [sourceCorrelation_deriv_integral A t hA]
  apply integral_eq_zero_of_ae
  filter_upwards with x
  change deriv (normalizedTest explicitSecondDerivative A) x *
    normalizedTest explicitSecondDerivative A (x - t) = 0
  by_cases hx : A ≤ |x|
  · rw [normalizedTest_deriv_zero_of_le_abs A x hA hx, zero_mul]
  · have hxt : A ≤ |x - t| := by
      have hb : |t| ≤ |x| + |x - t| := by
        calc
          |t| = |x - (x - t)| := by congr 1; ring
          _ ≤ |x| + |x - t| := abs_sub _ _
      linarith [lt_of_not_ge hx]
    rw [normalizedTest_zero_of_le_abs A (x - t) (by linarith) hxt, mul_zero]

/-- The differentiated actual correlation supplies both quantitative sampling envelopes. -/
theorem sourceCorrelation_deriv_profileSupBounds (A : ℝ) (hA : 1 ≤ A) :
    ProfileSupBounds (deriv (sourceCorrelation explicitSecondDerivative A))
      (5 / A) (65 / (3 * A ^ 2)) := by
  refine ⟨by positivity, by positivity, ?_, ?_⟩
  · exact fun t ↦ sourceCorrelation_deriv_abs_le A t hA
  · exact fun t ↦ sourceCorrelation_second_deriv_abs_le A t hA

/-- The same fixed closed source inventory contains the derivative profile's full support. -/
theorem sourceCorrelation_deriv_samplingTailZero (A x : ℝ) (hA : 1 ≤ A) (hx : 1 ≤ x) :
    SamplingTailZero (deriv (sourceCorrelation explicitSecondDerivative A)) x
      (sourceKernelCutoff A) := by
  intro u hu
  have hxu : EstimateMertensAbel.sourceUpper A < u :=
    (Nat.lt_floor_add_one _).trans hu
  have hu0 : 0 < u := (Real.exp_pos (2 * A)).trans hxu
  have hlogu : 2 * A ≤ Real.log u := (Real.le_log_iff_exp_le hu0).2 hxu.le
  have hlogx : 0 ≤ Real.log x := Real.log_nonneg hx
  have harg : 2 * A ≤ |Real.log x + Real.log u| := by
    calc
      2 * A ≤ Real.log x + Real.log u := by linarith
      _ ≤ |Real.log x + Real.log u| := le_abs_self _
  have hz := sourceCorrelation_deriv_zero_of_two_mul_le_abs A
    (Real.log x + Real.log u) hA harg
  simp only [logSamplingTerm, hz, mul_zero]

/-- Compact-support integration by parts transfers both vanishing exponential
moments to C_A'. The existing derivativeProfile proofs retain all endpoints. -/
theorem sourceCorrelation_deriv_twoMomentProfile (A : ℝ) (hA : 1 ≤ A) :
    TwoMomentProfile (deriv (sourceCorrelation explicitSecondDerivative A)) := by
  have hC := sourceCorrelation_twoMomentProfile A hA
  have hD := derivativeProfile_twoMomentProfile A hA
  refine ⟨(sourceCorrelation_contDiff A (by linarith)).continuous_deriv (by norm_num),
    hC.2.1.deriv, ?_, ?_⟩
  · have heq : (fun t ↦ Real.exp (t / 2) *
          deriv (sourceCorrelation explicitSecondDerivative A) t) =
        fun t ↦ Real.exp (t / 2) * derivativeProfile A t +
          (Real.exp (t / 2) * sourceCorrelation explicitSecondDerivative A t) / 2 := by
      funext t
      unfold derivativeProfile
      ring
    rw [heq, integral_add (weighted_zero_integrable hD)
      ((weighted_zero_integrable hC).div_const 2), integral_div, hD.2.2.1, hC.2.2.1]
    norm_num
  · have heq : (fun t ↦ t * Real.exp (t / 2) *
          deriv (sourceCorrelation explicitSecondDerivative A) t) =
        fun t ↦ t * Real.exp (t / 2) * derivativeProfile A t +
          (t * Real.exp (t / 2) * sourceCorrelation explicitSecondDerivative A t) / 2 := by
      funext t
      unfold derivativeProfile
      ring
    rw [heq, integral_add (weighted_first_integrable hD)
      ((weighted_first_integrable hC).div_const 2), integral_div, hD.2.2.2, hC.2.2.2]
    norm_num

end
end EstimateSourceCorrelationDerivative
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
