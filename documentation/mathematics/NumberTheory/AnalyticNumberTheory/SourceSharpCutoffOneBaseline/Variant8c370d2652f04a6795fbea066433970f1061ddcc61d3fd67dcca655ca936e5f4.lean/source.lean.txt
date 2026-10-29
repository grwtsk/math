-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.SharpBaselineResidualBudget.Variant704598e174d4e1d37990dfa6c101a8b6b612d01a5d93e3b1bc5f7720d9fc0b0f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"704598e174d4e1d37990dfa6c101a8b6b612d01a5d93e3b1bc5f7720d9fc0b0f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.SharpBaselineResidualBudget.Variant704598e174d4e1d37990dfa6c101a8b6b612d01a5d93e3b1bc5f7720d9fc0b0f","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"704598e174d4e1d37990dfa6c101a8b6b612d01a5d93e3b1bc5f7720d9fc0b0f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/independent-whole-plain-followthrough/author-copy/SourceSharpCutoffOneBaseline.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceCutoffOneSharpTail

/-! Apply the explicit cutoff-one ledger to its independently fixed baseline.
Direction and conceptual origin: grwtsk contributors.
Source consumer construction and formalization: OpenAI Codex assistance.
The baseline upper witness remains supplied, as in the established source route. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.SharpBaselineResidualBudget.Variant704598e174d4e1d37990dfa6c101a8b6b612d01a5d93e3b1bc5f7720d9fc0b0f

set_option autoImplicit false
noncomputable section
namespace RH16SharpCutoffOneBaseline
open RH16CutoffOneSharpTail RH16ExactOverlapConsumer
open FormalResearch.RiemannHypothesis
open SourcePairing SourceCutoffOneLedger SourceCutoffFlux
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanTranslationGate EstimateTailReduction EstimateMertensResidual
open EstimateSourceMobiusKernel

def sharpBaselineResidualBudget (D R : ℝ) : ℝ := max 0 (D + cutoffOneSharpLedgerCost R)

/-- Same real radius as the supplied original baseline; no additional calibration loss. -/
theorem residual_tail_of_baseline (D R : ℝ) (hR : 1 ≤ R)
    (hbaseline : ∀ A : ℝ, R ≤ A → -mainTermAt A 1 (sourceKernelCutoff A) ≤ D) :
    ∀ A : ℝ, R ≤ A → mertensResidual A ≤ sharpBaselineResidualBudget D R := by
  intro A hRA
  have he := residual_eq_cutoffOne_joint_add_error A (hR.trans hRA)
  rw [jointAt_one] at he
  have hl := (abs_le.mp (cutoffOneLedgerError_tail hR hRA)).2
  have hb := hbaseline A hRA
  apply le_trans ?_ (le_max_right _ _)
  linarith

theorem all_real_lower_of_baseline (D R : ℝ) (hR : 1 ≤ R)
    (hbaseline : ∀ A : ℝ, R ≤ A → -mainTermAt A 1 (sourceKernelCutoff A) ≤ D) :
    ∀ A : ℝ, 1 ≤ A →
      min (archimedeanMultiplier 0 - 2 * ∑ n ∈ primeIndices R,
        |ArithmeticFunction.vonMangoldt n / Real.sqrt n|)
        (archimedeanMultiplier 0 - 2 * sharpBaselineResidualBudget D R) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  intro A hA
  by_cases hRA : R ≤ A
  · exact (min_le_right _ _).trans (quadratic_lower_of_residual_upper _ A hA
      (residual_tail_of_baseline D R hR hbaseline A hRA))
  · have hp := prime_contribution_le_finite_budget A R hA (le_of_lt (lt_of_not_ge hRA))
    have ha := SourceCorrectionEstimate.actual_archimedean_lower A hA
    apply (min_le_left _ _).trans
    unfold sourceQuadraticValue
    linarith

/-- Only the unchanged independent signed baseline is supplied to the literal target. -/
theorem estimate_of_baseline (D R : ℝ) (hR : 1 ≤ R)
    (hbaseline : ∀ A : ℝ, R ≤ A → -mainTermAt A 1 (sourceKernelCutoff A) ≤ D) :
    CorrelationAssembly.EstimateObligation :=
  estimate_of_mertens_residual_tail
    ⟨sharpBaselineResidualBudget D R, le_max_left _ _, R, hR,
      residual_tail_of_baseline D R hR hbaseline⟩

end RH16SharpCutoffOneBaseline
