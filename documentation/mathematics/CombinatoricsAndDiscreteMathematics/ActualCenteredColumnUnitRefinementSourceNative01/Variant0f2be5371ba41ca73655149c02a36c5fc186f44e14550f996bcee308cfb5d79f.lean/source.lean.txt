-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ActualCenteredBetaIntervalEqNonunitFloor.Variant48249335737ca5dd0ac4b8991831c08db2d5eb39759c3d6f7e34b65fb26610ae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"48249335737ca5dd0ac4b8991831c08db2d5eb39759c3d6f7e34b65fb26610ae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ActualCenteredBetaIntervalEqNonunitFloor.Variant48249335737ca5dd0ac4b8991831c08db2d5eb39759c3d6f7e34b65fb26610ae","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"48249335737ca5dd0ac4b8991831c08db2d5eb39759c3d6f7e34b65fb26610ae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-challenge-next/ActualCenteredColumnUnitRefinement.source-native01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateBetaCentering

/-!
The retained unit has exactly zero interval floor discrepancy. Remove that
zero cell before bounding the genuine centered Vaughan columns. This improves
the literal column budget from U to U-1, while retaining all nonunit Moebius
signs, real quotient casts and closed cutoff. No joint signed bound follows.
Research direction: grwtsk contributors. Formal challenge: OpenAI Codex.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ActualCenteredBetaIntervalEqNonunitFloor.Variant48249335737ca5dd0ac4b8991831c08db2d5eb39759c3d6f7e34b65fb26610ae

set_option autoImplicit false
namespace RH16IndependentChallengeNext
open ArithmeticFunction
open scoped BigOperators
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateBetaCentering EstimateVaughanSource
noncomputable section

/-- The original exact centered interval inventory has no unit floor-error cell. -/
theorem actualCenteredBeta_interval_eq_nonunit_floor (U L H : ℕ)
    (hU : 1 ≤ U) (hUL : U ≤ L) (hLH : L ≤ H) :
    (∑ n ∈ Finset.Ioc L H, centeredBeta U n) =
      -∑ d ∈ Finset.Icc 2 U, (moebius d : ℝ) * floorDiscrepancy L H d := by
  rw [centeredBeta_interval_eq_discrepancy U L H hU hUL hLH]
  congr 1
  symm
  apply Finset.sum_subset
  · intro d hd
    exact Finset.mem_Icc.mpr ⟨by have := (Finset.mem_Icc.mp hd).1; omega,
      (Finset.mem_Icc.mp hd).2⟩
  · intro d hd hnot
    have hd1 : d = 1 := by
      simp only [Finset.mem_Icc] at hd hnot
      omega
    subst d
    simp [floorDiscrepancy]

/-- Only the actual nonunit absolute Moebius inventory enters this column bound. -/
theorem actualCenteredBeta_interval_abs_le_nonunit_mass (U L H : ℕ)
    (hU : 1 ≤ U) (hUL : U ≤ L) (hLH : L ≤ H) :
    |∑ n ∈ Finset.Ioc L H, centeredBeta U n| ≤
      ∑ d ∈ Finset.Icc 2 U, |(moebius d : ℝ)| := by
  rw [actualCenteredBeta_interval_eq_nonunit_floor U L H hU hUL hLH, abs_neg]
  apply (Finset.abs_sum_le_sum_abs _ _).trans
  apply Finset.sum_le_sum
  intro d hd
  rw [abs_mul]
  exact (mul_le_mul_of_nonneg_left
    (floorDiscrepancy_abs_le_one L H d (by
      have := (Finset.mem_Icc.mp hd).1
      omega)) (abs_nonneg _)).trans_eq (mul_one _)

/-- The genuine closed count yields U-1, including exact zero when U=1. -/
theorem actualCenteredBeta_interval_abs_le_cutoff_sub_one (U L H : ℕ)
    (hU : 1 ≤ U) (hUL : U ≤ L) (hLH : L ≤ H) :
    |∑ n ∈ Finset.Ioc L H, centeredBeta U n| ≤ (U : ℝ) - 1 := by
  have hm : (∑ d ∈ Finset.Icc 2 U, |(moebius d : ℝ)|) ≤
      ∑ _d ∈ Finset.Icc 2 U, (1 : ℝ) := by
    apply Finset.sum_le_sum
    intro d _
    exact_mod_cast (abs_moebius_le_one (n := d))
  have hc : (Finset.Icc 2 U).card = U - 1 := by
    rw [Nat.card_Icc]
    omega
  have hn : (∑ _d ∈ Finset.Icc 2 U, (1 : ℝ)) = (U : ℝ) - 1 := by
    simp only [Finset.sum_const, nsmul_eq_mul, mul_one, hc, Nat.cast_sub hU, Nat.cast_one]
  exact (actualCenteredBeta_interval_abs_le_nonunit_mass U L H hU hUL hLH).trans
    (hm.trans_eq hn)

/-- Every original real-scale Vaughan prefix preserves its literal moving cutoff. -/
theorem actualVaughanCenteredColumn_prefix_abs_le {A : ℝ} (hA : 1 ≤ A) (k : ℕ)
    (hk : vaughanCutoff A ≤ k) :
    |∑ n ∈ Finset.Ioc (vaughanCutoff A) k, centeredBeta (vaughanCutoff A) n| ≤
      (vaughanCutoff A : ℝ) - 1 :=
  actualCenteredBeta_interval_abs_le_cutoff_sub_one _ _ _
    (vaughanCutoff_pos A hA) le_rfl hk

end
end RH16IndependentChallengeNext
