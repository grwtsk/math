-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RemainingDerivativeMass.Variant371b44e6a7fc37f2d01094056a19a28d04175d6dce199b3210bc798db3e7899b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"371b44e6a7fc37f2d01094056a19a28d04175d6dce199b3210bc798db3e7899b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.RemainingDerivativeMass.Variant371b44e6a7fc37f2d01094056a19a28d04175d6dce199b3210bc798db3e7899b","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"371b44e6a7fc37f2d01094056a19a28d04175d6dce199b3210bc798db3e7899b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259/independent-variation-replay/SourceRemainingVariationObstruction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceFirstAtomSignedWork

/-!
The literal remaining Mangoldt work uses the PLUS derivative kernel. Its actual
absolute derivative mass grows exponentially already in an early physical
window. This obstructs a constant total-variation estimate; it makes no claim
that the actual signed arithmetic work or RH target is unbounded.
Research direction: grwtsk contributors. AI proof construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RemainingDerivativeMass.Variant371b44e6a7fc37f2d01094056a19a28d04175d6dce199b3210bc798db3e7899b

set_option autoImplicit false

noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceRemainingVariationObstruction

open MeasureTheory Set
open scoped Interval
open SourcePairing SourceFirstPrimeAbel SourceMangoldtNorm SourceCorrelationEnergy
open SourceFirstAtomSignedWork
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

/-- The absolute mass is formed from the derivative in the unchanged remaining work. -/
def remainingDerivativeMass (A : ℝ) : ℝ :=
  ∫ t in Real.log 2..2 * A, |deriv (criticalPrimeTest A) t|

/-- Actual normalization bounds the PLUS kernel positively in its early physical window. -/
theorem criticalPrimeTest_deriv_early_lower {A t : ℝ} (hA : 40 ≤ A)
    (ht0 : 0 ≤ t) (ht : t ≤ A / 40) :
    (5 / 16 : ℝ) * Real.exp (t / 2) ≤ deriv (criticalPrimeTest A) t := by
  have hA1 : 1 ≤ A := by linarith
  have hp : 0 < A := by linarith
  have hc := sourceCorrelation_sub_one_abs_le hA1 t
  rw [abs_of_nonneg ht0] at hc
  have htbound : 5 * t / A ≤ (1 / 8 : ℝ) := (div_le_iff₀ hp).mpr (by linarith)
  have hcLower : (7 / 8 : ℝ) ≤ sourceCorrelation explicitSecondDerivative A t := by
    linarith [(abs_le.mp hc).1]
  have hd := sourceCorrelation_deriv_abs_le_five_div hA1 t
  have hfive : 5 / A ≤ (1 / 8 : ℝ) := (div_le_iff₀ hp).mpr (by linarith)
  have hdLower : -(1 / 8 : ℝ) ≤ deriv (sourceCorrelation explicitSecondDerivative A) t := by
    linarith [(abs_le.mp hd).1]
  have hkernel : (5 / 16 : ℝ) ≤ sourceCorrelation explicitSecondDerivative A t / 2 +
      deriv (sourceCorrelation explicitSecondDerivative A) t := by linarith
  rw [criticalPrimeTest_deriv A t hp]
  simpa only [mul_comm] using
    mul_le_mul_of_nonneg_left hkernel (Real.exp_pos (t / 2)).le

private theorem exp_interval (b c : ℝ) :
    (∫ t in b..c, Real.exp (t / 2)) = 2 * (Real.exp (c / 2) - Real.exp (b / 2)) := by
  have hd (t : ℝ) : HasDerivAt (fun u : ℝ => 2 * Real.exp (u / 2))
      (Real.exp (t / 2)) t :=
    (((hasDerivAt_id t).div_const 2).exp.const_mul 2).congr_deriv (by simp only [id_eq]; ring)
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
    ((by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).intervalIntegrable b c)
  linarith

/-- The derivative norm already grows in the part of the actual remaining interval before A/40. -/
theorem remainingDerivativeMass_exponential_lower {A : ℝ} (hA : 40 ≤ A) :
    (5 / 8 : ℝ) * (Real.exp (A / 80) - 2) ≤ remainingDerivativeMass A := by
  have hp : 0 < A := by linarith
  have hb0 : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  have hb1 : Real.log (2 : ℝ) ≤ 1 := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  have hbc : Real.log (2 : ℝ) ≤ A / 40 := by linarith
  have hc2 : A / 40 ≤ 2 * A := by linarith
  have hg := (criticalPrimeTest_contDiff A hp).continuous_deriv_one
  have hmono : (∫ t in Real.log 2..A / 40, (5 / 16 : ℝ) * Real.exp (t / 2)) ≤
      ∫ t in Real.log 2..A / 40, |deriv (criticalPrimeTest A) t| := by
    apply intervalIntegral.integral_mono_on hbc
      ((by fun_prop : Continuous (fun t : ℝ =>
        (5 / 16 : ℝ) * Real.exp (t / 2))).intervalIntegrable _ _)
      (hg.abs.intervalIntegrable _ _)
    intro t ht
    exact (criticalPrimeTest_deriv_early_lower hA (hb0.trans ht.1) ht.2).trans (le_abs_self _)
  have hsub : (∫ t in Real.log 2..A / 40, |deriv (criticalPrimeTest A) t|) ≤
      remainingDerivativeMass A := by
    apply intervalIntegral.integral_mono_interval le_rfl hbc hc2
      (Filter.Eventually.of_forall (fun _ => abs_nonneg _))
      (hg.abs.intervalIntegrable _ _)
  have hexp : Real.exp (Real.log (2 : ℝ) / 2) ≤ 2 := by
    calc
      _ ≤ Real.exp (Real.log (2 : ℝ)) := Real.exp_le_exp.mpr (by linarith)
      _ = 2 := Real.exp_log (by norm_num)
  rw [intervalIntegral.integral_const_mul, exp_interval,
    show A / 40 / 2 = A / 80 by ring] at hmono
  linarith

/-- A coarse linear lower bound is enough to exclude any eventual constant derivative budget. -/
theorem remainingDerivativeMass_linear_lower {A : ℝ} (hA : 40 ≤ A) :
    A / 128 - 5 / 8 ≤ remainingDerivativeMass A := by
  have h := remainingDerivativeMass_exponential_lower hA
  have he := Real.add_one_le_exp (A / 80)
  linarith

/-- A method requiring bounded total derivative variation cannot establish the signed witness. -/
theorem remainingDerivativeMass_not_eventually_bounded :
    ¬ ∃ M R : ℝ, ∀ A : ℝ, 40 ≤ A → R ≤ A → remainingDerivativeMass A ≤ M := by
  rintro ⟨M, R, h⟩
  let A : ℝ := max 40 (max R (128 * (M + 2)))
  have h40 : 40 ≤ A := le_max_left _ _
  have hR : R ≤ A := (le_max_left _ _).trans (le_max_right _ _)
  have hM : 128 * (M + 2) ≤ A := (le_max_right _ _).trans (le_max_right _ _)
  have hlo := remainingDerivativeMass_linear_lower h40
  have hhi := h A h40 hR
  linarith

end FormalResearch.RiemannHypothesis.SourceRemainingVariationObstruction
