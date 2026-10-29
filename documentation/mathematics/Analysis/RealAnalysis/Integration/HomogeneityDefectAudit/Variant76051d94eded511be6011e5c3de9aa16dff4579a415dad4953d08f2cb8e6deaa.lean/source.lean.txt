-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.CorrelationPrimeSample.Variant11ef346464d2944a4a6bf58f787f0f5521105100794fe8f1abaac2bae865b8b4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"11ef346464d2944a4a6bf58f787f0f5521105100794fe8f1abaac2bae865b8b4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.CorrelationPrimeSample.Variant11ef346464d2944a4a6bf58f787f0f5521105100794fe8f1abaac2bae865b8b4","mathematical_subject":"Analysis.Integration","original_sha256":"11ef346464d2944a4a6bf58f787f0f5521105100794fe8f1abaac2bae865b8b4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/arithmetic-routes/HomogeneityDefectAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.RealThetaDerivative

/-! The actual homogeneity defect retains cancellation before any norm bound. -/

namespace GRWTSK.Analysis.RealAnalysis.Integration.CorrelationPrimeSample.Variant11ef346464d2944a4a6bf58f787f0f5521105100794fe8f1abaac2bae865b8b4

set_option autoImplicit false
namespace HomogeneityDefectScratch
open Finset MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization SourceSampling SourceSamplingDerivative CorrelationDifferenceMoments
open CorrelationSecondMoment CorrelationPrimitive CorrelationPrimitiveMoments
open RealThetaKernel RealThetaDerivative CorrelationSecondDerivative CorrelationThirdDerivative
open CorrelationRegularity CorrelationMoment CorrelationFirstMoment SourcePrimitiveSampling
noncomputable section

/-- The actual strict-cutoff sample of the correlation derivative. -/
def correlationPrimeSample (A x : ℝ) : ℝ :=
  ∑ k ∈ samplingIndices A x, Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
    deriv (sourceCorrelation explicitSecondDerivative A) (Real.log (x * (k : ℝ)))

/-- The signed sample identity is established before taking absolute values. -/
theorem correlationPrimeSample_eq (A x : ℝ) :
    correlationPrimeSample A x = differenceSamplingKernel A x + sourceSamplingKernel A x / 2 := by
  unfold correlationPrimeSample differenceSamplingKernel sourceSamplingKernel correlationDifference
  rw [sum_div, ← sum_add_distrib]
  apply sum_congr rfl
  intro k _
  ring

/-- The complete finite outer sample of C prime. -/
def correlationPrimeTheta (A q : ℝ) : ℝ :=
  ∑ k ∈ Icc 1 ⌊Real.exp (2 * A)⌋₊, correlationPrimeSample A (q * (k : ℝ))

theorem correlationPrimeTheta_eq (A q : ℝ) :
    correlationPrimeTheta A q = realThetaDifferenceKernel A q + realThetaKernel A q / 2 := by
  unfold correlationPrimeTheta realThetaDifferenceKernel realThetaKernel
  simp_rw [correlationPrimeSample_eq, sum_add_distrib, sum_div]

/-- The actual homogeneity defect has the signed negative half-beta main coefficient. -/
theorem homogeneity_defect_eq (A q : ℝ) (hA : 1 ≤ A) (hq : 0 < q) :
    q * deriv (realThetaRemainder A) q + realThetaRemainder A q / 2 =
      correlationPrimeTheta A q + sourceRankOneCoefficient A / (2 * q) := by
  rw [(realThetaRemainder_hasDerivAt A q hA hq).deriv,
    realThetaRemainder, correlationPrimeTheta_eq]
  field_simp
  ring

/-- The negative primitive of C prime is the actual -H prime, kept as a signed difference. -/
def negativePrimePrimitive (A t : ℝ) : ℝ :=
  correlationPrimitive A t / 2 - sourceCorrelation explicitSecondDerivative A t

theorem negativePrimePrimitive_eq (A t : ℝ) (hA : 1 ≤ A) :
    negativePrimePrimitive A t = -deriv (correlationPrimitive A) t := by
  rw [(correlationPrimitive_hasDerivAt A t hA).deriv, negativePrimePrimitive]
  ring

theorem negativePrimePrimitive_contDiff (A : ℝ) (hA : 1 ≤ A) :
    ContDiff ℝ 1 (negativePrimePrimitive A) :=
  ((correlationPrimitive_contDiff A hA).div_const 2).sub
    (sourceCorrelation_contDiff A (by linarith))

theorem negativePrimePrimitive_compact (A : ℝ) (hA : 1 ≤ A) :
    HasCompactSupport (negativePrimePrimitive A) := by
  have he : negativePrimePrimitive A = (correlationPrimitive A * fun _ ↦ (2 : ℝ)⁻¹) -
      sourceCorrelation explicitSecondDerivative A := by
    funext t
    simp [negativePrimePrimitive, div_eq_mul_inv]
  rw [he]
  exact ((correlationPrimitive_hasCompactSupport A hA).mul_right).sub
    (sourceCorrelation_hasCompactSupport A (by linarith))

theorem negativePrimePrimitive_abs_le (A t : ℝ) (hA : 1 ≤ A) :
    |negativePrimePrimitive A t| ≤ 2 * Real.sqrt (65 / 3) / A := by
  rw [negativePrimePrimitive_eq A t hA, abs_neg]
  exact correlationPrimitive_derivative_abs_le A t hA

theorem negativePrimePrimitive_derivative_abs_le (A t : ℝ) (hA : 1 ≤ A) :
    |deriv (negativePrimePrimitive A) t| ≤ 2 * Real.sqrt (65 / 3) / A := by
  have he : deriv (negativePrimePrimitive A) t = deriv (correlationPrimitive A) t / 2 -
      deriv (sourceCorrelation explicitSecondDerivative A) t := by
    exact (((correlationPrimitive_contDiff A hA).differentiable (by norm_num) t).hasDerivAt.div_const 2
      |>.sub ((sourceCorrelation_contDiff A (by linarith)).differentiable
        (by norm_num) t).hasDerivAt).deriv
  rw [he]
  calc
    _ ≤ |deriv (correlationPrimitive A) t / 2| +
        |deriv (sourceCorrelation explicitSecondDerivative A) t| := abs_sub _ _
    _ ≤ (2 * Real.sqrt (65 / 3) / A) / 2 + Real.sqrt (65 / 3) / A := by
      rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
      exact add_le_add (div_le_div_of_nonneg_right
        (correlationPrimitive_derivative_abs_le A t hA) (by norm_num))
        (DerivativeEnergy.sourceCorrelation_derivative_abs_le A t hA)
    _ = _ := by ring

theorem negativePrimePrimitive_moments (A : ℝ) (hA : 1 ≤ A) :
    (∫ t : ℝ, Real.exp (t / 2) * negativePrimePrimitive A t) = 0 ∧
      (∫ t : ℝ, t * Real.exp (t / 2) * negativePrimePrimitive A t) =
        -sourceRankOneCoefficient A / 2 := by
  have hiH0 : Integrable (fun t : ℝ ↦ Real.exp (t / 2) * correlationPrimitive A t) := by
    simpa only [pow_zero, one_mul] using weighted_primitive_integrable A 0 hA
  have hiH1 : Integrable (fun t : ℝ ↦ t * Real.exp (t / 2) * correlationPrimitive A t) := by
    simpa only [pow_one] using weighted_primitive_integrable A 1 hA
  have hiC0 : Integrable (fun t : ℝ ↦ Real.exp (t / 2) *
      sourceCorrelation explicitSecondDerivative A t) := by
    simpa only [pow_zero, one_mul] using TwoMomentSampling.weighted_moment_integrable
      (sourceCorrelation explicitSecondDerivative A)
      (sourceCorrelation_contDiff A (by linarith)).continuous
      (sourceCorrelation_hasCompactSupport A (by linarith)) 0
  have hiC1 : Integrable (fun t : ℝ ↦ t * Real.exp (t / 2) *
      sourceCorrelation explicitSecondDerivative A t) := by
    simpa only [one_div_mul_eq_div] using weighted_correlation_firstMoment_integrable A (1 / 2) hA
  constructor
  · simp only [negativePrimePrimitive, mul_sub, ← mul_div_assoc]
    rw [integral_sub (hiH0.div_const 2) hiC0, integral_div, weighted_primitive_zeroMoment A hA]
    have h := full_correlation_moment_zero A hA
    simpa only [one_div_mul_eq_div, zero_div, zero_sub, neg_eq_zero] using h
  · simp only [negativePrimePrimitive, mul_sub, ← mul_div_assoc]
    rw [integral_sub (hiH1.div_const 2) hiC1, integral_div,
      weighted_primitive_firstMoment A hA, full_correlation_firstMoment_zero A hA, sub_zero]

theorem negativePrimePrimitive_zero_right (A t : ℝ) (hA : 1 ≤ A) (ht : 2 * A ≤ t) :
    negativePrimePrimitive A t = 0 := by
  rw [negativePrimePrimitive, correlationPrimitive_zero_right A t hA ht,
    sourceCorrelation_eq_zero_of_two_mul_le_abs A t (by linarith)
      (ht.trans (le_abs_self t))]
  ring

/-- All original source product terms are retained in the signed primitive sample. -/
def primePrimitiveSample (A x : ℝ) : ℝ :=
  ∑ k ∈ samplingIndices A x, Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
    negativePrimePrimitive A (Real.log (x * (k : ℝ)))

theorem primePrimitiveSample_eq (A x : ℝ) :
    primePrimitiveSample A x = -sourcePrimitiveSamplingKernel A x / 2 - sourceSamplingKernel A x := by
  unfold primePrimitiveSample sourcePrimitiveSamplingKernel sourceSamplingKernel negativePrimePrimitive
  rw [← sum_neg_distrib, sum_div, ← sum_sub_distrib]
  apply sum_congr rfl
  intro k _
  ring

/-- Genuine integrability precedes linearity of the complete signed integral. -/
theorem primeSample_rescaled_integrable (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    IntegrableOn (fun x ↦ correlationPrimeSample A (q * x)) (Set.Ioi 1) := by
  have hi := (differenceKernel_rescaled_integrable A q hA hq).add
    ((InnerPrimitiveTransport.sourceKernel_rescaled_integrable A q hA hq).div_const 2)
  apply hi.congr_fun _ measurableSet_Ioi
  intro t _
  exact (correlationPrimeSample_eq A (q * t)).symm

/-- Both finite sum-integral transports retain the full negative derivative primitive. -/
theorem primeSample_integral_eq_primitive (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    (∫ x in Set.Ioi (1 : ℝ), correlationPrimeSample A (q * x)) = primePrimitiveSample A q := by
  simp_rw [correlationPrimeSample_eq]
  rw [integral_add (differenceKernel_rescaled_integrable A q hA hq)
      ((InnerPrimitiveTransport.sourceKernel_rescaled_integrable A q hA hq).div_const 2),
    integral_div, differenceKernel_integral_eq_primitive A q hA hq,
    differencePrimitiveSamplingKernel_eq,
    InnerPrimitiveTransport.sourceKernel_integral_eq_primitive_sum A q hA hq,
    ← sourcePrimitiveSamplingKernel_eq_fixed_sum A q hA hq, primePrimitiveSample_eq]
  ring

/-- Any actual source-supported profile vanishes beyond the strict product cutoff. -/
theorem sampling_zero (A x u : ℝ) (F : ℝ → ℝ) (hx : 0 < x) (hu : 0 < u)
    (hzero : ∀ t, 2 * A ≤ t → F t = 0) (hcut : Real.exp (2 * A) ≤ x * u) :
    TwoMomentSampling.samplingIntegrand F x u = 0 := by
  have hlog : 2 * A ≤ Real.log (x * u) := by
    simpa only [Real.log_exp] using Real.log_le_log (Real.exp_pos _) hcut
  rw [TwoMomentSampling.samplingIntegrand, ← Real.log_mul hx.ne' hu.ne', hzero _ hlog, mul_zero]

/-- The complete strict sample equals a fixed padded sum because only zero terms are added. -/
theorem strict_sample_eq_padded (A x : ℝ) (F : ℝ → ℝ) (hx : 0 < x)
    (hzero : ∀ t, 2 * A ≤ t → F t = 0) :
    (∑ k ∈ samplingIndices A x, Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
      F (Real.log (x * (k : ℝ)))) =
      ∑ k ∈ Icc 1 (⌊Real.exp (2 * A) / x⌋₊ + 1), TwoMomentSampling.samplingIntegrand F x k := by
  let N := ⌊Real.exp (2 * A) / x⌋₊ + 1
  have hN : Real.exp (2 * A) / x ≤ (N : ℝ) := by
    simpa only [N, Nat.cast_add, Nat.cast_one] using (Nat.lt_floor_add_one (Real.exp (2 * A) / x)).le
  calc
    _ = ∑ k ∈ samplingIndices A x, TwoMomentSampling.samplingIntegrand F x k := by
      apply sum_congr rfl
      intro k hk
      have hk1 := ((mem_samplingIndices_iff A x k hx).mp hk).1
      have hk0 : (0 : ℝ) < k := by exact_mod_cast (show 0 < k by omega)
      rw [TwoMomentSampling.samplingIntegrand, Real.log_mul hx.ne' hk0.ne']
    _ = _ := by
      apply sum_subset (samplingIndices_subset_fixed A x N hx hN)
      intro k hk hout
      have hk1 := (mem_Icc.mp hk).1
      have hk0 : (0 : ℝ) < k := by exact_mod_cast (show 0 < k by omega)
      have hcut : Real.exp (2 * A) ≤ x * (k : ℝ) := by
        by_contra h
        exact hout ((mem_samplingIndices_iff A x k hx).mpr ⟨hk1, lt_of_not_ge h⟩)
      exact sampling_zero A x k F hx hk0 hzero hcut

/-- The padded endpoint lies beyond the actual support. -/
theorem sampling_padded_endpoint_zero (A x : ℝ) (F : ℝ → ℝ) (hx : 0 < x)
    (hzero : ∀ t, 2 * A ≤ t → F t = 0)
    (u : ℝ) (hu : (⌊Real.exp (2 * A) / x⌋₊ + 1 : ℕ) ≤ u) :
    TwoMomentSampling.samplingIntegrand F x u = 0 := by
  have hN : (0 : ℝ) < (⌊Real.exp (2 * A) / x⌋₊ + 1 : ℕ) := by positivity
  apply sampling_zero A x u F hx (hN.trans_le hu) hzero
  have hfloor := Nat.lt_floor_add_one (Real.exp (2 * A) / x)
  have hd : Real.exp (2 * A) / x < u := by
    push_cast at hu
    exact hfloor.trans_le hu
  simpa only [mul_comm] using ((div_lt_iff₀ hx).mp hd).le

/-- The inner quadrature preserves the negative half-beta coefficient and gains inverse A. -/
theorem primePrimitiveSample_add_rankOne_abs_le (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    |primePrimitiveSample A x + sourceRankOneCoefficient A / (2 * x)| ≤
      (24 * Real.sqrt (65 / 3) / A) / Real.sqrt x := by
  rw [primePrimitiveSample, strict_sample_eq_padded A x _ hx
    (fun t ht ↦ negativePrimePrimitive_zero_right A t hA ht)]
  have hm := negativePrimePrimitive_moments A hA
  have h := FirstMomentSampling.sampling_sum_sub_firstMoment_abs_le
    (negativePrimePrimitive A) x (2 * Real.sqrt (65 / 3) / A)
    (2 * Real.sqrt (65 / 3) / A) (-sourceRankOneCoefficient A / 2)
    (⌊Real.exp (2 * A) / x⌋₊ + 1) hx (by omega)
    (negativePrimePrimitive_contDiff A hA) (negativePrimePrimitive_compact A hA)
    (fun t ↦ negativePrimePrimitive_abs_le A t hA)
    (fun t ↦ negativePrimePrimitive_derivative_abs_le A t hA) hm.1 hm.2
    (sampling_padded_endpoint_zero A x _ hx
      (fun t ht ↦ negativePrimePrimitive_zero_right A t hA ht))
  convert h using 1 <;> congr 1 <;> ring

/-- D prime is exactly C double prime minus half C prime, without a C contribution. -/
theorem difference_derivative_eq (A t : ℝ) (hA : 1 ≤ A) :
    deriv (correlationDifference A) t =
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t -
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2 :=
  (correlationDifference_hasDerivAt A t hA).deriv

theorem difference_derivative_contDiff (A : ℝ) (hA : 1 ≤ A) :
    ContDiff ℝ 1 (deriv (correlationDifference A)) := by
  have he : deriv (correlationDifference A) = fun t ↦
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t -
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2 := by
    funext t; exact difference_derivative_eq A t hA
  rw [he]
  exact (sourceCorrelation_second_derivative_contDiff A hA).sub
    ((sourceCorrelation_derivative_contDiff A hA).div_const 2)

theorem difference_second_derivative_abs_le (A t : ℝ) (hA : 1 ≤ A) :
    |deriv (deriv (correlationDifference A)) t| ≤
      Real.sqrt (325325 / 18) / A ^ 3 + 65 / (6 * A ^ 2) := by
  have he : deriv (correlationDifference A) = fun t ↦
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t -
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2 := by
    funext u; exact difference_derivative_eq A u hA
  have hd := ((sourceCorrelation_second_derivative_contDiff A hA).differentiable
    (by norm_num) t).hasDerivAt.sub
    (((sourceCorrelation_derivative_contDiff A hA).differentiable
      (by norm_num) t).hasDerivAt.div_const 2)
  have hd' : deriv (deriv (correlationDifference A)) t =
      deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t -
        deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t / 2 := by
    rw [he]
    exact hd.deriv
  rw [hd']
  calc
    _ ≤ |deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t| +
        |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t / 2| := abs_sub _ _
    _ ≤ Real.sqrt (325325 / 18) / A ^ 3 + (65 / (3 * A ^ 2)) / 2 := by
      rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
      exact add_le_add (sourceCorrelation_third_derivative_abs_le A t hA)
        (div_le_div_of_nonneg_right (sourceCorrelation_second_derivative_abs_le A t hA)
          (by norm_num))
    _ = _ := by ring

theorem difference_derivative_zero_right (A t : ℝ) (hA : 1 ≤ A) (ht : 2 * A ≤ t) :
    deriv (correlationDifference A) t = 0 := by
  apply HasDerivWithinAt.deriv_eq_zero (s := Set.Ici t)
    ((hasDerivWithinAt_const t (Set.Ici t) (0 : ℝ)).congr_of_mem ?_ (le_refl t))
    (uniqueDiffWithinAt_Ici t)
  intro u hu
  exact source_difference_zero_right A u hA (ht.trans hu)

theorem difference_derivative_sampling_abs_le (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    |∑ k ∈ samplingIndices A x, Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
      deriv (correlationDifference A) (Real.log (x * (k : ℝ)))| ≤
      (4 * Real.sqrt (65 / 3) / A + 10 * (65 / (3 * A ^ 2)) +
        4 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt x := by
  rw [strict_sample_eq_padded A x _ hx (fun t ht ↦ difference_derivative_zero_right A t hA ht)]
  have hz := difference_two_moments_zero A hA
  have hzd := compact_derivative_two_moments_zero _ (correlationDifference_contDiff A hA)
    (correlationDifference_hasCompactSupport A hA) hz.1 hz.2
  have h := TwoMomentSampling.sampling_sum_abs_le (deriv (correlationDifference A)) x
    (65 / (3 * A ^ 2) + Real.sqrt (65 / 3) / (2 * A))
    (Real.sqrt (325325 / 18) / A ^ 3 + 65 / (6 * A ^ 2))
    (⌊Real.exp (2 * A) / x⌋₊ + 1) hx (by omega)
    (difference_derivative_contDiff A hA) (correlationDifference_hasCompactSupport A hA).deriv
    (fun t ↦ correlationDifference_derivative_abs_le A t hA)
    (fun t ↦ difference_second_derivative_abs_le A t hA) hzd.1 hzd.2
    (sampling_padded_endpoint_zero A x _ hx
      (fun t ht ↦ difference_derivative_zero_right A t hA ht))
  convert h using 1
  ring

/-- Differentiating the signed C-prime sample cancels the undifferentiated correlation term. -/
theorem primeSample_hasDerivAt (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    HasDerivAt (correlationPrimeSample A)
      (1 / x * ∑ k ∈ samplingIndices A x, Real.log (k : ℝ) / Real.sqrt (x * (k : ℝ)) *
        deriv (correlationDifference A) (Real.log (x * (k : ℝ)))) x := by
  have hd := (differenceSamplingKernel_hasDerivAt A x hA hx).add
    ((sourceSamplingKernel_hasDerivAt A x hA hx).div_const 2)
  have he : correlationPrimeSample A = differenceSamplingKernel A +
      (fun y ↦ sourceSamplingKernel A y / 2) := by
    funext y
    exact correlationPrimeSample_eq A y
  rw [he]
  apply hd.congr_deriv
  simp_rw [iteratedDifference, mul_sub, ← mul_div_assoc, sum_sub_distrib, ← sum_div]
  ring

/-- The complete sample derivative has an inverse-A coefficient. -/
theorem primeSample_derivative_abs_le (A x : ℝ) (hA : 1 ≤ A) (hx : 0 < x) :
    |deriv (correlationPrimeSample A) x| ≤
      (4 * Real.sqrt (65 / 3) / A + 10 * (65 / (3 * A ^ 2)) +
        4 * Real.sqrt (325325 / 18) / A ^ 3) / (x * Real.sqrt x) := by
  rw [(primeSample_hasDerivAt A x hA hx).deriv, abs_mul,
    abs_of_pos (one_div_pos.mpr hx)]
  calc
    _ ≤ 1 / x * ((4 * Real.sqrt (65 / 3) / A + 10 * (65 / (3 * A ^ 2)) +
        4 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt x) :=
      mul_le_mul_of_nonneg_left (difference_derivative_sampling_abs_le A x hA hx)
        (one_div_nonneg.mpr hx.le)
    _ = _ := by ring

theorem scaledPrimeSample_hasDerivAt (A q x : ℝ) (hA : 1 ≤ A) (hq : 0 < q) (hx : 0 < x) :
    HasDerivAt (fun t : ℝ ↦ correlationPrimeSample A (q * t))
      (q * deriv (correlationPrimeSample A) (q * x)) x := by
  have h := (primeSample_hasDerivAt A (q * x) hA (mul_pos hq hx)).differentiableAt
  apply (h.hasDerivAt.comp x ((hasDerivAt_id x).const_mul q)).congr_deriv
  simp only [mul_one, mul_comm]

/-- The derivative majorant is genuinely integrable before applying sampling error. -/
theorem scaledPrimeSample_derivative_integrable (A q : ℝ) (hA : 1 ≤ A) (hq : 0 < q) :
    IntegrableOn (deriv (fun t : ℝ ↦ correlationPrimeSample A (q * t))) (Set.Ioi 1) := by
  let K := 4 * Real.sqrt (65 / 3) / A + 10 * (65 / (3 * A ^ 2)) +
    4 * Real.sqrt (325325 / 18) / A ^ 3
  apply (inverse_root_majorant_integrable q K hq).mono'
    (stronglyMeasurable_deriv (fun t : ℝ ↦ correlationPrimeSample A (q * t))).aestronglyMeasurable
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  rw [Real.norm_eq_abs, (scaledPrimeSample_hasDerivAt A q t hA hq (zero_lt_one.trans ht)).deriv,
    abs_mul, abs_of_pos hq]
  exact mul_le_mul_of_nonneg_left
    (primeSample_derivative_abs_le A (q * t) hA (mul_pos hq (zero_lt_one.trans ht))) hq.le

theorem scaledPrimeSample_variation_le (A q : ℝ) (hA : 1 ≤ A) (hq : 0 < q) :
    (∫ t in Set.Ioi (1 : ℝ), |deriv (fun t : ℝ ↦ correlationPrimeSample A (q * t)) t|) ≤
      2 * (4 * Real.sqrt (65 / 3) / A + 10 * (65 / (3 * A ^ 2)) +
        4 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt q := by
  let K := 4 * Real.sqrt (65 / 3) / A + 10 * (65 / (3 * A ^ 2)) +
    4 * Real.sqrt (325325 / 18) / A ^ 3
  calc
    _ ≤ ∫ t in Set.Ioi (1 : ℝ), q * (K / (q * t * Real.sqrt (q * t))) := by
      apply setIntegral_mono_on (scaledPrimeSample_derivative_integrable A q hA hq).abs
        (inverse_root_majorant_integrable q K hq) measurableSet_Ioi
      intro t ht
      rw [(scaledPrimeSample_hasDerivAt A q t hA hq (zero_lt_one.trans ht)).deriv,
        abs_mul, abs_of_pos hq]
      exact mul_le_mul_of_nonneg_left
        (primeSample_derivative_abs_le A (q * t) hA (mul_pos hq (zero_lt_one.trans ht))) hq.le
    _ = _ := inverse_root_majorant_integral q K hq

/-- Empty strict sampling at the endpoint uses no change to the cutoff. -/
theorem primeSample_zero_of_exp_le (A x : ℝ) (hx : 0 < x)
    (hcut : Real.exp (2 * A) ≤ x) : correlationPrimeSample A x = 0 := by
  have hi : samplingIndices A x = ∅ := by
    apply eq_empty_iff_forall_notMem.mpr
    intro k hk
    obtain ⟨hk1, hkcut⟩ := (mem_samplingIndices_iff A x k hx).mp hk
    have hk1r : (1 : ℝ) ≤ k := by exact_mod_cast hk1
    nlinarith
  simp only [correlationPrimeSample, hi, sum_empty]

theorem primeTheta_eq_padded_sum (A q : ℝ) (hq : 1 ≤ q) :
    correlationPrimeTheta A q =
      ∑ k ∈ Icc 1 (⌊Real.exp (2 * A)⌋₊ + 1), correlationPrimeSample A (q * (k : ℝ)) := by
  unfold correlationPrimeTheta
  apply sum_subset
  · intro k hk
    obtain ⟨hk1, hkB⟩ := mem_Icc.mp hk
    exact mem_Icc.mpr ⟨hk1, by omega⟩
  · intro k hk hout
    have hk' := mem_Icc.mp hk
    have hkN : k = ⌊Real.exp (2 * A)⌋₊ + 1 := by
      by_contra h
      exact hout (mem_Icc.mpr ⟨hk'.1, by omega⟩)
    have hk0 : (0 : ℝ) < k := by exact_mod_cast (show 0 < k by omega)
    apply primeSample_zero_of_exp_le A _ (mul_pos (by linarith) hk0)
    have hf := Nat.lt_floor_add_one (Real.exp (2 * A))
    have hkX : Real.exp (2 * A) < (k : ℝ) := by
      simpa only [hkN, Nat.cast_add, Nat.cast_one] using hf
    nlinarith

/-- Outer quadrature also retains the source derivative gain. -/
theorem primeTheta_sub_integral_abs_le (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |correlationPrimeTheta A q -
      (∫ t in Set.Ioi (1 : ℝ), correlationPrimeSample A (q * t))| ≤
      2 * (4 * Real.sqrt (65 / 3) / A + 10 * (65 / (3 * A ^ 2)) +
        4 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt q := by
  have hq0 : 0 < q := by linarith
  let N := ⌊Real.exp (2 * A)⌋₊ + 1
  have hN : 1 ≤ N := by dsimp [N]; omega
  have he := SamplingError.abs_sum_sub_integral_Ioi_le
    (fun t : ℝ ↦ correlationPrimeSample A (q * t)) N hN
    (fun t ht ↦ (scaledPrimeSample_hasDerivAt A q t hA hq0
      (zero_lt_one.trans_le ht.1)).differentiableAt)
    (primeSample_rescaled_integrable A q hA hq)
    (scaledPrimeSample_derivative_integrable A q hA hq0) (fun t ht ↦ by
      have hNr : (1 : ℝ) ≤ N := by exact_mod_cast hN
      have ht0 : 0 < t := zero_lt_one.trans_le (hNr.trans ht)
      apply primeSample_zero_of_exp_le A _ (mul_pos hq0 ht0)
      have hf : Real.exp (2 * A) < (N : ℝ) := by
        simpa only [N, Nat.cast_add, Nat.cast_one] using Nat.lt_floor_add_one (Real.exp (2 * A))
      nlinarith)
  rw [primeTheta_eq_padded_sum A q hq]
  exact he.trans (scaledPrimeSample_variation_le A q hA hq0)

/-- Both complete quadratures bound the signed half-beta remainder with no O(1) coefficient. -/
theorem primeTheta_add_rankOne_abs_le (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |correlationPrimeTheta A q + sourceRankOneCoefficient A / (2 * q)| ≤
      (32 * Real.sqrt (65 / 3) / A + 20 * (65 / (3 * A ^ 2)) +
        8 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt q := by
  have he : correlationPrimeTheta A q + sourceRankOneCoefficient A / (2 * q) =
      (correlationPrimeTheta A q -
        (∫ t in Set.Ioi (1 : ℝ), correlationPrimeSample A (q * t))) +
      ((∫ t in Set.Ioi (1 : ℝ), correlationPrimeSample A (q * t)) +
        sourceRankOneCoefficient A / (2 * q)) := by ring
  rw [he]
  calc
    _ ≤ |correlationPrimeTheta A q -
        (∫ t in Set.Ioi (1 : ℝ), correlationPrimeSample A (q * t))| +
        |(∫ t in Set.Ioi (1 : ℝ), correlationPrimeSample A (q * t)) +
          sourceRankOneCoefficient A / (2 * q)| := abs_add_le _ _
    _ ≤ 2 * (4 * Real.sqrt (65 / 3) / A + 10 * (65 / (3 * A ^ 2)) +
        4 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt q +
        (24 * Real.sqrt (65 / 3) / A) / Real.sqrt q := by
      apply add_le_add (primeTheta_sub_integral_abs_le A q hA hq)
      rw [primeSample_integral_eq_primitive A q hA hq]
      exact primePrimitiveSample_add_rankOne_abs_le A q hA (by linarith)
    _ = _ := by ring

/-- Unconditional homogeneity-defect bound for the actual real source remainder. -/
theorem homogeneity_defect_abs_le (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |q * deriv (realThetaRemainder A) q + realThetaRemainder A q / 2| ≤
      (32 * Real.sqrt (65 / 3) / A + 20 * (65 / (3 * A ^ 2)) +
        8 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt q := by
  rw [homogeneity_defect_eq A q hA (by linarith)]
  exact primeTheta_add_rankOne_abs_le A q hA hq

end
end HomogeneityDefectScratch

#print axioms HomogeneityDefectScratch.correlationPrimeSample
#print axioms HomogeneityDefectScratch.correlationPrimeSample_eq
#print axioms HomogeneityDefectScratch.correlationPrimeTheta
#print axioms HomogeneityDefectScratch.correlationPrimeTheta_eq
#print axioms HomogeneityDefectScratch.homogeneity_defect_eq
#print axioms HomogeneityDefectScratch.negativePrimePrimitive
#print axioms HomogeneityDefectScratch.negativePrimePrimitive_eq
#print axioms HomogeneityDefectScratch.negativePrimePrimitive_contDiff
#print axioms HomogeneityDefectScratch.negativePrimePrimitive_compact
#print axioms HomogeneityDefectScratch.negativePrimePrimitive_abs_le
#print axioms HomogeneityDefectScratch.negativePrimePrimitive_derivative_abs_le
#print axioms HomogeneityDefectScratch.negativePrimePrimitive_moments
#print axioms HomogeneityDefectScratch.negativePrimePrimitive_zero_right
#print axioms HomogeneityDefectScratch.primePrimitiveSample
#print axioms HomogeneityDefectScratch.primePrimitiveSample_eq
#print axioms HomogeneityDefectScratch.primeSample_rescaled_integrable
#print axioms HomogeneityDefectScratch.primeSample_integral_eq_primitive
#print axioms HomogeneityDefectScratch.sampling_zero
#print axioms HomogeneityDefectScratch.strict_sample_eq_padded
#print axioms HomogeneityDefectScratch.sampling_padded_endpoint_zero
#print axioms HomogeneityDefectScratch.primePrimitiveSample_add_rankOne_abs_le
#print axioms HomogeneityDefectScratch.difference_derivative_eq
#print axioms HomogeneityDefectScratch.difference_derivative_contDiff
#print axioms HomogeneityDefectScratch.difference_second_derivative_abs_le
#print axioms HomogeneityDefectScratch.difference_derivative_zero_right
#print axioms HomogeneityDefectScratch.difference_derivative_sampling_abs_le
#print axioms HomogeneityDefectScratch.primeSample_hasDerivAt
#print axioms HomogeneityDefectScratch.primeSample_derivative_abs_le
#print axioms HomogeneityDefectScratch.scaledPrimeSample_hasDerivAt
#print axioms HomogeneityDefectScratch.scaledPrimeSample_derivative_integrable
#print axioms HomogeneityDefectScratch.scaledPrimeSample_variation_le
#print axioms HomogeneityDefectScratch.primeSample_zero_of_exp_le
#print axioms HomogeneityDefectScratch.primeTheta_eq_padded_sum
#print axioms HomogeneityDefectScratch.primeTheta_sub_integral_abs_le
#print axioms HomogeneityDefectScratch.primeTheta_add_rankOne_abs_le
#print axioms HomogeneityDefectScratch.homogeneity_defect_abs_le
