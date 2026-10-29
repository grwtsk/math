-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualShortCubicErrorPlusPlainCalibrationLt.Variante4fd6c04a41ac616b088bb32108419892a4b37d8653a085dd012b0d20dfb8e51","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e4fd6c04a41ac616b088bb32108419892a4b37d8653a085dd012b0d20dfb8e51","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualShortCubicErrorPlusPlainCalibrationLt.Variante4fd6c04a41ac616b088bb32108419892a4b37d8653a085dd012b0d20dfb8e51","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"e4fd6c04a41ac616b088bb32108419892a4b37d8653a085dd012b0d20dfb8e51","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/e4fd6c04a41ac616b088-SourceActualCubicShortCalibration.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualCubicCenteredRows
import CubicCoefficientCalibration

/-!
# Checked calibration of the actual complete short cubic error inventory

AI attribution: OpenAI Codex. The 3/50 budget includes the actual full 1..U
centered cubic derivative error plus the supplied scalar 260/A^2 calibration.
The complementary U<d<=N error remains explicit. This is not a calibration
of a complete Omega quantity and supplies no uniform arithmetic witness.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualShortCubicErrorPlusPlainCalibrationLt.Variante4fd6c04a41ac616b088bb32108419892a4b37d8653a085dd012b0d20dfb8e51

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualCubicShortCalibration

open scoped BigOperators
open SourceActualCubicCenteredRows RH16IndependentChallengeNext
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimateMertensAbel

noncomputable section

/-- Actual short error with no row deleted, combined with the genuine scalar certificate. -/
theorem actual_short_cubic_error_plus_plain_calibration_lt (A : ℝ) (hA : 91 ≤ A) :
    260 / A ^ 2 +
      |∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
        cubicCenteredLogErrorRow A (d : ℝ)| < 3 / 50 := by
  exact (add_le_add le_rfl (actual_cubic_short_divisor_sum_abs_le A hA)).trans_lt
    (refined_cubic_calibration_budget_lt A hA)

/-- The same finite full inventory still retains the complete complementary signed error. -/
theorem actual_full_cubic_error_plus_plain_calibration_lt_with_complement (A : ℝ) (hA : 91 ≤ A) :
    260 / A ^ 2 +
      |∑ d ∈ Finset.Icc 1 (sourceKernelCutoff A), realMoebius d *
        cubicCenteredLogErrorRow A (d : ℝ)| < 3 / 50 +
      |∑ d ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A), realMoebius d *
        cubicCenteredLogErrorRow A (d : ℝ)| := by
  have he := actual_cubic_full_divisor_sum_eq_short_add_complement A (by linarith)
  rw [he]
  have hs := actual_short_cubic_error_plus_plain_calibration_lt A hA
  have ht := abs_add_le
    (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      cubicCenteredLogErrorRow A (d : ℝ))
    (∑ d ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A), realMoebius d *
      cubicCenteredLogErrorRow A (d : ℝ))
  linarith only [hs, ht]

end
end FormalResearch.RiemannHypothesis.SourceActualCubicShortCalibration
