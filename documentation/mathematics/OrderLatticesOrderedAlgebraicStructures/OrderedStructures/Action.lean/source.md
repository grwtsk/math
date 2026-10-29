# Action — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b154ca9ce012431cdd2ef3fd76bf1d7925c86f64` · SHA-256 `975af0547612cf82ce1308e44c5cba352b273e805c21818f16eb2f7dbd1949ec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.Algebra.Order.Monoid.Unbundled.Defs
import Mathlib.Order.ConditionallyCompleteLattice.Basic
import Mathlib.Tactic.Cases

/-!
# Results about `CovariantClass G α HSMul.hSMul LE.le`

When working with group actions rather than modules, we drop the `0 < c` condition.

Notably these are relevant for pointwise actions on set-like objects.
-/

variable {ι : Sort*} {M α : Type*}

theorem smul_mono_right [SMul M α] [Preorder α] [CovariantClass M α HSMul.hSMul LE.le]
    (m : M) : Monotone (HSMul.hSMul m : α → α) :=
  fun _ _ => CovariantClass.elim _

/-- A copy of `smul_mono_right` that is understood by `gcongr`. -/
@[gcongr]
theorem smul_le_smul_left [SMul M α] [Preorder α] [CovariantClass M α HSMul.hSMul LE.le]
    (m : M) {a b : α} (h : a ≤ b) :
    m • a ≤ m • b :=
  smul_mono_right _ h

theorem smul_inf_le [SMul M α] [SemilatticeInf α] [CovariantClass M α HSMul.hSMul LE.le]
    (m : M) (a₁ a₂ : α) : m • (a₁ ⊓ a₂) ≤ m • a₁ ⊓ m • a₂ :=
  (smul_mono_right _).map_inf_le _ _

theorem smul_iInf_le [SMul M α] [CompleteLattice α] [CovariantClass M α HSMul.hSMul LE.le]
    {m : M} {t : ι → α} :
    m • iInf t ≤ ⨅ i, m • t i :=
  le_iInf fun _ => smul_mono_right _ (iInf_le _ _)

theorem smul_strictMono_right [SMul M α] [Preorder α] [CovariantClass M α HSMul.hSMul LT.lt]
    (m : M) : StrictMono (HSMul.hSMul m : α → α) :=
  fun _ _ => CovariantClass.elim _

lemma le_pow_smul {G : Type*} [Monoid G] {α : Type*} [Preorder α] {g : G} {a : α}
    [MulAction G α] [CovariantClass G α HSMul.hSMul LE.le]
    (h : a ≤ g • a) (n : ℕ) : a ≤ g ^ n • a := by
  induction n with
  | zero => rw [pow_zero, one_smul]
  | succ n hn =>
    rw [pow_succ', mul_smul]
    exact h.trans (smul_mono_right g hn)

lemma pow_smul_le {G : Type*} [Monoid G] {α : Type*} [Preorder α] {g : G} {a : α}
    [MulAction G α] [CovariantClass G α HSMul.hSMul LE.le]
    (h : g • a ≤ a) (n : ℕ) : g ^ n • a ≤ a := by
  induction n with
  | zero => rw [pow_zero, one_smul]
  | succ n hn =>
    rw [pow_succ', mul_smul]
    exact (smul_mono_right g hn).trans h
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=01d24e908737897dece9111ad95ec63f20ebe07a1a1348157805b07f4da69ce3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Action/Variant975af0547612cf82ce1308e44c5cba352b273e805c21818f16eb2f7dbd1949ec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
