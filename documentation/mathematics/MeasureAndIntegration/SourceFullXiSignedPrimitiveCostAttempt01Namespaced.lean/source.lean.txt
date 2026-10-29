-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualFullXiLogWeightDeriv.Variant25f1f1a41703df9575b637425b6bdcc07fbe8cb3c45acfe7cab6c7060b227020","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"25f1f1a41703df9575b637425b6bdcc07fbe8cb3c45acfe7cab6c7060b227020","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ActualFullXiLogWeightDeriv.Variant25f1f1a41703df9575b637425b6bdcc07fbe8cb3c45acfe7cab6c7060b227020","mathematical_subject":"Analysis.Calculus","original_sha256":"25f1f1a41703df9575b637425b6bdcc07fbe8cb3c45acfe7cab6c7060b227020","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-lamzouri-01a11291/followthrough3/frontier/SourceFullXiSignedPrimitiveCost.attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceFullXiCellBudgetObstruction
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvature
import Mathlib.Tactic

/-!
Quantitative derivative cost for a signed primitive cancellation attempt on
the full actual contracted-Xi kernel. No arithmetic primitive bound is supplied.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualFullXiLogWeightDeriv.Variant25f1f1a41703df9575b637425b6bdcc07fbe8cb3c45acfe7cab6c7060b227020

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceFullXiSignedPrimitiveCost
open MeasureTheory SourcePairing SourceCorrelationEnergy SourceCorrelationCurvature
open SourceFullXiCellBudgetObstruction
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

theorem actual_fullXiLogWeight_deriv (A t : ℝ) (hA : 0 < A) :
    deriv (fullXiLogWeight A) t =
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t -
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2 := by
  exact ((((sourceCorrelation_deriv_contDiff hA).differentiable (by norm_num) t).hasDerivAt).sub
    (((sourceCorrelation_contDiff A hA).differentiable (by norm_num) t).hasDerivAt.div_const 2)).deriv

theorem actual_fullXiLogWeight_deriv_abs_le {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    |deriv (fullXiLogWeight A) t| ≤
      162826 / (7623 * A ^ 2) + 5 / A / 2 := by
  rw [actual_fullXiLogWeight_deriv A t (by linarith)]
  calc
    _ ≤ |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| +
        |deriv (sourceCorrelation explicitSecondDerivative A) t / 2| := abs_sub _ _
    _ ≤ 162826 / (7623 * A ^ 2) + 5 / A / 2 := by
      rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
      exact add_le_add (sourceCorrelation_second_deriv_abs_le_coefficient hA t)
        (div_le_div_of_nonneg_right (sourceCorrelation_deriv_abs_le_five_div hA t)
          (by norm_num))

theorem actual_fullXiLogWeight_deriv_continuous {A : ℝ} (hA : 0 < A) :
    Continuous (deriv (fullXiLogWeight A)) := by
  have he : deriv (fullXiLogWeight A) = fun t =>
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t -
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2 :=
    funext fun t => actual_fullXiLogWeight_deriv A t hA
  rw [he]
  exact (sourceCorrelation_deriv_contDiff hA).continuous_deriv_one.sub
    ((sourceCorrelation_deriv_contDiff hA).continuous.div_const 2)

/-- A uniform signed primitive of the actual Xi/log density would pay at most 11/2. -/
theorem actual_fullXi_signed_primitive_derivative_cost {A : ℝ} (hA : 91 ≤ A) :
    (∫ t in Real.log 2..2 * A, |deriv (fullXiLogWeight A) t|) ≤ (11 / 2 : ℝ) := by
  have hA1 : 1 ≤ A := by linarith
  have hp : 0 < A := by linarith
  have hL0 : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  have hL1 : Real.log (2 : ℝ) ≤ 1 := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  have hU : Real.log (2 : ℝ) ≤ 2 * A := by linarith
  let K : ℝ := 162826 / (7623 * A ^ 2) + 5 / A / 2
  have hK : 0 ≤ K := by dsimp only [K]; positivity
  have hm : (∫ t in Real.log 2..2 * A, |deriv (fullXiLogWeight A) t|) ≤
      ∫ t in Real.log 2..2 * A, K := by
    apply intervalIntegral.integral_mono_on hU
      ((actual_fullXiLogWeight_deriv_continuous hp).abs.intervalIntegrable _ _)
      (continuous_const.intervalIntegrable _ _)
    intro t _
    exact actual_fullXiLogWeight_deriv_abs_le hA1 t
  rw [intervalIntegral.integral_const] at hm
  simp only [smul_eq_mul] at hm
  have hstep : (2 * A - Real.log 2) * K ≤ 2 * A * K := by nlinarith
  have he : 2 * A * K = 5 + 325652 / (7623 * A) := by
    dsimp only [K]
    field_simp
    <;> ring
  have hb : 325652 / (7623 * A) ≤ (1 / 2 : ℝ) :=
    (div_le_iff₀ (by positivity : (0 : ℝ) < 7623 * A)).mpr (by linarith)
  linarith

end FormalResearch.RiemannHypothesis.SourceFullXiSignedPrimitiveCost
