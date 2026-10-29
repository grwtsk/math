-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.SourceFourierSmoothed.Variant8fd808a959b267060a66f1f2b74558fb773027fb287f2c38b7d778387a26d1af","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8fd808a959b267060a66f1f2b74558fb773027fb287f2c38b7d778387a26d1af","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.SourceFourierSmoothed.Variant8fd808a959b267060a66f1f2b74558fb773027fb287f2c38b7d778387a26d1af","mathematical_subject":"Analysis.Integration","original_sha256":"8fd808a959b267060a66f1f2b74558fb773027fb287f2c38b7d778387a26d1af","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/ZeroSmoothingFourierLimitsProbe.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ZeroLogarithmicNormProbe
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingTransform


namespace GRWTSK.Analysis.RealAnalysis.Integration.SourceFourierSmoothed.Variant8fd808a959b267060a66f1f2b74558fb773027fb287f2c38b7d778387a26d1af

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace ZeroSmoothingFourierLimits

open MeasureTheory Set Filter
open scoped Topology
open FormalResearch.RiemannHypothesis.SourcePairing
open ZeroSideTargets ZeroTestRegularity ZeroSmoothing ZeroSmoothingDerivative
open ZeroSmoothingMultiplier ZeroSmoothingTransform ZeroLogarithmicNorm

noncomputable section

theorem sourceFourier_smoothed (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) (ξ : ℝ) :
    sourceFourier (smoothedTest A ε hε) ξ =
      sourceFourier (actualTest A) ξ * multiplier ε hε (Complex.I * (ξ : ℂ)) :=
  smoothed_bilateral_transform A ε hA hε (Complex.I * (ξ : ℂ))

theorem multiplier_norm_le_one_fourier (ε : ℝ) (hε : 0 < ε) (ξ : ℝ) :
    ‖multiplier ε hε (Complex.I * (ξ : ℂ))‖ ≤ 1 := by
  simpa using multiplier_norm_le ε hε (Complex.I * (ξ : ℂ))

theorem sourceFourier_smoothed_norm_le (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) (ξ : ℝ) :
    ‖sourceFourier (smoothedTest A ε hε) ξ‖ ≤ ‖sourceFourier (actualTest A) ξ‖ := by
  rw [sourceFourier_smoothed A ε hA hε ξ, norm_mul]
  exact (mul_le_mul_of_nonneg_left (multiplier_norm_le_one_fourier ε hε ξ)
    (norm_nonneg _)).trans_eq (mul_one _)

theorem sourceFourier_smoothed_tendsto {ι : Type*} {l : Filter ι}
    (A : ℝ) (hA : 1 ≤ A) (ε : ι → ℝ) (hε : ∀ i, 0 < ε i)
    (hlim : Tendsto ε l (𝓝 0)) (ξ : ℝ) :
    Tendsto (fun i ↦ sourceFourier (smoothedTest A (ε i) (hε i)) ξ) l
      (𝓝 (sourceFourier (actualTest A) ξ)) := by
  simp_rw [sourceFourier_smoothed A _ hA]
  simpa using (multiplier_tendsto_one (Complex.I * (ξ : ℂ)) ε hε hlim).const_mul
    (sourceFourier (actualTest A) ξ)

theorem sourceFourier_testError (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) (ξ : ℝ) :
    sourceFourier (fun x ↦ smoothedTest A ε hε x - actualTest A x) ξ =
      sourceFourier (smoothedTest A ε hε) ξ - sourceFourier (actualTest A) ξ := by
  unfold sourceFourier
  simp_rw [Complex.ofReal_sub, sub_mul]
  exact integral_sub (smoothed_transform_integrand_integrable A ε hA hε (Complex.I * (ξ : ℂ)))
    (ZeroTransform.actual_integrable A (by linarith) (Complex.I * (ξ : ℂ)))

theorem sourceFourier_testError_norm_le (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) (ξ : ℝ) :
    ‖sourceFourier (fun x ↦ smoothedTest A ε hε x - actualTest A x) ξ‖ ≤
      2 * ‖sourceFourier (actualTest A) ξ‖ := by
  rw [sourceFourier_testError A ε hA hε ξ]
  calc
    _ ≤ ‖sourceFourier (smoothedTest A ε hε) ξ‖ + ‖sourceFourier (actualTest A) ξ‖ :=
      norm_sub_le _ _
    _ ≤ ‖sourceFourier (actualTest A) ξ‖ + ‖sourceFourier (actualTest A) ξ‖ :=
      add_le_add (sourceFourier_smoothed_norm_le A ε hA hε ξ) le_rfl
    _ = _ := by ring

theorem sourceFourier_testError_tendsto {ι : Type*} {l : Filter ι}
    (A : ℝ) (hA : 1 ≤ A) (ε : ι → ℝ) (hε : ∀ i, 0 < ε i)
    (hlim : Tendsto ε l (𝓝 0)) (ξ : ℝ) :
    Tendsto (fun i ↦ sourceFourier
      (fun x ↦ smoothedTest A (ε i) (hε i) x - actualTest A x) ξ) l (𝓝 0) := by
  simp_rw [sourceFourier_testError A _ hA]
  simpa using (sourceFourier_smoothed_tendsto A hA ε hε hlim ξ).sub_const
    (sourceFourier (actualTest A) ξ)


theorem sourceFourier_testError_normSq_le (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) (ξ : ℝ) :
    Complex.normSq (sourceFourier (fun x ↦ smoothedTest A ε hε x - actualTest A x) ξ) ≤
      4 * Complex.normSq (sourceFourier (actualTest A) ξ) := by
  rw [Complex.normSq_eq_norm_sq, Complex.normSq_eq_norm_sq]
  have h := (sq_le_sq₀ (norm_nonneg _) (by positivity)).2
    (sourceFourier_testError_norm_le A ε hA hε ξ)
  nlinarith

theorem actualTest_logarithmic_domain (A : ℝ) (hA : 1 ≤ A) :
    BridgeAdmissibility.LogarithmicDomain A (actualTest A) := by
  refine ⟨ZeroSmoothingL2.actualTest_memLp_two A hA, ?_, ?_⟩
  · exact Filter.Eventually.of_forall fun x hx ↦ actualTest_zero_of_notMem A hA x hx
  · exact BridgeFourier.logarithmic_fourier_integrable (actualTest A)
      (actualTest_integrable A hA) ((actualTest_contDiff A hA).differentiable one_ne_zero)
      (actualTest_deriv_integrable A hA)

theorem smoothedTest_logarithmic_domain (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    BridgeAdmissibility.LogarithmicDomain (A + ε) (smoothedTest A ε hε) := by
  refine ⟨ZeroSmoothingL2.smoothedTest_memLp_two A ε hA hε, ?_, ?_⟩
  · exact Filter.Eventually.of_forall fun x hx ↦ by
      apply Function.notMem_support.mp
      intro hs
      have h := smoothedTest_support_subset A ε hA hε hs
      apply hx
      constructor <;> linarith [h.1, h.2]
  · exact BridgeFourier.logarithmic_fourier_integrable (smoothedTest A ε hε)
      (smoothedTest_integrable A ε hA hε)
      ((smoothedTest_contDiff A ε hA hε).differentiable (by simp))
      (smoothedTest_deriv_integrable A ε hA hε)


theorem logarithmicWeight_continuous : Continuous logarithmicWeight := by
  unfold logarithmicWeight
  exact continuous_const.add (((show Continuous (fun ξ : ℝ ↦ 1 + 4 * ξ ^ 2) by fun_prop).log
    (by intro ξ; positivity)).div_const 2)

theorem actual_logarithmic_integrand_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun ξ ↦ logarithmicWeight ξ * Complex.normSq (sourceFourier (actualTest A) ξ))
      volume :=
  logarithmic_integrand_integrable (actualTest A) (actualTest_integrable A hA)
    ((actualTest_contDiff A hA).differentiable one_ne_zero) (actualTest_deriv_integrable A hA)

theorem error_logarithmic_integrand_integrable (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    Integrable (fun ξ ↦ logarithmicWeight ξ *
      Complex.normSq (sourceFourier (fun x ↦ smoothedTest A ε hε x - actualTest A x) ξ))
      volume := by
  have hc := BridgeFourier.sourceFourier_continuous
    ((smoothedTest_integrable A ε hA hε).sub (actualTest_integrable A hA))
  apply ((actual_logarithmic_integrand_integrable A hA).const_mul 4).mono'
    (logarithmicWeight_continuous.mul (Complex.continuous_normSq.comp hc)).aestronglyMeasurable
  exact Filter.Eventually.of_forall fun ξ ↦ by
    dsimp only [Pi.mul_apply, Function.comp_apply]
    rw [Real.norm_eq_abs, abs_of_nonneg (mul_nonneg (logarithmicWeight_nonneg ξ)
      (Complex.normSq_nonneg _))]
    calc
      _ ≤ logarithmicWeight ξ * (4 * Complex.normSq (sourceFourier (actualTest A) ξ)) :=
        mul_le_mul_of_nonneg_left (sourceFourier_testError_normSq_le A ε hA hε ξ)
          (logarithmicWeight_nonneg ξ)
      _ = _ := by ring

theorem error_rawLogarithmicEnergy_tendsto_zero {ι : Type*} {l : Filter ι}
    [l.IsCountablyGenerated] (A : ℝ) (hA : 1 ≤ A) (ε : ι → ℝ) (hε : ∀ i, 0 < ε i)
    (hlim : Tendsto ε l (𝓝 0)) :
    Tendsto (fun i ↦ rawLogarithmicEnergy
      (fun x ↦ smoothedTest A (ε i) (hε i) x - actualTest A x)) l (𝓝 0) := by
  have hbound : ∀ᶠ i in l, ∀ᵐ ξ ∂volume,
      ‖logarithmicWeight ξ * Complex.normSq
        (sourceFourier (fun x ↦ smoothedTest A (ε i) (hε i) x - actualTest A x) ξ)‖ ≤
      4 * (logarithmicWeight ξ * Complex.normSq (sourceFourier (actualTest A) ξ)) := by
    exact Filter.Eventually.of_forall fun i ↦ Filter.Eventually.of_forall fun ξ ↦ by
      rw [Real.norm_eq_abs, abs_of_nonneg (mul_nonneg (logarithmicWeight_nonneg ξ)
        (Complex.normSq_nonneg _))]
      have h := mul_le_mul_of_nonneg_left (sourceFourier_testError_normSq_le A (ε i) hA (hε i) ξ)
        (logarithmicWeight_nonneg ξ)
      nlinarith
  have hpoint : ∀ᵐ ξ ∂volume, Tendsto (fun i ↦ logarithmicWeight ξ * Complex.normSq
      (sourceFourier (fun x ↦ smoothedTest A (ε i) (hε i) x - actualTest A x) ξ)) l (𝓝 (0 : ℝ)) :=
    Filter.Eventually.of_forall fun ξ ↦ by
      have h := ((sourceFourier_testError_tendsto A hA ε hε hlim ξ).norm.pow 2).const_mul
        (logarithmicWeight ξ)
      simpa only [norm_zero, zero_pow two_ne_zero, mul_zero, Complex.normSq_eq_norm_sq] using h
  have h := tendsto_integral_filter_of_dominated_convergence
    (fun ξ ↦ 4 * (logarithmicWeight ξ * Complex.normSq (sourceFourier (actualTest A) ξ)))
    (Filter.Eventually.of_forall fun i ↦ (error_logarithmic_integrand_integrable A (ε i) hA (hε i)).1)
    hbound ((actual_logarithmic_integrand_integrable A hA).const_mul 4) hpoint
  simpa only [rawLogarithmicEnergy, integral_zero] using h

theorem error_sourceLogarithmicEnergy_tendsto_zero {ι : Type*} {l : Filter ι}
    [l.IsCountablyGenerated] (A : ℝ) (hA : 1 ≤ A) (ε : ι → ℝ) (hε : ∀ i, 0 < ε i)
    (hlim : Tendsto ε l (𝓝 0)) :
    Tendsto (fun i ↦ sourceLogarithmicEnergy
      (fun x ↦ smoothedTest A (ε i) (hε i) x - actualTest A x)) l (𝓝 0) := by
  simpa only [sourceLogarithmicEnergy, zero_div] using
    (error_rawLogarithmicEnergy_tendsto_zero A hA ε hε hlim).div_const (2 * Real.pi)

theorem error_sourceLogarithmicNorm_tendsto_zero {ι : Type*} {l : Filter ι}
    [l.IsCountablyGenerated] (A : ℝ) (hA : 1 ≤ A) (ε : ι → ℝ) (hε : ∀ i, 0 < ε i)
    (hlim : Tendsto ε l (𝓝 0)) :
    Tendsto (fun i ↦ Real.sqrt (sourceLogarithmicEnergy
      (fun x ↦ smoothedTest A (ε i) (hε i) x - actualTest A x))) l (𝓝 0) := by
  simpa only [Real.sqrt_zero] using
    (error_sourceLogarithmicEnergy_tendsto_zero A hA ε hε hlim).sqrt


theorem actual_archimedean_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun ξ ↦ archimedeanMultiplier ξ * Complex.normSq (sourceFourier (actualTest A) ξ))
      volume :=
  archimedean_integrable_of_c1 (actualTest A) (actualTest_integrable A hA)
    ((actualTest_contDiff A hA).differentiable one_ne_zero) (actualTest_deriv_integrable A hA)

theorem smoothed_archimedean_integrable (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    Integrable (fun ξ ↦ archimedeanMultiplier ξ *
      Complex.normSq (sourceFourier (smoothedTest A ε hε) ξ)) volume :=
  archimedean_integrable_of_c1 (smoothedTest A ε hε) (smoothedTest_integrable A ε hA hε)
    ((smoothedTest_contDiff A ε hA hε).differentiable (by simp))
    (smoothedTest_deriv_integrable A ε hA hε)

theorem sourceFourier_smoothed_normSq_le (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) (ξ : ℝ) :
    Complex.normSq (sourceFourier (smoothedTest A ε hε) ξ) ≤
      Complex.normSq (sourceFourier (actualTest A) ξ) := by
  rw [Complex.normSq_eq_norm_sq, Complex.normSq_eq_norm_sq]
  exact (sq_le_sq₀ (norm_nonneg _) (norm_nonneg _)).2
    (sourceFourier_smoothed_norm_le A ε hA hε ξ)

theorem archimedean_integral_tendsto {ι : Type*} {l : Filter ι} [l.IsCountablyGenerated]
    (A : ℝ) (hA : 1 ≤ A) (ε : ι → ℝ) (hε : ∀ i, 0 < ε i)
    (hlim : Tendsto ε l (𝓝 0)) :
    Tendsto (fun i ↦ ∫ ξ, archimedeanMultiplier ξ *
      Complex.normSq (sourceFourier (smoothedTest A (ε i) (hε i)) ξ)) l
      (𝓝 (∫ ξ, archimedeanMultiplier ξ * Complex.normSq (sourceFourier (actualTest A) ξ))) := by
  have hbound : ∀ᶠ i in l, ∀ᵐ ξ ∂volume,
      ‖archimedeanMultiplier ξ * Complex.normSq
        (sourceFourier (smoothedTest A (ε i) (hε i)) ξ)‖ ≤
      ‖archimedeanMultiplier ξ * Complex.normSq (sourceFourier (actualTest A) ξ)‖ :=
    Filter.Eventually.of_forall fun i ↦ Filter.Eventually.of_forall fun ξ ↦ by
      simp only [norm_mul, Real.norm_eq_abs, abs_of_nonneg (Complex.normSq_nonneg _)]
      exact mul_le_mul_of_nonneg_left (sourceFourier_smoothed_normSq_le A (ε i) hA (hε i) ξ)
        (abs_nonneg _)
  have hpoint : ∀ᵐ ξ ∂volume, Tendsto (fun i ↦ archimedeanMultiplier ξ *
      Complex.normSq (sourceFourier (smoothedTest A (ε i) (hε i)) ξ)) l
      (𝓝 (archimedeanMultiplier ξ * Complex.normSq (sourceFourier (actualTest A) ξ))) :=
    Filter.Eventually.of_forall fun ξ ↦ by
      have h := ((sourceFourier_smoothed_tendsto A hA ε hε hlim ξ).norm.pow 2).const_mul
        (archimedeanMultiplier ξ)
      simpa only [Complex.normSq_eq_norm_sq] using h
  exact tendsto_integral_filter_of_dominated_convergence
    (fun ξ ↦ ‖archimedeanMultiplier ξ * Complex.normSq (sourceFourier (actualTest A) ξ)‖)
    (Filter.Eventually.of_forall fun i ↦ (smoothed_archimedean_integrable A (ε i) hA (hε i)).1)
    hbound (actual_archimedean_integrable A hA).norm hpoint

end
end ZeroSmoothingFourierLimits
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
