-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.KernelQuarterQuadratic.Variant75171ed09346008a230d9f27aa7545f8c893d30ec697d34af3131cf6f240134a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"75171ed09346008a230d9f27aa7545f8c893d30ec697d34af3131cf6f240134a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.KernelQuarterQuadratic.Variant75171ed09346008a230d9f27aa7545f8c893d30ec697d34af3131cf6f240134a","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"75171ed09346008a230d9f27aa7545f8c893d30ec697d34af3131cf6f240134a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261007T045830Z-1791349110856576000/SourceActualArchimedeanUpper.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualSecondFourierMoment
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceCorrectionEstimate

/-!
The actual quarter-digamma series has a quadratic frequency upper bound. Genuine
Fourier second-moment normalization transports it to the unchanged archimedean
value, with its original multiplier, normalized source and full-line integral.
No signed prime-power, zero-head or original Estimate witness is inferred.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.KernelQuarterQuadratic.Variant75171ed09346008a230d9f27aa7545f8c893d30ec697d34af3131cf6f240134a

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualArchimedeanUpper
open MeasureTheory
open SourcePairing SourceDerivativeEnergy SourceActualSecondFourierMoment
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity BridgeFourier SourcePlancherel BridgeAdmissibility
open FormalResearch.Analysis.ReciprocalKernel
noncomputable section

/-- At the genuine quarter endpoint, the positive series kernel is quadratic in frequency. -/
theorem kernel_quarter_quadratic (b : ℝ) : kernel b (1 / 4) ≤ 64 * b^2 := by
  unfold kernel
  apply (div_le_iff₀ (by positivity : (0 : ℝ) < 1 / 4 * ((1 / 4)^2 + b^2))).mpr
  nlinarith [sq_nonneg (b^2)]

/-- The proved actual quarter-digamma series retains its sharper quadratic budget. -/
theorem actual_multiplier_quadratic_upper (ξ : ℝ) :
    archimedeanMultiplier ξ ≤ archimedeanMultiplier 0 + 18 * ξ^2 := by
  have hsum := (kernel_sum_bounds (ξ / 2) (1 / 4) (by norm_num)).2
  have hk := kernel_quarter_quadratic (ξ / 2)
  have hl := Real.log_le_sub_one_of_pos (by positivity : (0 : ℝ) < 1 + 4 * ξ^2)
  have hs := (AdmissionSource.quarter_series ξ).tsum_eq
  have hzero : archimedeanMultiplier 0 = -archimedeanConstant := by
    simp [archimedeanMultiplier, archimedeanConstant]
  have he : 1 + (ξ / 2)^2 * ((1 / 4 : ℝ)⁻¹)^2 = 1 + 4 * ξ^2 := by norm_num; ring
  rw [he, hs] at hsum
  rw [hzero]
  nlinarith

/-- Genuine integrability and mass transport the quadratic multiplier bound to the actual value. -/
theorem actual_archimedean_upper_by_derivative_energy {A : ℝ} (hA : 1 ≤ A) :
    archimedeanValue explicitSecondDerivative A ≤ archimedeanMultiplier 0 +
      18 * (∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x)^2) := by
  have hmajor := ((actual_fourier_square_integrable A hA).const_mul
      (archimedeanMultiplier 0)).add
    ((actual_source_second_moment_integrable hA).const_mul 18)
  have h := integral_mono (AdmissionSource.archimedean_integrability A hA) hmajor
    (fun ξ => show archimedeanIntegrand explicitSecondDerivative A ξ ≤
      archimedeanMultiplier 0 * Complex.normSq
        (sourceFourier (normalizedTest explicitSecondDerivative A) ξ) +
      18 * (ξ^2 * Complex.normSq
        (sourceFourier (normalizedTest explicitSecondDerivative A) ξ)) from by
      dsimp only [archimedeanIntegrand]
      have hb := mul_le_mul_of_nonneg_right (actual_multiplier_quadratic_upper ξ)
        (Complex.normSq_nonneg (sourceFourier (normalizedTest explicitSecondDerivative A) ξ))
      nlinarith)
  simp only [Pi.add_apply] at h
  rw [integral_add ((actual_fourier_square_integrable A hA).const_mul _)
      ((actual_source_second_moment_integrable hA).const_mul _),
    integral_const_mul, integral_const_mul, actual_source_fourier_mass A hA,
    actual_source_second_moment hA] at h
  unfold archimedeanValue
  apply (div_le_iff₀ (by positivity : (0 : ℝ) < 2 * Real.pi)).mpr
  nlinarith

/-- All real scales A≥1 have the explicit original archimedean upper bound. -/
theorem actual_archimedean_quadratic_upper {A : ℝ} (hA : 1 ≤ A) :
    archimedeanValue explicitSecondDerivative A ≤ archimedeanMultiplier 0 +
      (18 * (162826 / 7623 : ℝ)) / A^2 := by
  apply (actual_archimedean_upper_by_derivative_energy hA).trans
  have hpos : 0 < A^2 := by nlinarith
  have henergy := actual_derivative_energy_upper hA
  have he : (∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x)^2) ≤
      (162826 / 7623 : ℝ) / A^2 := (le_div_iff₀ hpos).mpr (by nlinarith)
  rw [mul_div_assoc]
  exact add_le_add_left (mul_le_mul_of_nonneg_left he (by norm_num)) _

/-- Both sides constrain the actual analytic value; the signed target remains separate. -/
theorem actual_archimedean_two_sided {A : ℝ} (hA : 1 ≤ A) :
    0 ≤ archimedeanValue explicitSecondDerivative A - archimedeanMultiplier 0 ∧
    archimedeanValue explicitSecondDerivative A - archimedeanMultiplier 0 ≤
      (18 * (162826 / 7623 : ℝ)) / A^2 := by
  have hlo := SourceCorrectionEstimate.actual_archimedean_lower A hA
  have hhi := actual_archimedean_quadratic_upper hA
  constructor <;> linarith

end
end FormalResearch.RiemannHypothesis.SourceActualArchimedeanUpper
