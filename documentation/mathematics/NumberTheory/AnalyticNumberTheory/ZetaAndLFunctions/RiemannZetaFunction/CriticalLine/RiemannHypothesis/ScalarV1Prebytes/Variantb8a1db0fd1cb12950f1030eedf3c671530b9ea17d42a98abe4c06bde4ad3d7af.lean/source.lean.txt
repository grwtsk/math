-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.GreenKernel.Varianta2b873c147f5408d441512c5bcc3d676dd1bdbe9c365f22dc4d984c66dc2771e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a2b873c147f5408d441512c5bcc3d676dd1bdbe9c365f22dc4d984c66dc2771e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.GreenKernel.Varianta2b873c147f5408d441512c5bcc3d676dd1bdbe9c365f22dc4d984c66dc2771e","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"a2b873c147f5408d441512c5bcc3d676dd1bdbe9c365f22dc4d984c66dc2771e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle7/source-green/scalar-v1-prebytes.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy
import FormalResearch.RiemannHypothesis.SourceHankelReflection

/-!
# The literal source's scalar Green pairing

The independently defined continuous full-line Green kernel and convolution
retain the original normalized, zero-extended source. These scalar identities
do not construct a resolvent operator, identify a Jacobi or theta object,
or bound the signed arithmetic work.

AI attribution: developed with OpenAI Codex; Lean checks proof terms.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.GreenKernel.Varianta2b873c147f5408d441512c5bcc3d676dd1bdbe9c365f22dc4d984c66dc2771e

namespace FormalResearch.RiemannHypothesis.SourceGreenKernel

open MeasureTheory Set Function
open SourcePairing SourceCausalEnergy SourceContinuousHalfEnergy SourceFirstPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual

noncomputable section

/-- The coefficient-one massive Green kernel on the continuous full line. -/
def greenKernel (t : ℝ) : ℝ := Real.exp (-|t| / 2)

/-- An independent whole-line pairing with the unchanged source correlation. -/
def sourceGreenPairing (A : ℝ) : ℝ :=
  ∫ t : ℝ, greenKernel t * sourceCorrelation explicitSecondDerivative A t

/-- The literal integral convolution, before its special source cancellation. -/
def sourceGreenConvolution (A x : ℝ) : ℝ :=
  ∫ y : ℝ, greenKernel (x - y) * normalizedTest explicitSecondDerivative A y

/-- Continuity includes the kernel's absolute-value seam. -/
theorem greenKernel_continuous : Continuous greenKernel :=
  Real.continuous_exp.comp (continuous_abs.neg.div_const 2)

/-- The continuous full-line kernel is even. -/
theorem greenKernel_even (t : ℝ) : greenKernel (-t) = greenKernel t := by
  simp [greenKernel]

/-- The independently defined pairing integrand is genuinely integrable. -/
theorem sourceGreenPairing_integrable {A : ℝ} (hA : 0 < A) :
    Integrable (fun t : ℝ ↦ greenKernel t * sourceCorrelation explicitSecondDerivative A t) :=
  (greenKernel_continuous.mul (sourceCorrelation_contDiff A hA).continuous)
    .integrable_of_hasCompactSupport ((sourceCorrelation_hasCompactSupport A hA).mul_left)

/-- Each actual-source convolution section is genuinely integrable. -/
theorem sourceGreenConvolution_integrable {A : ℝ} (hA : 0 < A) (x : ℝ) :
    Integrable (fun y : ℝ ↦ greenKernel (x-y) * normalizedTest explicitSecondDerivative A y) :=
  ((greenKernel_continuous.comp (continuous_const.sub continuous_id)).mul
    (normalizedTest_contDiff A hA).continuous).integrable_of_hasCompactSupport
      ((normalizedTest_hasCompactSupport A hA).mul_left)

/-- Correlation support and evenness retain both halves and the zero seam. -/
theorem sourceGreenPairing_eq_twice_negativeSmoothMoment {A : ℝ} (hA : 0 < A) :
    sourceGreenPairing A = 2 * negativeSmoothMoment A := by
  let F := fun t : ℝ ↦ greenKernel t * sourceCorrelation explicitSecondDerivative A t
  have hc : Continuous F :=
    greenKernel_continuous.mul (sourceCorrelation_contDiff A hA).continuous
  have hs : Function.support F ⊆ Ioc (-(2*A)) (2*A) := by
    intro t ht
    have hn : |t| < 2*A := by
      by_contra hn
      apply ht
      dsimp only [F]
      rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A t hA (le_of_not_gt hn), mul_zero]
    exact ⟨by linarith [neg_abs_le t], (le_abs_self t).trans hn.le⟩
  have hfull := intervalIntegral.integral_eq_integral_of_support_subset (μ := volume) hs
  have he : (fun t : ℝ ↦ F (-t)) = F := by
    funext t
    dsimp only [F]
    rw [greenKernel_even, sourceCorrelation_even]
  have heven : (∫ t in -(2*A)..0, F t) = ∫ t in 0..2*A, F t := by
    have hn := intervalIntegral.integral_comp_neg F (a := -(2*A)) (b := 0)
    rw [he] at hn
    simpa using hn
  have hadd := intervalIntegral.integral_add_adjacent_intervals
    (hc.intervalIntegrable (μ := volume) (-(2*A)) 0)
    (hc.intervalIntegrable (μ := volume) 0 (2*A))
  have hpos : (∫ t in 0..2*A, F t) = negativeSmoothMoment A := by
    unfold negativeSmoothMoment
    apply intervalIntegral.integral_congr
    intro t ht
    rw [uIcc_of_le (by linarith : (0 : ℝ) ≤ 2*A)] at ht
    dsimp only [F, greenKernel]
    rw [abs_of_nonneg ht.1]
  rw [heven, hfull] at hadd
  change (∫ t : ℝ, F t) = _
  rw [← hpos]
  linarith

/-- The full Green pairing is the positive causal energy of the literal source. -/
theorem sourceGreenPairing_eq_causal_energy {A : ℝ} (hA : 0 < A) :
    sourceGreenPairing A = ∫ x : ℝ, causalSourceTail A x ^ 2 := by
  rw [sourceGreenPairing_eq_twice_negativeSmoothMoment hA,
    negativeSmoothMoment_eq_half_causal_energy hA]
  ring

/-- The original critical half uses only its recorded radius domain. -/
theorem criticalContinuousMoment_eq_neg_half_green {A : ℝ} (hA : 1 ≤ A) :
    criticalContinuousMoment A = -(1/2) * sourceGreenPairing A := by
  rw [sourceGreenPairing_eq_causal_energy (by linarith : 0 < A)]
  exact criticalContinuousMoment_eq_neg_half_causal_energy hA

end

end FormalResearch.RiemannHypothesis.SourceGreenKernel
