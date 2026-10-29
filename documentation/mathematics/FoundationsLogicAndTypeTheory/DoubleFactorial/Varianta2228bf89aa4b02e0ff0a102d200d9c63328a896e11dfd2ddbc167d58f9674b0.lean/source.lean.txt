-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.DoubleFactorial.Variant9275d684ba720b4ea1cb8bad1e6d7f63860c3dbf476e41822a558ad54eaddb1d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9275d684ba720b4ea1cb8bad1e6d7f63860c3dbf476e41822a558ad54eaddb1d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.DoubleFactorial.Variant9275d684ba720b4ea1cb8bad1e6d7f63860c3dbf476e41822a558ad54eaddb1d","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"9275d684ba720b4ea1cb8bad1e6d7f63860c3dbf476e41822a558ad54eaddb1d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Nat/Factorial/DoubleFactorial.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jake Levinson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jake Levinson
-/
import Mathlib.Data.Nat.Factorial.Basic
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Positivity.Core
import Mathlib.Algebra.BigOperators.Group.Finset.Basic

/-!
# Double factorials

This file defines the double factorial,
  `n‼ := n * (n - 2) * (n - 4) * ...`.

## Main declarations

* `Nat.doubleFactorial`: The double factorial.
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.DoubleFactorial.Variant9275d684ba720b4ea1cb8bad1e6d7f63860c3dbf476e41822a558ad54eaddb1d

open Nat

namespace Nat

/-- `Nat.doubleFactorial n` is the double factorial of `n`. -/
@[simp]
def doubleFactorial : ℕ → ℕ
  | 0 => 1
  | 1 => 1
  | k + 2 => (k + 2) * doubleFactorial k

-- This notation is `\!!` not two !'s
@[inherit_doc] scoped notation:10000 n "‼" => Nat.doubleFactorial n

lemma doubleFactorial_pos : ∀ n, 0 < n‼
  | 0 | 1 => zero_lt_one
  | _n + 2 => mul_pos (succ_pos _) (doubleFactorial_pos _)

theorem doubleFactorial_add_two (n : ℕ) : (n + 2)‼ = (n + 2) * n‼ :=
  rfl

theorem doubleFactorial_add_one (n : ℕ) : (n + 1)‼ = (n + 1) * (n - 1)‼ := by cases n <;> rfl

theorem factorial_eq_mul_doubleFactorial : ∀ n : ℕ, (n + 1)! = (n + 1)‼ * n‼
  | 0 => rfl
  | k + 1 => by
    rw [doubleFactorial_add_two, factorial, factorial_eq_mul_doubleFactorial _, mul_comm _ k‼,
      mul_assoc]

lemma doubleFactorial_le_factorial : ∀ n, n‼ ≤ n !
  | 0 => le_rfl
  | n + 1 => by
    rw [factorial_eq_mul_doubleFactorial]; exact Nat.le_mul_of_pos_right _ n.doubleFactorial_pos

theorem doubleFactorial_two_mul : ∀ n : ℕ, (2 * n)‼ = 2 ^ n * n !
  | 0 => rfl
  | n + 1 => by
    rw [mul_add, mul_one, doubleFactorial_add_two, factorial, pow_succ, doubleFactorial_two_mul _,
      succ_eq_add_one]
    ring

theorem doubleFactorial_eq_prod_even : ∀ n : ℕ, (2 * n)‼ = ∏ i ∈ Finset.range n, 2 * (i + 1)
  | 0 => rfl
  | n + 1 => by
    rw [Finset.prod_range_succ, ← doubleFactorial_eq_prod_even _, mul_comm (2 * n)‼,
      (by ring : 2 * (n + 1) = 2 * n + 2)]
    rfl

theorem doubleFactorial_eq_prod_odd :
    ∀ n : ℕ, (2 * n + 1)‼ = ∏ i ∈ Finset.range n, (2 * (i + 1) + 1)
  | 0 => rfl
  | n + 1 => by
    rw [Finset.prod_range_succ, ← doubleFactorial_eq_prod_odd _, mul_comm (2 * n + 1)‼,
      (by ring : 2 * (n + 1) + 1 = 2 * n + 1 + 2)]
    rfl

end Nat

namespace Mathlib.Meta.Positivity
open Lean Meta Qq

/-- Extension for `Nat.doubleFactorial`. -/
@[positivity Nat.doubleFactorial _]
def evalDoubleFactorial : PositivityExt where eval {u α} _ _ e := do
  match u, α, e with
  | 0, ~q(ℕ), ~q(Nat.doubleFactorial $n) =>
    assumeInstancesCommute
    return .positive q(Nat.doubleFactorial_pos $n)
  | _, _ => throwError "not Nat.doubleFactorial"

example (n : ℕ) : 0 < n‼ := by positivity

end Mathlib.Meta.Positivity
