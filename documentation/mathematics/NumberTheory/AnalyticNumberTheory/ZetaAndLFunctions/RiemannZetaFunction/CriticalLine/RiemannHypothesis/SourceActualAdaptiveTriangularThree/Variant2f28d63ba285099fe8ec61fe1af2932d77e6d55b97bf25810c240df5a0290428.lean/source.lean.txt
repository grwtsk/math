-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceEndpointAbsLeThree.Variant7f280192fa518cdf7224e2b71698c55b41fe66d59c6ba681ea5c5a4027c93c4f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7f280192fa518cdf7224e2b71698c55b41fe66d59c6ba681ea5c5a4027c93c4f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceEndpointAbsLeThree.Variant7f280192fa518cdf7224e2b71698c55b41fe66d59c6ba681ea5c5a4027c93c4f","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"7f280192fa518cdf7224e2b71698c55b41fe66d59c6ba681ea5c5a4027c93c4f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261006T223005Z-1791325805254797000/SourceActualAdaptiveTriangularThree.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceAdaptiveTriangularConsumer
import SourceEndpointThree

/-!
Apply the proved literal endpoint-three budget to the original finite adaptive
triangular source certificate. The signed triangular upper premise remains
explicit; the same real validity radius and original finite prefix are retained.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceEndpointAbsLeThree.Variant7f280192fa518cdf7224e2b71698c55b41fe66d59c6ba681ea5c5a4027c93c4f

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualAdaptiveTriangularThree
open SourceAdaptiveTriangularConsumer SourceStrictEnergyConsumer
open SourceStrictColumnInterior SourceSamplingLedger SourceVaughanHankel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual
noncomputable section

/-- This is the unchanged literal endpoint inside the original triangular compensation. -/
theorem sourceEndpoint_abs_le_three (A : ℝ) (hA : 1 ≤ A) :
    |sourceEndpoint A| ≤ 3 :=
  SourceEndpointThree.actual_centered_column_endpoint_abs_le_three A hA

/-- The half-unit finite discrepancy and actual endpoint-three are charged exactly once. -/
theorem residual_upper_of_actualTriangular_upper (A D C_F : ℝ) (hA : 1 ≤ A)
    (hG : triangularInterior A ≤ D)
    (hF : |EstimateBetaSourceRecombination.betaMainLedger A + independentMainTerm A| ≤ C_F) :
    mertensResidual A ≤ D + 1 / 2 + 3 + C_F := by
  have hc := (abs_le.mp (strictInterior_triangular_discrepancy A hA)).2
  have hs := covariance_sub_main_eq_strictColumnInterior_add_endpoint A hA
  have he := (abs_le.mp (sourceEndpoint_abs_le_three A hA)).2
  have hr := actual_residual_decomposition A hA
  have hf := (abs_le.mp hF).2
  change VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A =
    strictColumnInterior A + sourceEndpoint A at hs
  linarith

/-- The original actual signed tail premise remains at its original all-real radius. -/
theorem residual_tail_of_actualTriangular_tail (D R : ℝ) (_hD : 0 ≤ D) (hR : 1 ≤ R)
    (hG : ∀ A : ℝ, R ≤ A → triangularInterior A ≤ D) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, R ≤ A →
      mertensResidual A ≤ D + 1 / 2 + 3 + C_F := by
  obtain ⟨C_F, hF0, hF⟩ := actual_ledger_uniform_error
  refine ⟨C_F, hF0, ?_⟩
  intro A hRA
  exact residual_upper_of_actualTriangular_upper A D C_F (hR.trans hRA)
    (hG A hRA) (hF A (hR.trans hRA))

/-- The unchanged original finite-prefix consumer supplies the original Estimate obligation. -/
theorem estimate_of_actualTriangular_tail (D R : ℝ) (hD : 0 ≤ D) (hR : 1 ≤ R)
    (hG : ∀ A : ℝ, R ≤ A → triangularInterior A ≤ D) :
    CorrelationAssembly.EstimateObligation := by
  obtain ⟨C_F, hF0, hF⟩ := residual_tail_of_actualTriangular_tail D R hD hR hG
  exact estimate_of_mertens_residual_tail
    ⟨D + 1 / 2 + 3 + C_F, by linarith, R, hR, hF⟩

end
end FormalResearch.RiemannHypothesis.SourceActualAdaptiveTriangularThree
