-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ScalarContinuumAnchorNormLeTwo.Variant7ad2fa912f97a1452e374a251d30e3e2f7419dce0d6e4991f480cb41b6745bb4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7ad2fa912f97a1452e374a251d30e3e2f7419dce0d6e4991f480cb41b6745bb4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ScalarContinuumAnchorNormLeTwo.Variant7ad2fa912f97a1452e374a251d30e3e2f7419dce0d6e4991f480cb41b6745bb4","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"7ad2fa912f97a1452e374a251d30e3e2f7419dce0d6e4991f480cb41b6745bb4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/source-projection-readout/ScalarNormProbe.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceProjectionReadout
import FormalResearch.RiemannHypothesis.SourceMangoldtNorm


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ScalarContinuumAnchorNormLeTwo.Variant7ad2fa912f97a1452e374a251d30e3e2f7419dce0d6e4991f480cb41b6745bb4

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceProjectionScalarNorm

open SourceProjectionReadout SourceMangoldtInteraction SourceMangoldtNorm
open SourceFirstPrimeAbel SourceReflectionDuality

theorem scalarContinuumAnchor_norm_le_two (A : ℝ) (hA : 1 ≤ A) :
    ‖scalarContinuumAnchor A‖ ≤ 2 := by
  unfold scalarContinuumAnchor
  calc
    _ ≤ ‖(criticalContinuousMoment A : ℂ)‖ * ‖ContinuousLinearMap.id ℂ ComplexL2‖ :=
      norm_smul_le _ _
    _ ≤ ‖(criticalContinuousMoment A : ℂ)‖ * 1 :=
      mul_le_mul_of_nonneg_left ContinuousLinearMap.norm_id_le (norm_nonneg _)
    _ = |criticalContinuousMoment A| := by
      rw [Complex.norm_real, Real.norm_eq_abs, mul_one]
    _ ≤ 2 := criticalContinuousMoment_abs_le_two A hA

theorem scalarCompensatedPrimeOperator_norm_lower {A : ℝ} (hA : 1 ≤ A) :
    2 * A - Real.log 2 - 3 ≤ ‖scalarCompensatedPrimeOperator A‖ := by
  have hm := mangoldtInteraction_norm_lower hA
  have hc := scalarContinuumAnchor_norm_le_two A hA
  have hn := norm_sub_norm_le (mangoldtInteraction A) (scalarContinuumAnchor A)
  change ‖mangoldtInteraction A‖ - ‖scalarContinuumAnchor A‖ ≤
    ‖scalarCompensatedPrimeOperator A‖ at hn
  linarith

theorem scalarCompensatedPrimeOperator_norm_not_eventually_bounded :
    ¬ ∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧
      ∀ A : ℝ, R ≤ A → ‖scalarCompensatedPrimeOperator A‖ ≤ D := by
  rintro ⟨D, _, R, hR, h⟩
  let A : ℝ := max R (D + Real.log 2 + 4)
  have hAR : R ≤ A := le_max_left _ _
  have hAD : D + Real.log 2 + 4 ≤ A := le_max_right _ _
  have hl := scalarCompensatedPrimeOperator_norm_lower (hR.trans hAR)
  have hu := h A hAR
  linarith

end FormalResearch.RiemannHypothesis.SourceProjectionScalarNorm
