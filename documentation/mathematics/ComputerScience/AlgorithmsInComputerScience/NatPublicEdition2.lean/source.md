# Nat Public Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `64dc876db62502b67b0163c29c7b773381ece2b9` · SHA-256 `458906de8d1737985ae2971fe3b3a7e9657c9b7981b8b6a55c82b3692c3873e0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Sebastian Graf, Paul Reichert
-/
module

prelude
public import Init.Data.Vector.Basic
import Init.Data.Array.Nat
public import Init.BinderPredicates
import Init.Data.Vector.Lemmas

public section

set_option linter.listVariables true -- Enforce naming conventions for `List`/`Array`/`Vector` variables.
set_option linter.indexVariables true -- Enforce naming conventions for index variables.

namespace Vector

protected theorem sum_pos_iff_exists_pos_nat {xs : Vector Nat n} : 0 < xs.sum ↔ ∃ x ∈ xs, 0 < x := by
  simp [← sum_toArray, Array.sum_pos_iff_exists_pos_nat]

protected theorem sum_eq_zero_iff_forall_eq_nat {xs : Vector Nat n} :
    xs.sum = 0 ↔ ∀ x ∈ xs, x = 0 := by
  simp [← sum_toArray, Array.sum_eq_zero_iff_forall_eq_nat]

@[simp] theorem sum_replicate_nat {n : Nat} {a : Nat} : (replicate n a).sum = n * a := by
  simp [← sum_toArray, Array.sum_replicate_nat]

theorem sum_append_nat {as₁ : Vector Nat n} {as₂ : Vector Nat m} :
    (as₁ ++ as₂).sum = as₁.sum + as₂.sum := by
  simp [← sum_toArray]

theorem sum_reverse_nat (xs : Vector Nat n) : xs.reverse.sum = xs.sum := by
  simp [sum_reverse]

theorem sum_eq_foldl_nat {xs : Vector Nat n} : xs.sum = xs.foldl (b := 0) (· + ·) := by
  simp only [foldl_eq_foldr_reverse, Nat.add_comm, ← sum_eq_foldr, sum_reverse_nat]

protected theorem prod_pos_iff_forall_pos_nat {xs : Vector Nat n} : 0 < xs.prod ↔ ∀ x ∈ xs, 0 < x := by
  simp [← prod_toArray, Array.prod_pos_iff_forall_pos_nat]

protected theorem prod_eq_zero_iff_exists_zero_nat {xs : Vector Nat n} :
    xs.prod = 0 ↔ ∃ x ∈ xs, x = 0 := by
  simp [← prod_toArray, Array.prod_eq_zero_iff_exists_zero_nat]

@[simp] theorem prod_replicate_nat {n : Nat} {a : Nat} : (replicate n a).prod = a ^ n := by
  simp [← prod_toArray, Array.prod_replicate_nat]

theorem prod_append_nat {as₁ : Vector Nat n} {as₂ : Vector Nat m} :
    (as₁ ++ as₂).prod = as₁.prod * as₂.prod := by
  simp [← prod_toArray]

theorem prod_reverse_nat (xs : Vector Nat n) : xs.reverse.prod = xs.prod := by
  simp [prod_reverse]

theorem prod_eq_foldl_nat {xs : Vector Nat n} : xs.prod = xs.foldl (b := 1) (· * ·) := by
  simp only [foldl_eq_foldr_reverse, Nat.mul_comm, ← prod_eq_foldr, prod_reverse_nat]

end Vector
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e61edd7aff435d475a2dd700e5b3add042556135bc528795d4cc70ea1d523ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nat/Variant458906de8d1737985ae2971fe3b3a7e9657c9b7981b8b6a55c82b3692c3873e0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
