-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ActualSecondDerivativeEnergyLeGlobal.Variant13f400b54d45f615ad9f74dbda82955106e38eebccf743fa53f1d38d82659963","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"13f400b54d45f615ad9f74dbda82955106e38eebccf743fa53f1d38d82659963","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ActualSecondDerivativeEnergyLeGlobal.Variant13f400b54d45f615ad9f74dbda82955106e38eebccf743fa53f1d38d82659963","mathematical_subject":"Analysis.Integration","original_sha256":"13f400b54d45f615ad9f74dbda82955106e38eebccf743fa53f1d38d82659963","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/13f400b54d45f615ad9f-ActualSecondEnergyCalibration.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualSecondDerivativeEnergy

/-!
Actual-source second-derivative energy calibration for the cubic proposal.
The scalar ratio now applies to the proved literal source energy. Correlation
C4 regularity, cubic Euler cells, full Omega reconstruction and the signed
Omega upper witness remain separate obligations.
AI attribution: OpenAI Codex independent mathematical research.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ActualSecondDerivativeEnergyLeGlobal.Variant13f400b54d45f615ad9f74dbda82955106e38eebccf743fa53f1d38d82659963

set_option autoImplicit false

namespace RH16IndependentChallengeNext

open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceDerivativeCoefficientBound
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

/-- The paper's original global coefficient is a bound on the actual literal energy. -/
theorem actual_second_derivative_energy_le_global (A : ℝ) (hA : 0 < A) :
    A ^ 4 * (∫ x : ℝ,
      (deriv (deriv (normalizedTest explicitSecondDerivative A)) x) ^ 2) ≤ 5005 / 6 := by
  rw [actual_second_derivative_energy_eq A hA]
  apply (div_le_iff₀ (normPolynomial_pos ((A ^ 2)⁻¹) (by positivity))).2
  unfold fourthDisplacementEnergyPolynomial normPolynomial
  have hr : 0 ≤ (A ^ 2)⁻¹ := by positivity
  nlinarith

/-- The sharper coefficient applies to every real source scale at least 91. -/
theorem actual_second_derivative_energy_le_sixty_seven (A : ℝ) (hA : 91 ≤ A) :
    A ^ 4 * (∫ x : ℝ,
      (deriv (deriv (normalizedTest explicitSecondDerivative A)) x) ^ 2) ≤ 67 := by
  rw [actual_second_derivative_energy_eq A (by linarith : 0 < A)]
  exact cubic_energy_ratio_le_sixty_seven_of_scale A hA

/-- The actual norm-square energy has the quantitative scale factor required by cubic Taylor. -/
theorem actual_second_derivative_square_integral_le_sixty_seven (A : ℝ) (hA : 91 ≤ A) :
    (∫ x : ℝ,
      (deriv (deriv (normalizedTest explicitSecondDerivative A)) x) ^ 2) ≤ 67 / A ^ 4 := by
  apply (le_div_iff₀ (pow_pos (by linarith : 0 < A) 4)).2
  simpa only [mul_comm] using actual_second_derivative_energy_le_sixty_seven A hA

end RH16IndependentChallengeNext
