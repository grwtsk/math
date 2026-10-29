-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CompensatedLocalizedWork.Variant3584e0963e5abc910dcf1d67e7a8586e00bc8f029343edf6001554e04f0921de","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3584e0963e5abc910dcf1d67e7a8586e00bc8f029343edf6001554e04f0921de","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.CompensatedLocalizedWork.Variant3584e0963e5abc910dcf1d67e7a8586e00bc8f029343edf6001554e04f0921de","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"3584e0963e5abc910dcf1d67e7a8586e00bc8f029343edf6001554e04f0921de","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/3584e0963e5abc910dcf-SourceLocalizedSignedConsumer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceJointWorkSupport
import SourceJointWorkConsumer
import SourceLocalizedMixedWorkEstimate

/-!
# The original signed target on its exact local source window

AI attribution: OpenAI Codex. The baseline window, full centered deleted
diagonal and independent main term remain unchanged. The original lower error
is retained by anchoring the shorter work. All tail premises remain explicit.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CompensatedLocalizedWork.Variant3584e0963e5abc910dcf1d67e7a8586e00bc8f029343edf6001554e04f0921de

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceLocalizedSignedConsumer

open MeasureTheory
open scoped Interval
open SourceMangoldtAbel SourceJointMangoldtWork SourceJointWorkConsumer
open SourceJointWorkSupport SourceConstantOffsetCancellation SourceStrictColumnInterior
open SourceVaughanHankel
open SourceLocalizedMixedWorkEstimate SourceColumnEnvelopeMass SourceSamplingLedger
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimateMertensResidual

noncomputable section

/-- The literal signed Abel target, with only its error-work window shortened. -/
def compensatedLocalizedWork (A : ℝ) : ℝ :=
  (∫ t in Real.log (vaughanCutoff A : ℝ)..Real.log (sourceKernelCutoff A : ℝ),
    jointMangoldtTestProfile A t) -
  (∫ t in Real.log (vaughanCutoff A : ℝ)..actualJointSupportUpper A,
    (mangoldtLogError t - mangoldtLogError (Real.log (vaughanCutoff A : ℝ))) *
      deriv (jointMangoldtTestProfile A) t) -
  centeredDeletedDiagonal A - independentMainTerm A

theorem compensatedLocalizedWork_eq_strictColumnInterior (A : ℝ) (hA : 1 ≤ A) :
    compensatedLocalizedWork A = strictColumnInterior A := by
  rw [strictColumnInterior_eq_lower_anchored_error_work A hA,
    centeredErrorWork_eq_support_integral A _ hA]
  rfl

theorem compensatedLocalizedWork_eq_original (A : ℝ) (hA : 1 ≤ A) :
    compensatedLocalizedWork A = compensatedJointWork A := by
  rw [compensatedLocalizedWork_eq_strictColumnInterior A hA,
    compensatedJointWork_eq_strictColumnInterior A hA]

/-- The endpoint three and independent ledger budget transfer at the original radius. -/
theorem residual_tail_of_compensatedLocalizedWork_tail
    (D R : ℝ) (hD : 0 ≤ D) (hR : 1 ≤ R)
    (hwork : ∀ A : ℝ, R ≤ A → compensatedLocalizedWork A ≤ D) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧
      ∀ A : ℝ, R ≤ A → mertensResidual A ≤ D + 3 + C_F := by
  apply residual_tail_of_compensatedJointWork_tail D R hD hR
  intro A hRA
  rw [← compensatedLocalizedWork_eq_original A (hR.trans hRA)]
  exact hwork A hRA

/-- A literal uniform signed local-work witness suffices for the unchanged all-real target. -/
theorem estimate_of_compensatedLocalizedWork_tail
    (D R : ℝ) (hD : 0 ≤ D) (hR : 1 ≤ R)
    (hwork : ∀ A : ℝ, R ≤ A → compensatedLocalizedWork A ≤ D) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_compensatedJointWork_tail D R hD hR
  intro A hRA
  rw [← compensatedLocalizedWork_eq_original A (hR.trans hRA)]
  exact hwork A hRA

/-- A quantitative sufficient budget preserves both independent compensation terms. -/
theorem compensatedLocalizedWork_le_baseline_and_localized_mass (A : ℝ) (hA : 1 ≤ A) :
    compensatedLocalizedWork A ≤
      (∫ t in Real.log (vaughanCutoff A : ℝ)..Real.log (sourceKernelCutoff A : ℝ),
        jointMangoldtTestProfile A t) - centeredDeletedDiagonal A - independentMainTerm A +
      (162826 / (7623 * A ^ 2) + 1 / 4) *
        localizedCenteredErrorExpMass A
          (mangoldtLogError (Real.log (vaughanCutoff A : ℝ))) * columnEnvelopeMass A := by
  have he := centeredErrorWork_abs_le_localized_mass A
    (mangoldtLogError (Real.log (vaughanCutoff A : ℝ))) hA
  have hl := (abs_le.mp he).1
  rw [centeredErrorWork_eq_support_integral A _ hA] at hl
  unfold compensatedLocalizedWork
  linarith

end
end FormalResearch.RiemannHypothesis.SourceLocalizedSignedConsumer
