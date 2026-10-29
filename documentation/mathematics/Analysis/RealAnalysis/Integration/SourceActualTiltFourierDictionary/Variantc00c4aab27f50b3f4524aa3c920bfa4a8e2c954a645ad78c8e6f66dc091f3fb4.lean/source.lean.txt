-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ActualTiltStandardSpectrum.Variant8c426d92cea7239db770397277a69ea26eff49a185c9a7c35e1ba6ef75ca2683","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8c426d92cea7239db770397277a69ea26eff49a185c9a7c35e1ba6ef75ca2683","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ActualTiltStandardSpectrum.Variant8c426d92cea7239db770397277a69ea26eff49a185c9a7c35e1ba6ef75ca2683","mathematical_subject":"Analysis.Integration","original_sha256":"8c426d92cea7239db770397277a69ea26eff49a185c9a7c35e1ba6ef75ca2683","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261007T115428Z-1791374068904471000/SourceActualTiltFourierDictionary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualTiltL2State
import FormalResearch.RiemannHypothesis.SourceL2FourierCompatibility
import SourceActualPrimeBumpDictionary

/-!
The actual tilted physical L2 state has the literal standard Fourier spectrum.
The frequency orientation is -2 pi xi; its ordinary square is the actual bump
Mellin weight. The modulus square is used only for state energy, not the head.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.Analysis.RealAnalysis.Integration.ActualTiltStandardSpectrum.Variant8c426d92cea7239db770397277a69ea26eff49a185c9a7c35e1ba6ef75ca2683

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualTiltFourierDictionary
open MeasureTheory Filter Set FourierTransform
open scoped FourierTransform
open SourceActualTiltEnergy SourceActualTiltL2State SourceReflectionDuality
open SourceActualComplexEndpointAsymptotic ActualComplexCorrelationSquare
open SourceActualBumpTransform SourceActualBumpMellinLineBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

/-- The actual tilted standard-frequency spectrum, with its entire complex phase. -/
def actualTiltStandardSpectrum (A ξ : ℝ) : ℂ :=
  actualSourceComplexTransform A (1 - ((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I)

/-- The literal complex physical representative is genuinely integrable. -/
theorem actualUnitTilt_complex_integrable {A : ℝ} (hA : 1 ≤ A) :
    Integrable (fun x => (actualUnitTilt A x : ℂ)) volume := by
  have hp : 0 < A := by linarith
  have hc : Continuous (actualUnitTilt A) :=
    (normalizedTest_contDiff A hp).continuous.mul Real.continuous_exp
  have hs : HasCompactSupport (actualUnitTilt A) :=
    (normalizedTest_hasCompactSupport A hp).mul_right
  exact (Complex.continuous_ofReal.comp hc).integrable_of_hasCompactSupport
    (hs.comp_left (g := Complex.ofReal) (by simp))

/-- The equivalence class has the same genuine whole-line L1 prerequisite. -/
theorem actualUnitTiltState_integrable {A : ℝ} (hA : 1 ≤ A) :
    Integrable (actualUnitTiltState A : ℝ → ℂ) volume :=
  (actualUnitTilt_complex_integrable hA).congr (actualUnitTiltState_coe_ae hA).symm

/-- Standard Bochner Fourier orientation agrees with the literal tilted Mellin argument. -/
theorem actualUnitTilt_fourier_eq {A : ℝ} (hA : 1 ≤ A) (ξ : ℝ) :
    𝓕 (fun x => (actualUnitTilt A x : ℂ)) ξ = actualTiltStandardSpectrum A ξ := by
  rw [Real.fourier_eq']
  have he (x : ℝ) :
      Complex.exp (-(2 * Real.pi * (x * ξ)) * Complex.I) * (actualUnitTilt A x : ℂ) =
      (normalizedTest explicitSecondDerivative A x : ℂ) *
        Complex.exp ((1 - ((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I) * (x : ℂ)) := by
    unfold actualUnitTilt
    push_cast
    rw [Complex.ofReal_exp]
    calc
      _ = (normalizedTest explicitSecondDerivative A x : ℂ) *
        (Complex.exp (-(2 * Real.pi * (x * ξ)) * Complex.I) * Complex.exp (x : ℂ)) := by ring
      _ = _ := by
        rw [← Complex.exp_add]
        congr 2
        ring
  simp_rw [he]
  rw [actualTiltStandardSpectrum, actualSourceComplexTransform,
    intervalIntegral.integral_of_le (by linarith), ← integral_Icc_eq_integral_Ioc]
  apply (setIntegral_eq_integral_of_forall_compl_eq_zero _).symm
  intro x hx
  rw [normalizedTest_eq_indicator A (by linarith : 0 < A), indicator_of_notMem hx]
  simp

/-- The actual Hilbert Fourier state equals this exact standard spectrum almost everywhere. -/
theorem actualUnitTiltState_fourier_coe_ae {A : ℝ} (hA : 1 ≤ A) :
    (𝓕 (actualUnitTiltState A) : ComplexL2) =ᵐ[volume] actualTiltStandardSpectrum A := by
  apply (SourceL2FourierCompatibility.fourier_coe_ae _
    (actualUnitTiltState_integrable hA)).trans
  exact Eventually.of_forall fun ξ =>
    (Real.fourier_congr_ae (actualUnitTiltState_coe_ae hA) ξ).trans
      (actualUnitTilt_fourier_eq hA ξ)

/-- The ordinary square retains the genuine bump weight and negative angular orientation. -/
theorem actualTiltStandardSpectrum_sq_eq_weight {A : ℝ} (hA : 1 ≤ A) (ξ : ℝ) :
    actualTiltStandardSpectrum A ξ ^ 2 =
      bumpMellinWeight A ((3 / 2 : ℂ) - ((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I) := by
  rw [actualTiltStandardSpectrum, ← actualBilateralCorrelationTransform_eq_square hA]
  have he : (1 : ℂ) - ((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I =
      ((3 / 2 : ℂ) - ((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I) - 1 / 2 := by ring
  rw [he, actualBilateralCorrelationTransform_eq_bump hA]
  rfl

/-- The energy density is the norm of the ordinary square; head phases are not replaced. -/
theorem actualTiltStandardSpectrum_norm_sq_eq_weight_norm {A : ℝ} (hA : 1 ≤ A) (ξ : ℝ) :
    ‖actualTiltStandardSpectrum A ξ‖ ^ 2 =
      ‖bumpMellinWeight A ((3 / 2 : ℂ) - ((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I)‖ := by
  rw [← norm_pow, actualTiltStandardSpectrum_sq_eq_weight hA]

end FormalResearch.RiemannHypothesis.SourceActualTiltFourierDictionary
