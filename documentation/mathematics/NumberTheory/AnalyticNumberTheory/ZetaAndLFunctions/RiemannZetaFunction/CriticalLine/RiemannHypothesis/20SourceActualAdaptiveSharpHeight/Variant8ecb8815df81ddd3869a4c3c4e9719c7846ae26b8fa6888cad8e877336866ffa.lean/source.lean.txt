-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualAdaptiveSharpHeight.Variantafe03554bc8380cfa26f3db0d0a313e6e1a46793f506c62d618190f46a9c031f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"afe03554bc8380cfa26f3db0d0a313e6e1a46793f506c62d618190f46a9c031f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualAdaptiveSharpHeight.Variantafe03554bc8380cfa26f3db0d0a313e6e1a46793f506c62d618190f46a9c031f","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"afe03554bc8380cfa26f3db0d0a313e6e1a46793f506c62d618190f46a9c031f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/actual-attained-maximal-sector/source-copies/20-SourceActualAdaptiveSharpHeight.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualSharpZeroTail

/-! Couple the original actual zero tail to a source-dependent finite height.
The source q, normalization and full signed head are unchanged.
Direction and conceptual origin: grwtsk contributors.
Exact adaptive-height construction and formalization: OpenAI Codex. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualAdaptiveSharpHeight.Variantafe03554bc8380cfa26f3db0d0a313e6e1a46793f506c62d618190f46a9c031f

set_option autoImplicit false
noncomputable section
namespace RH16ActualAdaptiveSharpHeight
open FormalResearch.RiemannHypothesis
open SourceActualZeroTailBudget RH16ActualSharpZeroTail

def actualAdaptiveSharpHeight (η A : ℝ) : ℝ :=
  η * Real.exp (A / 5) / A ^ ((8 : ℝ) / 5)

def actualAdaptiveSharpTailCost (A0 η Q : ℝ) : ℝ :=
  9000000 * A0 / η ^ 5 * (1 / 5 + (Real.log η + 2) / Q)

private theorem six_factor_lower (A : ℝ) (hA : 91 ≤ A) :
    2 * A ≤ (1 + A / 60) ^ 6 := by
  let x : ℝ := A - 91
  have hx : 0 ≤ x := by dsimp [x]; linarith
  have he : 1 + A / 60 = (x + 151) / 60 := by dsimp [x]; ring
  have hraw : 2 * (x + 91) * (60 : ℝ) ^ 6 ≤ (x + 151) ^ 6 := by
    nlinarith [pow_nonneg hx 2, pow_nonneg hx 3, pow_nonneg hx 4,
      pow_nonneg hx 5, pow_nonneg hx 6]
  rw [he, div_pow]
  apply (le_div_iff₀ (by norm_num : (0 : ℝ) < 60 ^ 6)).mpr
  have hxA : x + 91 = A := by dsimp [x]; ring
  rw [hxA] at hraw
  exact hraw

/-- The entire adaptive family respects the original actual closed-tail height guard. -/
theorem actualAdaptiveSharpHeight_ge_four {η A : ℝ} (hη : 1 ≤ η) (hA : 91 ≤ A) :
    4 ≤ actualAdaptiveSharpHeight η A := by
  have hA1 : 1 ≤ A := by linarith
  have hApos : 0 < A := by linarith
  have he := Real.add_one_le_exp (A / 60)
  have hp := pow_le_pow_left₀ (by linarith : 0 ≤ A / 60 + 1) he 12
  have hexp : Real.exp (A / 60) ^ 12 = Real.exp (A / 5) := by
    rw [← Real.exp_nat_mul]
    congr 1
    ring
  rw [hexp] at hp
  have hs := six_factor_lower A hA
  have hs2 := pow_le_pow_left₀ (by linarith : 0 ≤ 2 * A) hs 2
  have hexplow : 4 * A ^ 2 ≤ Real.exp (A / 5) := by
    nlinarith only [hp, hs2]
  have hrpow : A ^ ((8 : ℝ) / 5) ≤ A ^ 2 := by
    simpa only [Real.rpow_two] using
      Real.rpow_le_rpow_of_exponent_le hA1 (by norm_num : (8 : ℝ) / 5 ≤ 2)
  have hden : 0 < A ^ ((8 : ℝ) / 5) := Real.rpow_pos_of_pos hApos _
  unfold actualAdaptiveSharpHeight
  apply (le_div_iff₀ hden).mpr
  have heη := mul_le_mul_of_nonneg_right hη (Real.exp_pos (A / 5)).le
  nlinarith

theorem actualAdaptiveSharpHeight_fifth_power {η A : ℝ} (hA : 0 < A) :
    actualAdaptiveSharpHeight η A ^ 5 = η ^ 5 * Real.exp A / A ^ 8 := by
  have hr : (A ^ ((8 : ℝ) / 5)) ^ 5 = A ^ 8 := by
    have h := Real.rpow_mul_natCast hA.le ((8 : ℝ) / 5) 5
    norm_num at h
    exact h.symm
  have he : Real.exp (A / 5) ^ 5 = Real.exp A := by
    rw [← Real.exp_nat_mul]
    congr 1
    ring
  unfold actualAdaptiveSharpHeight
  rw [div_pow, mul_pow, hr, he]

/-- The logarithm keeps its growing A/5 term and original source-radius power. -/
theorem actualAdaptiveSharpHeight_log {η A : ℝ} (hη : 0 < η) (hA : 0 < A) :
    Real.log (actualAdaptiveSharpHeight η A) =
      Real.log η + A / 5 - (8 / 5 : ℝ) * Real.log A := by
  unfold actualAdaptiveSharpHeight
  rw [Real.log_div (mul_ne_zero hη.ne' (Real.exp_ne_zero _))
      (ne_of_gt (Real.rpow_pos_of_pos hA _)),
    Real.log_mul hη.ne' (Real.exp_ne_zero _), Real.log_exp, Real.log_rpow hA]

/-- A single source count witness gives a fixed complete tail allowance on all real scales. -/
theorem actualAdaptiveSharpTail_uniform_bound :
    ∃ A0 : ℝ, 1 ≤ A0 ∧ ∀ η Q A : ℝ, 1 ≤ η → 91 ≤ Q → Q ≤ A →
      ‖actualZeroHeightTail A (actualAdaptiveSharpHeight η A)‖ ≤
        actualAdaptiveSharpTailCost A0 η Q := by
  obtain ⟨A0, hA0, htail⟩ := actualZeroHeightTail_sharp_norm_bound
  refine ⟨A0, hA0, fun η Q A hη hQ hQA => ?_⟩
  have hA : 91 ≤ A := hQ.trans hQA
  have hApos : 0 < A := by linarith
  have hQpos : 0 < Q := by linarith
  have hηpos : 0 < η := by linarith
  have hR := actualAdaptiveSharpHeight_ge_four hη hA
  have ht := htail A (actualAdaptiveSharpHeight η A) hA hR
  have hp := actualAdaptiveSharpHeight_fifth_power (η := η) hApos
  have hl := actualAdaptiveSharpHeight_log hηpos hApos
  have heq :
      9000000 * A0 * Real.exp A *
          (Real.log (actualAdaptiveSharpHeight η A) + 2) /
          (A ^ 9 * actualAdaptiveSharpHeight η A ^ 5) =
      9000000 * A0 / η ^ 5 *
        (1 / 5 + (Real.log η + 2 - (8 / 5 : ℝ) * Real.log A) / A) := by
    rw [hp, hl]
    field_simp
    ring
  rw [heq] at ht
  apply ht.trans
  unfold actualAdaptiveSharpTailCost
  apply mul_le_mul_of_nonneg_left _ (by positivity)
  have hlogA : 0 ≤ Real.log A := Real.log_nonneg (by linarith)
  have hlogη : 0 ≤ Real.log η := Real.log_nonneg hη
  have hr : (Real.log η + 2) / A ≤ (Real.log η + 2) / Q :=
    div_le_div_of_nonneg_left (by linarith) hQpos hQA
  have hm : (Real.log η + 2 - (8 / 5 : ℝ) * Real.log A) / A ≤
      (Real.log η + 2) / A :=
    div_le_div_of_nonneg_right (by nlinarith) hApos.le
  linarith

end RH16ActualAdaptiveSharpHeight
