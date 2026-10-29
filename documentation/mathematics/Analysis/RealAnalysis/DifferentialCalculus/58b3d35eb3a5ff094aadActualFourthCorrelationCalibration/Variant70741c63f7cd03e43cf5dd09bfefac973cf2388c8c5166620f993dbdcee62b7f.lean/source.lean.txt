-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualCorrelationContDiffFour.Variant58b3d35eb3a5ff094aadca1df4e2e3046eaf6c909b4c27da8adcc2df4c953b70","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"58b3d35eb3a5ff094aadca1df4e2e3046eaf6c909b4c27da8adcc2df4c953b70","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ActualCorrelationContDiffFour.Variant58b3d35eb3a5ff094aadca1df4e2e3046eaf6c909b4c27da8adcc2df4c953b70","mathematical_subject":"Analysis.Calculus","original_sha256":"58b3d35eb3a5ff094aadca1df4e2e3046eaf6c909b4c27da8adcc2df4c953b70","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/58b3d35eb3a5ff094aad-ActualFourthCorrelationCalibration.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualFourthCorrelationDerivative

/-!
Global C4 regularity and the actual normalized fourth-correlation budget.
The underlying source retains the two jumps in its second derivative profile.
These analytic consequences do not supply a signed arithmetic bound.
AI attribution: OpenAI Codex independent mathematical research.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualCorrelationContDiffFour.Variant58b3d35eb3a5ff094aadca1df4e2e3046eaf6c909b4c27da8adcc2df4c953b70

set_option autoImplicit false

namespace RH16IndependentChallengeNext

open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceCorrelationCurvature
open FormalResearch.RiemannHypothesis.SourceSecondProfileCorrelation
open FormalResearch.RiemannHypothesis.SourceSecondProfileContinuity
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

noncomputable section

/-- The actual correlation is globally C4, including both moving support seams. -/
theorem actual_correlation_contDiff_four (A : ℝ) (hA : 0 < A) :
    ContDiff ℝ 4 (sourceCorrelation explicitSecondDerivative A) := by
  let C := sourceCorrelation explicitSecondDerivative A
  have h2 : Differentiable ℝ (deriv (deriv C)) :=
    fun t => (actual_correlation_third_derivative A hA t).differentiableAt
  have h3 : Differentiable ℝ (deriv (deriv (deriv C))) :=
    fun t => (actual_correlation_fourth_derivative A hA t).differentiableAt
  have hc2 : ContDiff ℝ 1 (deriv (deriv C)) :=
    contDiff_one_iff_deriv.mpr ⟨h2, h3.continuous⟩
  have he : deriv (deriv (deriv (deriv C))) = actualSecondProfileCorrelation A :=
    funext fun t => actual_correlation_fourth_derivative_eq A hA t
  have hc3 : ContDiff ℝ 1 (deriv (deriv (deriv C))) :=
    contDiff_one_iff_deriv.mpr
      ⟨h3, by rw [he]; exact actualSecondProfileCorrelation_continuous A hA⟩
  have hC3 : ContDiff ℝ 3 C := by
    apply (contDiff_nat_succ_iff_contDiff_one_iteratedDeriv (n := 2)).mpr
    exact ⟨sourceCorrelation_contDiff_two hA,
      by simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using hc2⟩
  apply (contDiff_nat_succ_iff_contDiff_one_iteratedDeriv (n := 3)).mpr
  exact ⟨hC3, by simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using hc3⟩

/-- The standard iterated derivative has the same actual profile correlation. -/
theorem actual_correlation_iterated_fourth_eq (A : ℝ) (hA : 0 < A) (t : ℝ) :
    iteratedDeriv 4 (sourceCorrelation explicitSecondDerivative A) t =
      actualSecondProfileCorrelation A t := by
  simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using
    actual_correlation_fourth_derivative_eq A hA t

/-- The exact 67 coefficient bounds the ordinary fourth derivative at all real separations. -/
theorem actual_correlation_fourth_abs_le_sixty_seven (A t : ℝ) (hA : 91 ≤ A) :
    |deriv (deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A)))) t| ≤
      67 / A ^ 4 := by
  rw [actual_correlation_fourth_derivative_eq A (by linarith) t]
  exact actualSecondProfileCorrelation_abs_le_sixty_seven A t hA

/-- The exact 67 coefficient also bounds the standard iterated fourth derivative. -/
theorem actual_correlation_iterated_fourth_abs_le_sixty_seven
    (A t : ℝ) (hA : 91 ≤ A) :
    |iteratedDeriv 4 (sourceCorrelation explicitSecondDerivative A) t| ≤ 67 / A ^ 4 := by
  rw [actual_correlation_iterated_fourth_eq A (by linarith) t]
  exact actualSecondProfileCorrelation_abs_le_sixty_seven A t hA

end
end RH16IndependentChallengeNext
