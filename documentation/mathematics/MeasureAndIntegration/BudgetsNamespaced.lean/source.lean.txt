-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.PowerIntervalIntegrable.Variantae0e3d4525f000a48d916a1017c88d8a599423cbfc3a4c5ea66a4c4cadf694ee","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ae0e3d4525f000a48d916a1017c88d8a599423cbfc3a4c5ea66a4c4cadf694ee","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.PowerIntervalIntegrable.Variantae0e3d4525f000a48d916a1017c88d8a599423cbfc3a4c5ea66a4c4cadf694ee","mathematical_subject":"Analysis.Integration","original_sha256":"ae0e3d4525f000a48d916a1017c88d8a599423cbfc3a4c5ea66a4c4cadf694ee","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/inner-abel-20261005/Budgets.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Deriv
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.MeasureTheory.Function.Floor
import Mathlib.Tactic

/-!
Finite logarithmic budgets for the corrected inner Abel estimate.
Direction and theorem selection: grwtsk contributors.
New proof development: OpenAI Codex. This locally checked scratch candidate is unaccepted.
-/

namespace GRWTSK.Analysis.RealAnalysis.Integration.PowerIntervalIntegrable.Variantae0e3d4525f000a48d916a1017c88d8a599423cbfc3a4c5ea66a4c4cadf694ee

set_option autoImplicit false
namespace InnerAbel.Budgets
open MeasureTheory Set
noncomputable section

theorem power_intervalIntegrable {Y : ℝ} (hY : 1 ≤ Y) (r : ℝ) :
    IntervalIntegrable (fun y : ℝ => y ^ r) volume 1 Y := by
  apply ContinuousOn.intervalIntegrable
  apply continuous_id.continuousOn.rpow_const
  rw [uIcc_of_le hY]
  intro y hy
  exact Or.inl (ne_of_gt (lt_of_lt_of_le (by norm_num) hy.1))

theorem log_power_intervalIntegrable {Y : ℝ} (hY : 1 ≤ Y) :
    IntervalIntegrable (fun y : ℝ => Real.log y * y ^ (-(3 : ℝ) / 2)) volume 1 Y := by
  apply ContinuousOn.intervalIntegrable
  apply (Real.continuousOn_log.mono ?_).mul
    (continuous_id.continuousOn.rpow_const ?_)
  · rw [uIcc_of_le hY]
    intro y hy
    exact ne_of_gt (lt_of_lt_of_le (by norm_num) hy.1)
  · rw [uIcc_of_le hY]
    intro y hy
    exact Or.inl (ne_of_gt (lt_of_lt_of_le (by norm_num) hy.1))

theorem inverse_half_eq {y : ℝ} (hy : 0 < y) :
    y ^ (-(1 : ℝ) / 2) = 1 / Real.sqrt y := by
  rw [show -(1 : ℝ) / 2 = -((1 : ℝ) / 2) by ring, Real.rpow_neg hy.le]
  simpa using congrArg Inv.inv (Real.rpow_div_two_eq_sqrt (x := y) (1 : ℝ) hy.le)

theorem power_integral {Y : ℝ} (hY : 1 ≤ Y) :
    (∫ y in (1 : ℝ)..Y, y ^ (-(3 : ℝ) / 2)) =
      2 * (1 - 1 / Real.sqrt Y) := by
  have hzero : (0 : ℝ) ∉ uIcc 1 Y := by
    rw [uIcc_of_le hY]
    simp
  rw [integral_rpow (Or.inr ⟨by norm_num, hzero⟩)]
  rw [show -(3 : ℝ) / 2 + 1 = -(1 : ℝ) / 2 by ring,
    inverse_half_eq (by linarith : 0 < Y)]
  norm_num
  ring

theorem log_power_primitive {y : ℝ} (hy : 0 < y) :
    HasDerivAt (fun y : ℝ => -(2 * Real.log y + 4) * y ^ (-(1 : ℝ) / 2))
      (Real.log y * y ^ (-(3 : ℝ) / 2)) y := by
  have hd := (((Real.hasDerivAt_log hy.ne').const_mul 2).add_const 4).neg.mul
    (Real.hasDerivAt_rpow_const (p := -(1 : ℝ) / 2) (Or.inl hy.ne'))
  apply hd.congr_deriv
  have hp : y ^ (-(1 : ℝ) / 2) = y * y ^ (-(3 : ℝ) / 2) := by
    nth_rw 2 [← Real.rpow_one y]
    rw [← Real.rpow_add hy]
    congr 1
    ring
  change -(2 * y⁻¹) * y ^ (-(1 : ℝ) / 2) +
    -(2 * Real.log y + 4) * (-(1 : ℝ) / 2 * y ^ (-(1 : ℝ) / 2 - 1)) = _
  rw [show -(1 : ℝ) / 2 - 1 = -(3 : ℝ) / 2 by ring, hp]
  field_simp
  ring

theorem log_power_integral {Y : ℝ} (hY : 1 ≤ Y) :
    (∫ y in (1 : ℝ)..Y, Real.log y * y ^ (-(3 : ℝ) / 2)) =
      4 - (2 * Real.log Y + 4) / Real.sqrt Y := by
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun y hy => log_power_primitive (by
      rw [uIcc_of_le hY] at hy
      linarith [hy.1])) (log_power_intervalIntegrable hY)]
  rw [inverse_half_eq (by linarith : 0 < Y)]
  simp only [Real.log_one, mul_zero, zero_add, Real.one_rpow]
  ring

theorem power_integral_le_two {Y : ℝ} (hY : 1 ≤ Y) :
    (∫ y in (1 : ℝ)..Y, y ^ (-(3 : ℝ) / 2)) ≤ 2 := by
  rw [power_integral hY]
  have hs : 0 ≤ 1 / Real.sqrt Y := by positivity
  linarith

theorem log_power_integral_le_four {Y : ℝ} (hY : 1 ≤ Y) :
    (∫ y in (1 : ℝ)..Y, Real.log y * y ^ (-(3 : ℝ) / 2)) ≤ 4 := by
  rw [log_power_integral hY]
  have hl : 0 ≤ Real.log Y := Real.log_nonneg hY
  have hn : 0 ≤ (2 * Real.log Y + 4) / Real.sqrt Y := by positivity
  linarith

theorem centered_fract_abs_le (y : ℝ) : |Int.fract y - 1 / 2| ≤ (1 / 2 : ℝ) := by
  rw [abs_le]
  constructor <;> linarith [Int.fract_nonneg y, Int.fract_lt_one y]

theorem centered_error_bound {A d Y : ℝ} (hA : 1 ≤ A) (hd : 1 ≤ d) (hY : 1 ≤ Y)
    (v : ℝ → ℝ)
    (hv : ∀ y ∈ Icc 1 Y, |v y| ≤
      (1 + (1 / 2 + 5 / A) * Real.log y) / Real.sqrt d * y ^ (-(3 : ℝ) / 2)) :
    |∫ y in (1 : ℝ)..Y, (Int.fract y - 1 / 2) * v y| ≤
      (2 + 10 / A) / Real.sqrt d := by
  let c : ℝ := 1 / 2 + 5 / A
  let majorant : ℝ → ℝ := fun y =>
    (1 / (2 * Real.sqrt d)) * (y ^ (-(3 : ℝ) / 2) +
      c * (Real.log y * y ^ (-(3 : ℝ) / 2)))
  have hc : 0 ≤ c := by dsimp [c]; positivity
  have hi : IntervalIntegrable majorant volume 1 Y :=
    ((power_intervalIntegrable hY _).add
      ((log_power_intervalIntegrable hY).const_mul c)).const_mul _
  have he := intervalIntegral.norm_integral_le_of_norm_le hY (by
    apply Filter.Eventually.of_forall
    intro y hy
    rw [Real.norm_eq_abs, abs_mul]
    calc
      _ ≤ (1 / 2) * |v y| :=
        mul_le_mul_of_nonneg_right (centered_fract_abs_le y) (abs_nonneg _)
      _ ≤ (1 / 2) * ((1 + c * Real.log y) / Real.sqrt d *
          y ^ (-(3 : ℝ) / 2)) :=
        mul_le_mul_of_nonneg_left (hv y ⟨hy.1.le, hy.2⟩) (by norm_num)
      _ = majorant y := by dsimp [majorant]; ring) hi
  rw [Real.norm_eq_abs] at he
  apply he.trans
  dsimp [majorant]
  rw [intervalIntegral.integral_const_mul,
    intervalIntegral.integral_add (power_intervalIntegrable hY _)
      ((log_power_intervalIntegrable hY).const_mul c),
    intervalIntegral.integral_const_mul]
  calc
    _ ≤ (1 / (2 * Real.sqrt d)) * (2 + c * 4) := by
      gcongr
      · exact power_integral_le_two hY
      · exact log_power_integral_le_four hY
    _ = (2 + 10 / A) / Real.sqrt d := by dsimp [c]; ring

theorem error_budget_le_twelve {A d : ℝ} (hA : 1 ≤ A) (_hd : 1 ≤ d) :
    (2 + 10 / A) / Real.sqrt d ≤ 12 / Real.sqrt d := by
  apply div_le_div_of_nonneg_right _ (Real.sqrt_nonneg _)
  have ha : 0 < A := by linarith
  have h : 10 / A ≤ (10 : ℝ) := (div_le_iff₀ ha).2 (by linarith)
  linarith

end
end InnerAbel.Budgets
