-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CenteredErrorExpMassNonneg.Variantc15f77d91dfa7f86dd4b181963423c6053b4badda7d578e86a803836638e152d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c15f77d91dfa7f86dd4b181963423c6053b4badda7d578e86a803836638e152d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.CenteredErrorExpMassNonneg.Variantc15f77d91dfa7f86dd4b181963423c6053b4badda7d578e86a803836638e152d","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"c15f77d91dfa7f86dd4b181963423c6053b4badda7d578e86a803836638e152d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/SourceAnchoredMixedWorkBound.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceCenteredMixedWorkEnvelope

/-!
# Quantitative bound for the actual anchored lower boundary and work

AI attribution: OpenAI Codex. The arithmetic error is anchored at its own
original lower cutoff. The equality cancels the source lower boundary with
the shifted work before taking a norm. The centered error mass remains a
real function of A and is not replaced by a presumed signed witness.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CenteredErrorExpMassNonneg.Variantc15f77d91dfa7f86dd4b181963423c6053b4badda7d578e86a803836638e152d

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceAnchoredMixedWorkBound

open MeasureTheory
open scoped Interval
open SourceMangoldtAbel SourceJointMangoldtWork SourceConstantOffsetCancellation
open SourceCenteredMixedWorkEnvelope SourceColumnEnvelopeMass
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource

/-- The actual shifted error mass is nonnegative on the original source window. -/
theorem centeredErrorExpMass_nonneg (A offset : ℝ) (hA : 1 ≤ A) :
    0 ≤ centeredErrorExpMass A offset := by
  unfold centeredErrorExpMass
  apply intervalIntegral.integral_nonneg (actual_log_cutoff_bounds A hA).2
  intro t _
  positivity

/-- The original column mass bound transports without changing the shifted error mass. -/
theorem centeredErrorWork_abs_le_twiceA_mass (A offset : ℝ) (hA : 1 ≤ A) :
    |centeredErrorWork A offset| ≤ 2 * A *
      (162826 / (7623 * A ^ 2) + 1 / 4) * centeredErrorExpMass A offset := by
  let c := 162826 / (7623 * A ^ 2) + (1 / 4 : ℝ)
  have hc : 0 ≤ c := by dsimp only [c]; positivity
  have he0 := centeredErrorExpMass_nonneg A offset hA
  calc
    _ ≤ c * centeredErrorExpMass A offset * columnEnvelopeMass A :=
      centeredErrorWork_abs_le_columnEnvelopeMass A offset hA
    _ ≤ c * centeredErrorExpMass A offset * (2 * A) :=
      mul_le_mul_of_nonneg_left (columnEnvelopeMass_le A hA) (mul_nonneg hc he0)
    _ = _ := by ring

/-- The actual lower boundary and work obey one anchored bound after their exact cancellation. -/
theorem actual_lower_boundary_add_work_abs_le_anchored_mass (A : ℝ) (hA : 1 ≤ A) :
    |mangoldtLogError (Real.log (vaughanCutoff A : ℝ)) *
        jointMangoldtTestProfile A (Real.log (vaughanCutoff A : ℝ)) +
      jointMangoldtErrorWork A| ≤
    2 * A * (162826 / (7623 * A ^ 2) + 1 / 4) *
      centeredErrorExpMass A (mangoldtLogError (Real.log (vaughanCutoff A : ℝ))) := by
  have h := centeredErrorWork_abs_le_twiceA_mass A
    (mangoldtLogError (Real.log (vaughanCutoff A : ℝ))) hA
  rw [centeredErrorWork_eq_original_add_lower A _ hA, add_comm] at h
  exact h

end FormalResearch.RiemannHypothesis.SourceAnchoredMixedWorkBound
