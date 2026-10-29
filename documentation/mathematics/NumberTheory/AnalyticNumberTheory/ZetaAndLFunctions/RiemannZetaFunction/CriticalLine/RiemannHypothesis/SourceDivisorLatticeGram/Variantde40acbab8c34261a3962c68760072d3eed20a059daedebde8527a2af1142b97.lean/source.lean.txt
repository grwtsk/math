-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualCorrelationDerivZero.Variant729fe506e882f2493f48e86faad84573c866517332e44b6f1c0459db46d8748c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"729fe506e882f2493f48e86faad84573c866517332e44b6f1c0459db46d8748c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualCorrelationDerivZero.Variant729fe506e882f2493f48e86faad84573c866517332e44b6f1c0459db46d8748c","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"729fe506e882f2493f48e86faad84573c866517332e44b6f1c0459db46d8748c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/finite-lattice-arithmetic-gap-20261007/FormalResearch/RiemannHypothesis/SourceDivisorLatticeGram.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceDivisorLatticeKernel
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvature
import FormalResearch.RiemannHypothesis.SourceMangoldtInteraction

/-!
# A quantitative mixed Gram entry of the unchanged source

The metric is the actual fixed-source L² Gram metric. The adjacent source shifts
log 5 and log 8 have a strictly positive kernel entry. This is a quantitative
nonorthogonality receipt, not cross-scale transport or a positive spectral gap.

Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualCorrelationDerivZero.Variant729fe506e882f2493f48e86faad84573c866517332e44b6f1c0459db46d8748c

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceDivisorLatticeGram
open SourcePairing SourceCorrelationCurvature SourceMangoldtInteraction
open SourceScaleL2Continuity SourcePrimeMomentScale SourceReflectionDuality
open scoped InnerProductSpace
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

/-- Evenness anchors the actual Taylor remainder at a zero first derivative. -/
theorem actual_correlation_deriv_zero {A : ℝ} (hA : 0 < A) :
    deriv (sourceCorrelation explicitSecondDerivative A) 0 = 0 := by
  have hd := ((sourceCorrelation_contDiff A hA).differentiable (by norm_num) 0).hasDerivAt
  have heq : (fun x : ℝ => sourceCorrelation explicitSecondDerivative A (-x)) =
      sourceCorrelation explicitSecondDerivative A := funext (sourceCorrelation_even A)
  have hdneg : HasDerivAt (sourceCorrelation explicitSecondDerivative A)
      (deriv (sourceCorrelation explicitSecondDerivative A) 0) (-0) := by
    simpa only [neg_zero] using hd
  have hn := hdneg.comp 0 (hasDerivAt_neg (0 : ℝ))
  have hn' : HasDerivAt (sourceCorrelation explicitSecondDerivative A)
      (-deriv (sourceCorrelation explicitSecondDerivative A) 0) 0 := by
    simpa only [Function.comp_def, heq, mul_neg, mul_one] using hn
  have h := hd.unique hn'
  linarith

/-- The literal source Gram shift has this unconditional numerical lower margin at scale two. -/
theorem actual_five_eight_gram_kernel_lower :
    (3287 / 84700 : ℝ) ≤ sourceCorrelation explicitSecondDerivative 2 (Real.log (8 / 5 : ℝ)) := by
  have ht0 : 0 ≤ Real.log (8 / 5 : ℝ) := Real.log_nonneg (by norm_num)
  have ht : Real.log (8 / 5 : ℝ) ≤ 3 / 5 := by
    have h := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 8/5)
    norm_num at h
    exact h
  have htsq : (Real.log (8 / 5 : ℝ))^2 ≤ 9 / 25 := by
    nlinarith [sq_nonneg (3 / 5 - Real.log (8 / 5 : ℝ))]
  have h := sourceCorrelation_linear_taylor_bound (A := 2) (by norm_num) 0
    (Real.log (8 / 5 : ℝ))
  rw [zero_add, sourceCorrelation_zero (by norm_num), actual_correlation_deriv_zero (by norm_num),
    mul_zero, sub_zero] at h
  have hl := (abs_le.mp h).1
  norm_num at hl
  linarith

/-- In particular the ordinary source Gram mixed entry cannot be deleted as zero. -/
theorem actual_five_eight_gram_kernel_pos :
    0 < sourceCorrelation explicitSecondDerivative 2 (Real.log (8 / 5 : ℝ)) :=
  lt_of_lt_of_le (by norm_num) actual_five_eight_gram_kernel_lower

/-- The physical log-difference orientation has exactly the same positive lower margin. -/
theorem actual_log_difference_gram_lower :
    (3287 / 84700 : ℝ) ≤
      sourceCorrelation explicitSecondDerivative 2 (Real.log (8 : ℝ) - Real.log 5) := by
  rw [← Real.log_div (by norm_num : (8 : ℝ) ≠ 0) (by norm_num : (5 : ℝ) ≠ 0)]
  exact actual_five_eight_gram_kernel_lower

/-- This lower margin is the actual L² Gram coefficient of the two original source states. -/
theorem actual_five_eight_L2_gram_lower :
    (3287 / 84700 : ℝ) ≤
      (⟪translation (Real.log 5) (originalSourceState 2),
        translation (Real.log 8) (originalSourceState 2)⟫_ℂ).re := by
  rw [translation_inner_stationary, ← sourceCorrelation_eq_inner (by norm_num)]
  exact actual_log_difference_gram_lower

/-- The actual fixed-source synthesis has a nonzero mixed Gram block. -/
theorem actual_five_eight_L2_gram_ne_zero :
    ⟪translation (Real.log 5) (originalSourceState 2),
      translation (Real.log 8) (originalSourceState 2)⟫_ℂ ≠ 0 := by
  intro h
  have hl := actual_five_eight_L2_gram_lower
  rw [h, Complex.zero_re] at hl
  norm_num at hl

end FormalResearch.RiemannHypothesis.SourceDivisorLatticeGram
