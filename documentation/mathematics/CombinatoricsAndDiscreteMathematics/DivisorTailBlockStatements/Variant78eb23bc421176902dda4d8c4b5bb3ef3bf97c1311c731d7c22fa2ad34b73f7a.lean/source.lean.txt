-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.DivisorSum.Variant534bbcb837c36e1172916a3c17655ce6a57782b54c8a582c4d9035cb10b7b10a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"534bbcb837c36e1172916a3c17655ce6a57782b54c8a582c4d9035cb10b7b10a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.DivisorSum.Variant534bbcb837c36e1172916a3c17655ce6a57782b54c8a582c4d9035cb10b7b10a","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"534bbcb837c36e1172916a3c17655ce6a57782b54c8a582c4d9035cb10b7b10a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/source-filter-global/DivisorTailBlockStatements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.FiniteMobiusController
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.Tactic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DivisorSum.Variant534bbcb837c36e1172916a3c17655ce6a57782b54c8a582c4d9035cb10b7b10a

set_option autoImplicit false
namespace DivisorTailBlockScratch
open Finset ArithmeticFunction
open FormalResearch.RiemannHypothesis.SourceComparison.FiniteMobiusController
noncomputable section

private theorem divisor_sum (n : ℕ) :
    (∑ d ∈ n.divisors, (moebius d : ℝ)) = if n = 1 then 1 else 0 := by
  have h := congrArg (fun f : ArithmeticFunction ℝ => f n)
    (coe_moebius_mul_coe_zeta (R := ℝ))
  simpa only [coe_mul_zeta_apply, intCoe_apply, one_apply] using h

/-- Exact local inversion retains every divisor, including the integer endpoint. -/
theorem before_cutoff (X n : ℕ) (hn : n ≤ X) :
    (∑ d ∈ n.divisors.filter (fun d => d ≤ X), (moebius d : ℝ)) =
      if n = 1 then 1 else 0 := by
  rw [show n.divisors.filter (fun d => d ≤ X) = n.divisors by
    apply Finset.filter_eq_self.mpr
    intro d hd
    exact (Nat.le_of_dvd (Nat.pos_of_ne_zero (Nat.ne_zero_of_mem_divisors hd)) (Nat.dvd_of_mem_divisors hd)).trans hn]
  exact divisor_sum n

/-- On the first open dyadic tail block, the missing full divisor is exactly n. -/
theorem first_dyadic_block (X n : ℕ) (hn : X < n) (hn2 : n < 2 * X) :
    (∑ d ∈ n.divisors.filter (fun d => d ≤ X), (moebius d : ℝ)) =
      -(moebius n : ℝ) := by
  have hn0 : n ≠ 0 := by omega
  have hn1 : n ≠ 1 := by omega
  have he : n.divisors.filter (fun d => d ≤ X) = n.divisors.erase n := by
    ext d
    simp only [Finset.mem_filter, Finset.mem_erase]
    constructor
    · rintro ⟨hd, hdX⟩
      exact ⟨by omega, hd⟩
    · rintro ⟨hdn, hd⟩
      refine ⟨hd, ?_⟩
      by_contra hgt
      have hdX : X < d := by omega
      obtain ⟨k, hk⟩ := Nat.dvd_of_mem_divisors hd
      have hk2 : 2 ≤ k := by
        by_contra h
        have : k = 0 ∨ k = 1 := by omega
        rcases this with rfl | rfl
        · simp_all
        · simp_all
      nlinarith
  rw [he, Finset.sum_erase_eq_sub (Nat.mem_divisors_self n hn0), divisor_sum, if_neg hn1]
  ring

/-- The original reciprocal-prefix endpoint changes precisely the coefficient at X. -/
theorem corrected_endpoint (X : ℕ) (hX : 2 ≤ X) :
    (∑ d ∈ X.divisors.filter (fun d => d ≤ X), (moebius d : ℝ)) -
      (X : ℝ) * mobiusReciprocalSum X = -(X : ℝ) * mobiusReciprocalSum X := by
  rw [before_cutoff X X le_rfl, if_neg (by omega)]
  ring

/-- Exact first-block cumulative error, including the original corrected endpoint. -/
theorem corrected_first_block_prefix (X N : ℕ) (hX : 1 ≤ X)
    (hXN : X ≤ N) (hN2 : N < 2 * X) :
    (1 : ℝ) -
      ((∑ n ∈ Finset.Icc 1 N,
          ∑ d ∈ n.divisors.filter (fun d => d ≤ X), (moebius d : ℝ)) -
        (X : ℝ) * mobiusReciprocalSum X) =
      (∑ n ∈ Finset.Icc 1 N, (moebius n : ℝ)) -
        (∑ n ∈ Finset.Icc 1 X, (moebius n : ℝ)) +
          (X : ℝ) * mobiusReciprocalSum X := by
  have hu : Finset.Icc 1 N = Finset.Icc 1 X ∪ Finset.Ioc X N := by
    ext n
    simp only [Finset.mem_union, Finset.mem_Icc, Finset.mem_Ioc]
    omega
  have hd : Disjoint (Finset.Icc 1 X) (Finset.Ioc X N) := by
    apply Finset.disjoint_left.mpr
    intro n hn hn'
    simp only [Finset.mem_Icc, Finset.mem_Ioc] at hn hn'
    omega
  have hi : (∑ n ∈ Finset.Icc 1 X,
      ∑ d ∈ n.divisors.filter (fun d => d ≤ X), (moebius d : ℝ)) = 1 := by
    calc
      _ = ∑ n ∈ Finset.Icc 1 X, if n = 1 then (1 : ℝ) else 0 := by
        apply Finset.sum_congr rfl
        intro n hn
        exact before_cutoff X n (Finset.mem_Icc.mp hn).2
      _ = 1 := by simp [hX]
  have ht : (∑ n ∈ Finset.Ioc X N,
      ∑ d ∈ n.divisors.filter (fun d => d ≤ X), (moebius d : ℝ)) =
      -(∑ n ∈ Finset.Ioc X N, (moebius n : ℝ)) := by
    rw [← Finset.sum_neg_distrib]
    apply Finset.sum_congr rfl
    intro n hn
    have hn' := Finset.mem_Ioc.mp hn
    exact first_dyadic_block X n hn'.1 (lt_of_le_of_lt hn'.2 hN2)
  rw [hu, Finset.sum_union hd, Finset.sum_union hd, hi, ht]
  ring

end
end DivisorTailBlockScratch

open DivisorTailBlockScratch Finset ArithmeticFunction
open FormalResearch.RiemannHypothesis.SourceComparison.FiniteMobiusController
example (X n : ℕ) (hn : n ≤ X) :
    (∑ d ∈ n.divisors.filter (fun d => d ≤ X), (moebius d : ℝ)) =
      if n = 1 then 1 else 0 := DivisorTailBlockScratch.before_cutoff X n hn

example (X n : ℕ) (hn : X < n) (hn2 : n < 2 * X) :
    (∑ d ∈ n.divisors.filter (fun d => d ≤ X), (moebius d : ℝ)) =
      -(moebius n : ℝ) := DivisorTailBlockScratch.first_dyadic_block X n hn hn2

example (X : ℕ) (hX : 2 ≤ X) :
    (∑ d ∈ X.divisors.filter (fun d => d ≤ X), (moebius d : ℝ)) -
      (X : ℝ) * mobiusReciprocalSum X = -(X : ℝ) * mobiusReciprocalSum X := DivisorTailBlockScratch.corrected_endpoint X hX

example (X N : ℕ) (hX : 1 ≤ X)
    (hXN : X ≤ N) (hN2 : N < 2 * X) :
    (1 : ℝ) -
      ((∑ n ∈ Finset.Icc 1 N,
          ∑ d ∈ n.divisors.filter (fun d => d ≤ X), (moebius d : ℝ)) -
        (X : ℝ) * mobiusReciprocalSum X) =
      (∑ n ∈ Finset.Icc 1 N, (moebius n : ℝ)) -
        (∑ n ∈ Finset.Icc 1 X, (moebius n : ℝ)) +
          (X : ℝ) * mobiusReciprocalSum X := DivisorTailBlockScratch.corrected_first_block_prefix X N hX hXN hN2
