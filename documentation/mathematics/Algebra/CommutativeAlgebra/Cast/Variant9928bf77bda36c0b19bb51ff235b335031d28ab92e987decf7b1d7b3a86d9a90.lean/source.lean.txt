-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.CastAscFactorial.Variantebfd5641be404ae0112cfe7588d2c5cfeaa83aa0d0efd9b88d4dfd80b51be0cd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ebfd5641be404ae0112cfe7588d2c5cfeaa83aa0d0efd9b88d4dfd80b51be0cd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.CastAscFactorial.Variantebfd5641be404ae0112cfe7588d2c5cfeaa83aa0d0efd9b88d4dfd80b51be0cd","mathematical_subject":"Algebra.Polynomials","original_sha256":"ebfd5641be404ae0112cfe7588d2c5cfeaa83aa0d0efd9b88d4dfd80b51be0cd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Nat/Factorial/Cast.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.RingTheory.Polynomial.Pochhammer

/-!
# Cast of factorials

This file allows calculating factorials (including ascending and descending ones) as elements of a
semiring.

This is particularly crucial for `Nat.descFactorial` as subtraction on `ℕ` does **not** correspond
to subtraction on a general semiring. For example, we can't rely on existing cast lemmas to prove
`↑(a.descFactorial 2) = ↑a * (↑a - 1)`. We must use the fact that, whenever `↑(a - 1)` is not equal
to `↑a - 1`, the other factor is `0` anyway.
-/



namespace GRWTSK.Algebra.CommutativeAlgebra.CastAscFactorial.Variantebfd5641be404ae0112cfe7588d2c5cfeaa83aa0d0efd9b88d4dfd80b51be0cd

open Nat

variable (S : Type*)

namespace Nat

section Semiring

variable [Semiring S] (a b : ℕ)

theorem cast_ascFactorial : a.ascFactorial b = (ascPochhammer S b).eval (a : S) := by
  rw [← ascPochhammer_nat_eq_ascFactorial, ascPochhammer_eval_cast]

theorem cast_descFactorial :
    a.descFactorial b = (ascPochhammer S b).eval (a - (b - 1) : S) := by
  rw [← ascPochhammer_eval_cast, ascPochhammer_nat_eq_descFactorial]
  induction' b with b
  · simp
  · simp_rw [add_succ, Nat.add_one_sub_one]
    obtain h | h := le_total a b
    · rw [descFactorial_of_lt (lt_succ_of_le h), descFactorial_of_lt (lt_succ_of_le _)]
      rw [tsub_eq_zero_iff_le.mpr h, zero_add]
    · rw [tsub_add_cancel_of_le h]

theorem cast_factorial : (a ! : S) = (ascPochhammer S a).eval 1 := by
  rw [← one_ascFactorial, cast_ascFactorial, cast_one]

end Semiring

section Ring

variable [Ring S] (a b : ℕ)

/-- Convenience lemma. The `a - 1` is not using truncated subtraction, as opposed to the definition
of `Nat.descFactorial` as a natural. -/
theorem cast_descFactorial_two : (a.descFactorial 2 : S) = a * (a - 1) := by
  rw [cast_descFactorial]
  cases a
  · simp
  · rw [succ_sub_succ, tsub_zero, cast_succ, add_sub_cancel_right, ascPochhammer_succ_right,
      ascPochhammer_one, Polynomial.X_mul, Polynomial.eval_mul_X, Polynomial.eval_add,
      Polynomial.eval_X, cast_one, Polynomial.eval_one]

end Ring

end Nat
