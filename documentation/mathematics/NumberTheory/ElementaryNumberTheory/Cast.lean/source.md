# Cast — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e6cc335cafcbaf9076ebce177cbd20f8bef07a30` · SHA-256 `ebfd5641be404ae0112cfe7588d2c5cfeaa83aa0d0efd9b88d4dfd80b51be0cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1777aad60403a123c577b5a1de3ecb6ddc1f825a5633d619627ca5720aa5a2b9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Cast/Variantebfd5641be404ae0112cfe7588d2c5cfeaa83aa0d0efd9b88d4dfd80b51be0cd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
