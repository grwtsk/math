-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualCriticalWeightUpperCurvature.Variant88bbea4fa85d9b0f68ed2fda2a81ecd629d2bfe6eac306af67b0cf3ab0000b17","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"88bbea4fa85d9b0f68ed2fda2a81ecd629d2bfe6eac306af67b0cf3ab0000b17","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ActualCriticalWeightUpperCurvature.Variant88bbea4fa85d9b0f68ed2fda2a81ecd629d2bfe6eac306af67b0cf3ab0000b17","mathematical_subject":"Analysis.Calculus","original_sha256":"88bbea4fa85d9b0f68ed2fda2a81ecd629d2bfe6eac306af67b0cf3ab0000b17","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/88bbea4fa85d9b0f68ed-ActualEarlyLowerBound.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualSharpEarlyBaseline

/-!
An independent lower estimate for the exact early floor contribution shows
that the natural linear joint frontier differs from the complete pairing by
only a fixed head error. This supplies no arithmetic bound for either source.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualCriticalWeightUpperCurvature.Variant88bbea4fa85d9b0f68ed2fda2a81ecd629d2bfe6eac306af67b0cf3ab0000b17

set_option autoImplicit false
namespace RH16IndependentChallengeNext

open MeasureTheory Set
open FormalResearch.RiemannHypothesis
open SourcePairing SourcePositiveSampling SourceCorrelationCurvature
open SourceStrictComplementaryLocalization SourceStrictComplementaryEarlyBudget
open SourceCriticalWeightMassObstruction
open OmegaResearch.CriticalRelativePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateVaughanSource EstimateCorrelation

noncomputable section

/-- The actual curvature bounds also give the matching upper critical kernel estimate. -/
theorem actualCriticalWeight_upper_curvature {A t : ℝ} (hA : 1 ≤ A) (ht : 0 ≤ t) :
    criticalWeight A t ≤
      1 / 2 + (162826 / (7623 * A ^ 2)) * (t ^ 2 / 4 + t) := by
  have hzero := actualCorrelation_deriv_zero (by linarith : 0 < A)
  have hc := sourceCorrelation_linear_taylor_bound hA 0 t
  have hd := sourceCorrelation_deriv_increment_bound hA 0 t
  simp only [zero_add, hzero, mul_zero, sub_zero, actual_correlation_at_zero A hA,
    abs_of_nonneg ht] at hc hd
  unfold criticalWeight
  have hcU := (abs_le.mp hc).2
  have hdL := (abs_le.mp hd).1
  linarith

private theorem exp_neg_half_log_eq_inv_sqrt {x : ℝ} (hx : 0 < x) :
    Real.exp (-Real.log x / 2) = 1 / Real.sqrt x := by
  rw [show -Real.log x / 2 = -(Real.log x * (1 / 2)) by ring,
    Real.exp_neg, ← Real.rpow_def_of_pos hx, ← Real.sqrt_eq_rpow]
  simp only [one_div]

/-- The closed real floor gives a genuine lower derivative estimate throughout the early window. -/
theorem actualEarlyDerivative_lower_curvature {A x : ℝ} (hA : 25600 ≤ A)
    (hx : x ∈ Icc (1 : ℝ) (vaughanCutoff A : ℝ)) :
    -1 / (2 * Real.sqrt x) -
      (162826 / (7623 * A ^ 2)) *
        ((Real.log x) ^ 2 / 4 + Real.log x) / Real.sqrt x ≤
      (⌊x⌋₊ : ℝ) * deriv (plainProfile A 1) x := by
  have hp : 0 < A := by linarith
  have hx0 : 0 < x := by linarith [hx.1]
  have hs : 0 < Real.sqrt x := Real.sqrt_pos.2 hx0
  have ht : 0 ≤ Real.log x := Real.log_nonneg hx.1
  have htU := Real.log_le_log hx0 hx.2
  have htW := htU.trans (log_vaughanCutoff_le_early_window hA)
  have hw := criticalWeight_early_lower (by linarith : 40 ≤ A) ht htW
  have hu := actualCriticalWeight_upper_curvature (by linarith : 1 ≤ A) ht
  have hf : (⌊x⌋₊ : ℝ) ≤ x := Nat.floor_le hx0.le
  have hfc : (⌊x⌋₊ : ℝ) * criticalWeight A (Real.log x) ≤
      x * criticalWeight A (Real.log x) :=
    mul_le_mul_of_nonneg_right hf (by linarith)
  have he := mul_le_mul_of_nonneg_left hu hx0.le
  have hn : -(x * (1 / 2 + (162826 / (7623 * A ^ 2)) *
      ((Real.log x) ^ 2 / 4 + Real.log x))) ≤
      -((⌊x⌋₊ : ℝ) * criticalWeight A (Real.log x)) := by linarith
  have hd := div_le_div_of_nonneg_right hn (mul_pos hx0 hs).le
  rw [(plainProfile_hasDerivAt hp 1 hx0).deriv]
  simp only [Real.log_one, zero_add]
  rw [exp_neg_half_log_eq_inv_sqrt hx0]
  calc
    _ = -(x * (1 / 2 + (162826 / (7623 * A ^ 2)) *
        ((Real.log x) ^ 2 / 4 + Real.log x))) / (x * Real.sqrt x) := by
      field_simp
      ring
    _ ≤ _ := hd
    _ = _ := by unfold criticalWeight; field_simp; ring

private def earlyLowerPrimitive (A x : ℝ) : ℝ :=
  -Real.sqrt x -
    (162826 / (7623 * A ^ 2)) / 2 * Real.sqrt x * (Real.log x) ^ 2

private theorem earlyLowerPrimitive_hasDerivAt {A x : ℝ} (hx : 0 < x) :
    HasDerivAt (earlyLowerPrimitive A)
      (-1 / (2 * Real.sqrt x) -
        (162826 / (7623 * A ^ 2)) *
          ((Real.log x) ^ 2 / 4 + Real.log x) / Real.sqrt x) x := by
  have hs := Real.hasDerivAt_sqrt hx.ne'
  have hl := Real.hasDerivAt_log hx.ne'
  have hsq := Real.sq_sqrt hx.le
  have hs0 : Real.sqrt x ≠ 0 := (Real.sqrt_pos.2 hx).ne'
  have hd := hs.neg.sub
    (((hs.const_mul ((162826 / (7623 * A ^ 2)) / 2)).mul (hl.pow 2)))
  change HasDerivAt
    ((fun y : ℝ => -Real.sqrt y) -
      (fun y : ℝ => ((162826 / (7623 * A ^ 2)) / 2 * Real.sqrt y) * (Real.log y) ^ 2)) _ x
  apply hd.congr_deriv
  simp only [Pi.pow_apply, Nat.cast_ofNat, Nat.reduceSub, pow_one]
  field_simp [hx.ne', hs0]
  simp only [hsq]
  ring

/-- The lower integral estimate retains the complete actual floor endpoint and curvature error. -/
theorem complementaryEarlyBaseline_lower_curvature_endpoint {A : ℝ} (hA : 25600 ≤ A) :
    -Real.sqrt (vaughanCutoff A : ℝ) + 1 -
        (162826 / (7623 * A ^ 2)) / 2 * Real.sqrt (vaughanCutoff A : ℝ) *
          (Real.log (vaughanCutoff A : ℝ)) ^ 2 ≤ complementaryEarlyBaseline A := by
  have hA1 : 1 ≤ A := by linarith
  have hU := (actual_cutoff_order A hA1).1
  let D : ℝ → ℝ := fun x => -1 / (2 * Real.sqrt x) -
    (162826 / (7623 * A ^ 2)) * ((Real.log x) ^ 2 / 4 + Real.log x) / Real.sqrt x
  have hc : ContinuousOn D (Icc 1 (vaughanCutoff A : ℝ)) := by
    intro x hx
    have hx0 : 0 < x := by linarith [hx.1]
    have hs0 : Real.sqrt x ≠ 0 := (Real.sqrt_pos.2 hx0).ne'
    exact ((continuousAt_const.div
      (continuousAt_const.mul Real.continuous_sqrt.continuousAt)
      (mul_ne_zero (by norm_num) hs0)).sub
      ((continuousAt_const.mul
        (((Real.continuousAt_log hx0.ne').pow 2).div_const 4 |>.add
          (Real.continuousAt_log hx0.ne'))).div
        Real.continuous_sqrt.continuousAt hs0)).continuousWithinAt
  have hiD : IntervalIntegrable D volume 1 (vaughanCutoff A : ℝ) :=
    hc.intervalIntegrable_of_Icc hU
  have hi : IntervalIntegrable
      (fun x => (⌊x⌋₊ : ℝ) * deriv (plainProfile A 1) x) volume 1 (vaughanCutoff A : ℝ) :=
    (intervalIntegrable_iff_integrableOn_Ioc_of_le hU).mpr
      ((early_floor_derivative_integrable hA1).mono_set Ioc_subset_Icc_self)
  have hm := intervalIntegral.integral_mono_on hU hiD hi
    (fun x hx => actualEarlyDerivative_lower_curvature hA hx)
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x hx => earlyLowerPrimitive_hasDerivAt (show 0 < x by
      rw [uIcc_of_le hU] at hx
      linarith [hx.1])) hiD
  rw [he] at hm
  unfold complementaryEarlyBaseline
  rw [← intervalIntegral.integral_of_le hU]
  simp only [earlyLowerPrimitive, Real.sqrt_one, Real.log_one,
    zero_pow (by decide : 2 ≠ 0), mul_zero] at hm
  linarith

/-- The actual early head cannot be more negative than minus A with a fixed loss four. -/
theorem complementaryEarlyBaseline_lower_neg_scale_sub_four {A : ℝ} (hA : 25600 ≤ A) :
    -A - 4 ≤ complementaryEarlyBaseline A := by
  have hp : 0 < A := by linarith
  have hf : (vaughanCutoff A : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  have hs : Real.sqrt (vaughanCutoff A : ℝ) ≤ A := by
    simpa only [Real.sqrt_sq hp.le] using Real.sqrt_le_sqrt hf
  have he := complementaryEarlyBaseline_lower_curvature_endpoint hA
  have hc := actualCutoff_curvature_error_le hA
  linarith

/-- Both genuine head inequalities show a uniformly bounded discrepancy from minus A. -/
theorem complementaryEarlyBaseline_add_scale_abs_le_seven {A : ℝ} (hA : 25600 ≤ A) :
    |complementaryEarlyBaseline A + A| ≤ 7 := by
  have hl := complementaryEarlyBaseline_lower_neg_scale_sub_four hA
  have hu := complementaryEarlyBaseline_le_neg_scale_add_seven hA
  exact abs_le.mpr ⟨by linarith, by linarith⟩

end
end RH16IndependentChallengeNext
