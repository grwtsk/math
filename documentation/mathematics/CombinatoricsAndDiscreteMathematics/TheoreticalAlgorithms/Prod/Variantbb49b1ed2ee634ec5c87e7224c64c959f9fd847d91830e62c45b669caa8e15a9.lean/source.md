# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Prod.Variantbb49b1ed2ee634ec5c87e7224c64c959f9fd847d91830e62c45b669caa8e15a9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b59ccd407ab5ea7bc34ab100398728bf92d6878a` · SHA-256 `bb49b1ed2ee634ec5c87e7224c64c959f9fd847d91830e62c45b669caa8e15a9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
import Init.Data.List.Lemmas
public import Init.BinderPredicates
public import Init.NotationExtra
import Init.Data.Nat.Lemmas

public section

set_option linter.listVariables true -- Enforce naming conventions for `List`/`Array`/`Vector` variables.
set_option linter.indexVariables true -- Enforce naming conventions for index variables.

namespace List

protected theorem prod_eq_zero_iff_exists_zero_nat {l : List Nat} : l.prod = 0 ↔ ∃ x ∈ l, x = 0 := by
  induction l with
  | nil => simp
  | cons x xs ih =>
    simp [Nat.mul_eq_zero, ih, eq_comm (a := (0 : Nat))]

protected theorem prod_pos_iff_forall_pos_nat {l : List Nat} : 0 < l.prod ↔ ∀ x ∈ l, 0 < x := by
  induction l with
  | nil => simp
  | cons x xs ih =>
    simp only [prod_cons, mem_cons, forall_eq_or_imp, ← ih]
    constructor
    · intro h
      exact ⟨Nat.pos_of_mul_pos_right h, Nat.pos_of_mul_pos_left h⟩
    · exact fun ⟨hx, hxs⟩ => Nat.mul_pos hx hxs

@[simp]
theorem prod_replicate_nat {n : Nat} {a : Nat} : (replicate n a).prod = a ^ n := by
  induction n <;> simp_all [replicate_succ, Nat.pow_succ, Nat.mul_comm]

theorem prod_append_nat {l₁ l₂ : List Nat} : (l₁ ++ l₂).prod = l₁.prod * l₂.prod := by
  simp [prod_append]

theorem prod_reverse_nat (xs : List Nat) : xs.reverse.prod = xs.prod := by
  simp [prod_reverse]

theorem prod_eq_foldl_nat {xs : List Nat} : xs.prod = xs.foldl (init := 1) (· * ·) := by
  simp only [foldl_eq_foldr_reverse, Nat.mul_comm, ← prod_eq_foldr, prod_reverse_nat]

end List
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2111f2533bad6db76867f632a1b73e5c769ac72ec127d5adcf3a0503dbeaaed0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prod/Variantbb49b1ed2ee634ec5c87e7224c64c959f9fd847d91830e62c45b669caa8e15a9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
