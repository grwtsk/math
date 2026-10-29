-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.Weight.Varianta6ab196349bb3a9c68350707a0960ae91a4a86a908726fa51f3999140c3ae560","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a6ab196349bb3a9c68350707a0960ae91a4a86a908726fa51f3999140c3ae560","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Weight.Varianta6ab196349bb3a9c68350707a0960ae91a4a86a908726fa51f3999140c3ae560","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"a6ab196349bb3a9c68350707a0960ae91a4a86a908726fa51f3999140c3ae560","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/a6ab196349bb3a9c68350707a0960ae91a4a86a908726fa51f3999140c3ae560.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Nat.Factorial.BigOperators
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Tactic

/-!
# Factorial weights for the actual xi Jensen closure

The weights have finite support in the coefficient index. Their product formula
and quantitative error estimate include the omitted tail; no real-rootedness or
trace positivity is inferred from these scalar estimates.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.Weight.Varianta6ab196349bb3a9c68350707a0960ae91a4a86a908726fa51f3999140c3ae560

namespace FormalResearch.RiemannHypothesis.XiJensenWeights
open Finset Filter
open scoped Topology
noncomputable section

/-- The zero-extended factorial weight; the descending factorial makes the support explicit. -/
def weight (n k : ℕ) : ℝ :=
  ((2 * n).descFactorial (2 * k) : ℝ) / (2 * (n : ℝ)) ^ (2 * k)

@[simp] theorem weight_zero_index (n : ℕ) : weight n 0 = 1 := by
  simp [weight]

/-- Every index past the finite Jensen degree has weight zero. -/
theorem weight_eq_zero_of_lt {n k : ℕ} (h : n < k) : weight n k = 0 := by
  simp [weight, Nat.descFactorial_of_lt (show 2 * n < 2 * k by omega)]

/-- The original factorial quotient, without any hidden rescaling. -/
theorem weight_eq_factorial {n k : ℕ} (hk : k ≤ n) :
    weight n k = ((2 * n).factorial : ℝ) /
      (((2 * n - 2 * k).factorial : ℝ) * (2 * (n : ℝ)) ^ (2 * k)) := by
  have hf : ((2 * n - 2 * k).factorial : ℝ) ≠ 0 := by positivity
  have h := congrArg (fun a : ℕ => (a : ℝ))
    (Nat.factorial_mul_descFactorial (show 2 * k ≤ 2 * n by omega))
  simp only [Nat.cast_mul] at h
  unfold weight
  rw [← h]
  field_simp

/-- The leading weight retains its exact nonzero factorial normalization. -/
theorem weight_self (n : ℕ) :
    weight n n = ((2 * n).factorial : ℝ) / (2 * (n : ℝ)) ^ (2 * n) := by
  simp [weight_eq_factorial (le_refl n)]

/-- Every coefficient inside a positive-degree Jensen closure keeps positive weight. -/
theorem weight_pos {n k : ℕ} (hn : 1 ≤ n) (hk : k ≤ n) : 0 < weight n k := by
  unfold weight
  apply div_pos
  · exact_mod_cast (Nat.descFactorial_pos.mpr (show 2 * k ≤ 2 * n by omega))
  · positivity

/-- The falling-factorial product remains valid when its zero factor truncates the tail. -/
theorem weight_eq_prod {n : ℕ} (hn : 1 ≤ n) (k : ℕ) :
    weight n k = ∏ j ∈ range (2 * k), (1 - (j : ℝ) / (2 * (n : ℝ))) := by
  have hn0 : (2 * (n : ℝ)) ≠ 0 := by positivity
  unfold weight
  rw [Nat.descFactorial_eq_prod_range, ← Finset.prod_range_natCast_sub (R := ℝ)]
  simp only [Nat.cast_mul, Nat.cast_ofNat]
  rw [show (2 * (n : ℝ)) ^ (2 * k) =
    ∏ _j ∈ range (2 * k), (2 * (n : ℝ)) by simp, ← Finset.prod_div_distrib]
  apply Finset.prod_congr rfl
  intro j _
  field_simp

/-- All weights are nonnegative, including the zero-extended part. -/
theorem weight_nonneg (n k : ℕ) : 0 ≤ weight n k := by
  unfold weight
  positivity

private theorem factor_mem_unit {n k j : ℕ} (hn : 1 ≤ n) (hk : k ≤ n)
    (hj : j ∈ range (2 * k)) :
    0 ≤ 1 - (j : ℝ) / (2 * (n : ℝ)) ∧
      1 - (j : ℝ) / (2 * (n : ℝ)) ≤ 1 := by
  have hn0 : 0 < 2 * (n : ℝ) := by positivity
  have hjn : (j : ℝ) ≤ 2 * (n : ℝ) := by exact_mod_cast (show j ≤ 2 * n by
    have := Finset.mem_range.mp hj
    omega)
  constructor
  · exact sub_nonneg.mpr ((div_le_one hn0).mpr hjn)
  · exact sub_le_self _ (div_nonneg (Nat.cast_nonneg _) hn0.le)

/-- The weighting never amplifies a source coefficient. -/
theorem weight_le_one (n k : ℕ) : weight n k ≤ 1 := by
  by_cases hk : k ≤ n
  · by_cases hn : 1 ≤ n
    · rw [weight_eq_prod hn]
      exact Finset.prod_le_one (fun j hj => (factor_mem_unit hn hk hj).1)
        (fun j hj => (factor_mem_unit hn hk hj).2)
    · have hn0 : n = 0 := by omega
      have hk0 : k = 0 := by omega
      simp [hn0, hk0]
  · rw [weight_eq_zero_of_lt (by omega)]
    norm_num

private theorem sum_range_real (m : ℕ) :
    ∑ j ∈ range m, (j : ℝ) = (m : ℝ) * ((m : ℝ) - 1) / 2 := by
  induction m with
  | zero => simp
  | succ m ih =>
    rw [sum_range_succ, ih]
    push_cast
    ring

/-- The omitted coefficients obey the same quantitative error estimate as the finite part. -/
theorem one_sub_weight_le {n : ℕ} (hn : 1 ≤ n) (k : ℕ) :
    1 - weight n k ≤ (2 * (k : ℝ)) * (2 * (k : ℝ) - 1) / (4 * (n : ℝ)) := by
  have hn0 : 0 < 2 * (n : ℝ) := by positivity
  by_cases hk : k ≤ n
  · rw [weight_eq_prod hn, Finset.prod_one_sub_ordered]
    simp only [sub_sub_cancel]
    calc
      _ ≤ ∑ j ∈ range (2 * k), (j : ℝ) / (2 * (n : ℝ)) := by
        apply Finset.sum_le_sum
        intro j hj
        apply mul_le_of_le_one_right (by positivity)
        apply Finset.prod_le_one
        · intro i hi
          exact (factor_mem_unit hn hk (Finset.mem_filter.mp hi).1).1
        · intro i hi
          exact (factor_mem_unit hn hk (Finset.mem_filter.mp hi).1).2
      _ = _ := by
        rw [← Finset.sum_div, sum_range_real]
        push_cast
        ring
  · rw [weight_eq_zero_of_lt (by omega)]
    have hn1 : (1 : ℝ) ≤ n := by exact_mod_cast hn
    have hkn : (n : ℝ) + 1 ≤ k := by exact_mod_cast (show n + 1 ≤ k by omega)
    apply (le_div_iff₀ (by positivity : 0 < 4 * (n : ℝ))).mpr
    nlinarith

/-- Both sides of the reconstruction defect are controlled at every coefficient index. -/
theorem weight_error_bounds {n : ℕ} (hn : 1 ≤ n) (k : ℕ) :
    0 ≤ 1 - weight n k ∧
      1 - weight n k ≤ (2 * (k : ℝ)) * (2 * (k : ℝ) - 1) / (4 * (n : ℝ)) :=
  ⟨sub_nonneg.mpr (weight_le_one n k), one_sub_weight_le hn k⟩

/-- Each fixed source coefficient is restored as the degree increases. -/
theorem tendsto_weight (k : ℕ) : Tendsto (fun n => weight n k) atTop (𝓝 1) := by
  have hu : Tendsto
      (fun n : ℕ => (2 * (k : ℝ)) * (2 * (k : ℝ) - 1) / (4 * (n : ℝ)))
      atTop (𝓝 0) := by
    simpa only [div_div] using tendsto_const_div_atTop_nhds_zero_nat
      ((2 * (k : ℝ)) * (2 * (k : ℝ) - 1) / 4)
  have he : Tendsto (fun n => 1 - weight n k) atTop (𝓝 0) := by
    apply squeeze_zero' (Filter.Eventually.of_forall fun n =>
      sub_nonneg.mpr (weight_le_one n k)) _ hu
    filter_upwards [eventually_ge_atTop 1] with n hn
    exact one_sub_weight_le hn k
  simpa only [sub_zero, sub_sub_cancel] using (tendsto_const_nhds (x := (1 : ℝ))).sub he

end
end FormalResearch.RiemannHypothesis.XiJensenWeights
