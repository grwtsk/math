# Factorial Big Operators — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d5e4cc9c85779785f80023d152a609254cad0a0f` · SHA-256 `31ee46efc4821d50642473c94b138a7cad1350bb2fb0c141321b1f3b724279aa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Pim Otte. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller, Pim Otte
-/
import Mathlib.Data.Nat.Factorial.Basic
import Mathlib.Algebra.BigOperators.Order

#align_import data.nat.factorial.big_operators from "leanprover-community/mathlib"@"1126441d6bccf98c81214a0780c73d499f6721fe"

/-!
# Factorial with big operators

This file contains some lemmas on factorials in combination with big operators.

While in terms of semantics they could be in the `Basic.lean` file, importing
`Algebra.BigOperators.Basic` leads to a cyclic import.

-/


open Nat
open BigOperators

namespace Nat

variable {α : Type*} (s : Finset α) (f : α → ℕ)

theorem prod_factorial_pos : 0 < ∏ i in s, (f i)! :=
  Finset.prod_pos fun i _ => factorial_pos (f i)
#align nat.prod_factorial_pos Nat.prod_factorial_pos

theorem prod_factorial_dvd_factorial_sum : (∏ i in s, (f i)!) ∣ (∑ i in s, f i)! := by
  classical
    induction' s using Finset.induction with a' s' has ih
    · simp only [Finset.sum_empty, Finset.prod_empty, factorial]
    · simp only [Finset.prod_insert has, Finset.sum_insert has]
      refine' dvd_trans (mul_dvd_mul_left (f a')! ih) _
      apply Nat.factorial_mul_factorial_dvd_factorial_add
#align nat.prod_factorial_dvd_factorial_sum Nat.prod_factorial_dvd_factorial_sum

end Nat
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fa8e161fe93d54db1620ca00c6c60e8bc60968c225c9bcdd4cd0661caaeb230c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant31ee46efc4821d50642473c94b138a7cad1350bb2fb0c141321b1f3b724279aa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
