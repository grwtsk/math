-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.SumRangeAddEdiv.Variantecca8feb64085ab03e9589bacd45c501bf6ccfc8ef21649b04e280898a3f44ae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ecca8feb64085ab03e9589bacd45c501bf6ccfc8ef21649b04e280898a3f44ae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.SumRangeAddEdiv.Variantecca8feb64085ab03e9589bacd45c501bf6ccfc8ef21649b04e280898a3f44ae","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"ecca8feb64085ab03e9589bacd45c501bf6ccfc8ef21649b04e280898a3f44ae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Order/Floor/BigOperators.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Seewoo Lee. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Seewoo Lee
-/
module

public import Mathlib.Algebra.Order.Floor.Ring
public import Mathlib.Algebra.BigOperators.Ring.Finset
public import Mathlib.Order.Interval.Finset.Nat

/-!
# Results about big operators with values in floor rings

This file proves the classical Hermite identity for the floor function: for every
element `x` of a linearly ordered floor field and every natural number `n`,
$$ \sum_{i=0}^{n-1} \left\lfloor x + \frac{i}{n} \right\rfloor = \lfloor n x \rfloor. $$

## Main statements

* `Int.sum_floor_add_div`: Hermite's identity, `∑ i ∈ Finset.range n, ⌊x + i / n⌋ = ⌊n * x⌋`.

-/


namespace GRWTSK.Algebra.SumRangeAddEdiv.Variantecca8feb64085ab03e9589bacd45c501bf6ccfc8ef21649b04e280898a3f44ae

namespace Int

/-- The discrete (integer) form of Hermite's identity: the sum of `(m + i) / n` over a
complete block `0 ≤ i < n` of consecutive shifts equals `m`, where `/` is Euclidean
(`Int.ediv`) division. -/
public theorem sum_range_add_ediv (m : ℤ) {n : ℕ} (hn : 0 < n) :
    ∑ i ∈ Finset.range n, (m + i) / n = m := by
  rw [← Int.natCast_pos] at hn
  lift m % n to ℕ using Int.emod_nonneg m (by grind) with t ht
  calc
    _ = ∑ i ∈ Finset.range n, (m / n + if n - t ≤ i then 1 else 0) :=
      Finset.sum_congr rfl fun i hi ↦ by
        rw [Int.add_ediv_of_pos hn]
        grind [Nat.div_eq_zero_iff, Nat.mod_eq_of_lt]
    _ = n * (m / n) + (Finset.Ico (n - t) n).card := by
      simp [Finset.sum_add_distrib, -tsub_le_iff_right, -Nat.sub_le_iff_le_add,
        ← Nat.Ico_zero_eq_range]
    _ = m := by
      have : m % n < n := Int.emod_lt_of_pos _ hn
      grind [Int.mul_ediv_add_emod, Nat.card_Ico]

/-- **Hermite's identity** for the floor function: for every `x` in a linearly ordered
floor field and every `n : ℕ`, `∑ i ∈ Finset.range n, ⌊x + i / n⌋ = ⌊n * x⌋`. -/
public theorem sum_floor_add_div
    {α : Type*} [Field α] [LinearOrder α] [IsOrderedRing α] [FloorRing α] (x : α) (n : ℕ) :
    ∑ i ∈ Finset.range n, ⌊x + i / n⌋ = ⌊n * x⌋ := by
  rcases Nat.eq_zero_or_pos n with rfl | hn; · simp
  calc
    _ = ∑ i ∈ Finset.range n, (⌊(n : α) * x⌋ + (i : ℤ)) / (n : ℤ) :=
        Finset.sum_congr rfl fun i _ ↦ by rw [← floor_add_natCast, ← floor_div_natCast]; field_simp
    _ = ⌊(n : α) * x⌋ := sum_range_add_ediv _ hn

end Int
