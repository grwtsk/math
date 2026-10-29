-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ShortInventoryThree.Variant1e024bab04e3def47c5eac5fb2139aaef66989f85491554834ae6a1207aa0e68","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1e024bab04e3def47c5eac5fb2139aaef66989f85491554834ae6a1207aa0e68","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ShortInventoryThree.Variant1e024bab04e3def47c5eac5fb2139aaef66989f85491554834ae6a1207aa0e68","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"1e024bab04e3def47c5eac5fb2139aaef66989f85491554834ae6a1207aa0e68","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle26/regent-private30-replay-v2/fixtures/ScopeFixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceJointMangoldtColumn

/-! Prospective hostile controls only; no native execution or acceptance credit. -/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ShortInventoryThree.Variant1e024bab04e3def47c5eac5fb2139aaef66989f85491554834ae6a1207aa0e68

namespace FormalResearch.RiemannHypothesis.JointMangoldtColumnFixtures

open ArithmeticFunction
open scoped InnerProductSpace
open SourceVaughanHankel SourceJointMangoldtColumn
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimatePlainKernel
open EstimateVaughanIdentity EstimateBetaCentering

noncomputable section

private def «prefix» (U k : ℕ) : ℝ := ∑ n ∈ Finset.Ioc U k, centeredBeta U n

private theorem short_inventory_three : Finset.Icc 1 3 = {1, 2, 3} := by decide

private theorem mobius_two : (moebius 2 : ℝ) = -1 := by
  exact_mod_cast moebius_apply_prime Nat.prime_two

private theorem mobius_three : (moebius 3 : ℝ) = -1 := by
  exact_mod_cast moebius_apply_prime (by norm_num : Nat.Prime 3)

theorem actual_prefix_three_four : «prefix» 3 4 = 1 / 6 := by
  unfold «prefix»
  rw [centeredBeta_interval_eq_discrepancy 3 3 4 (by omega) le_rfl (by omega)]
  norm_num [floorDiscrepancy, short_inventory_three, mobius_two, mobius_three]

theorem actual_prefix_three_five : «prefix» 3 5 = -2 / 3 := by
  unfold «prefix»
  rw [centeredBeta_interval_eq_discrepancy 3 3 5 (by omega) le_rfl (by omega)]
  norm_num [floorDiscrepancy, short_inventory_three, mobius_two, mobius_three]

theorem actual_lower_prefix_zero (U : ℕ) : «prefix» U U = 0 := by simp [«prefix»]

theorem actual_prefix_not_always_nonpositive :
    ¬ ∀ k : ℕ, 3 ≤ k → «prefix» 3 k ≤ 0 := by
  intro h
  have h4 := h 4 (by omega)
  rw [actual_prefix_three_four] at h4
  norm_num at h4

theorem actual_prefix_not_always_nonnegative :
    ¬ ∀ k : ℕ, 3 ≤ k → 0 ≤ «prefix» 3 k := by
  intro h
  have h5 := h 5 (by omega)
  rw [actual_prefix_three_five] at h5
  norm_num at h5

theorem raw_row_differs_from_centered_prefix :
    (∑ n ∈ Finset.Ioc 3 4, beta 3 n) = 0 ∧ «prefix» 3 4 = 1 / 6 := by
  constructor
  · rw [beta_interval_eq_quotients 3 3 4 (by omega) le_rfl (by omega)]
    norm_num [short_inventory_three, mobius_two, mobius_three]
  · exact actual_prefix_three_four

theorem actual_scale_seven_quarters_lower_cutoff :
    vaughanCutoff (7 / 4 : ℝ) = 3 := by norm_num [vaughanCutoff]

theorem actual_scale_seven_quarters_upper_at_least_five :
    5 ≤ sourceKernelCutoff (7 / 4 : ℝ) := by
  change 5 ≤ ⌊Real.exp (2 * (7 / 4 : ℝ))⌋₊
  apply (Nat.le_floor_iff (Real.exp_pos _).le).2
  have hq := Real.quadratic_le_exp_of_nonneg
    (x := 2 * (7 / 4 : ℝ)) (by norm_num)
  norm_num at hq ⊢
  linarith

theorem actual_scale_long_axis_contains_four : 4 ∈ longInventory (7 / 4 : ℝ) := by
  change 4 ∈ Finset.Ioc (vaughanCutoff (7 / 4 : ℝ))
    (sourceKernelCutoff (7 / 4 : ℝ))
  rw [Finset.mem_Ioc, actual_scale_seven_quarters_lower_cutoff]
  exact ⟨by omega, (by omega : 4 ≤ 5).trans
    actual_scale_seven_quarters_upper_at_least_five⟩

theorem actual_scale_excludes_lower_and_off_axis :
    3 ∉ longInventory (7 / 4 : ℝ) ∧ 1 ∉ longInventory (7 / 4 : ℝ) := by
  change 3 ∉ Finset.Ioc (vaughanCutoff (7 / 4 : ℝ))
      (sourceKernelCutoff (7 / 4 : ℝ)) ∧
    1 ∉ Finset.Ioc (vaughanCutoff (7 / 4 : ℝ)) (sourceKernelCutoff (7 / 4 : ℝ))
  rw [actual_scale_seven_quarters_lower_cutoff]
  simp

theorem generic_nonzero_terminal_cannot_be_dropped :
    «prefix» 3 5 * (1 : ℝ) ≠
      ∑ k ∈ Finset.Ico 4 5, «prefix» 3 k * ((1 : ℝ) - 1) := by
  simp only [sub_self, mul_zero, Finset.sum_const_zero, mul_one]
  rw [actual_prefix_three_five]
  norm_num

theorem exact_upper_and_increment_inventories :
    Finset.Ioc 3 5 = {4, 5} ∧ Finset.Ico 4 5 = {4} := by decide

theorem actual_source_column_terminal_zero (A : ℝ) (hA : 1 ≤ A) :
    (∑ m ∈ longInventory A,
      vonMangoldt m * sourcePlainWeight A ((m * sourceKernelCutoff A : ℕ) : ℝ)) = 0 := by
  classical
  have hU := vaughanCutoff_pos A hA
  have hUN := vaughanCutoff_le_sourceKernelCutoff A hA
  have hN : 1 ≤ sourceKernelCutoff A := hU.trans hUN
  apply Finset.sum_eq_zero
  intro m hm
  have hmU := (Finset.mem_Ioc.mp hm).1
  have hm2 : 2 ≤ m := by omega
  have hcut : sourceKernelCutoff A < m * sourceKernelCutoff A := by nlinarith
  rw [sourcePlainWeight_zero_of_cutoff_lt A hA (m * sourceKernelCutoff A) hcut]
  exact mul_zero _

theorem full_compensated_readout_retains_diagonal_and_main (A : ℝ) (hA : 1 ≤ A) :
    VaughanOperatorReview.covarianceOperatorValue A / 2 -
        SourceSamplingLedger.independentMainTerm A =
      let U := vaughanCutoff A
      let N := sourceKernelCutoff A
      let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
      let R : ℕ → ℝ := fun k =>
        ∑ m ∈ longInventory A, vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ)
      (∑ k ∈ Finset.Ico (U + 1) N, B k * (R k - R (k + 1))) -
        centeredDeletedDiagonal A - SourceSamplingLedger.independentMainTerm A := by
  rw [covarianceOperator_half_eq_pairing_sub_diagonal A hA]
  have hj := mangoldt_inner_eq_centered_prefix_column_increments A hA
  rw [← sourceHankelPairing_eq_l2_inner A hA] at hj
  exact congrArg (fun J : ℝ =>
    J - centeredDeletedDiagonal A - SourceSamplingLedger.independentMainTerm A) hj

end
end FormalResearch.RiemannHypothesis.JointMangoldtColumnFixtures
