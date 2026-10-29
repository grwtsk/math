# Bounded Order Lattice Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c50d04793da88a5584a4d2885309494881bca2f` · SHA-256 `b8612ef683e7d163a7fd584a330d8735af02597a731434c7edd9d47331e8dd2b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl
-/
module

public import Mathlib.Order.BoundedOrder.Basic
public import Mathlib.Order.Lattice

/-!
# Bounded lattices

This file contains miscellaneous lemmas about lattices with top or bottom elements.

## Common lattices

* Distributive lattices with a bottom element. Notated by `[DistribLattice α] [OrderBot α]`.
  It captures the properties of `Disjoint` that are common to `GeneralizedBooleanAlgebra` and
  `DistribLattice` when `OrderBot`.
* Bounded and distributive lattice. Notated by `[DistribLattice α] [BoundedOrder α]`.
  Typical examples include `Prop` and `Set α`.
-/

public section

variable {α : Type*}

/-! ### Top, bottom element -/

section SemilatticeSupTop

variable [SemilatticeSup α] [OrderTop α]

@[to_dual] theorem top_sup_eq (a : α) : ⊤ ⊔ a = ⊤ := sup_of_le_left le_top
@[to_dual] theorem sup_top_eq (a : α) : a ⊔ ⊤ = ⊤ := sup_of_le_right le_top

end SemilatticeSupTop

section SemilatticeSupBot

variable [SemilatticeSup α] [OrderBot α] {a b : α}

@[to_dual] theorem bot_sup_eq (a : α) : ⊥ ⊔ a = a := sup_of_le_right bot_le
@[to_dual] theorem sup_bot_eq (a : α) : a ⊔ ⊥ = a := sup_of_le_left bot_le

@[to_dual (attr := simp, grind =)]
theorem sup_eq_bot_iff : a ⊔ b = ⊥ ↔ a = ⊥ ∧ b = ⊥ := by rw [eq_bot_iff, sup_le_iff]; simp

end SemilatticeSupBot

section LinearOrder

variable [LinearOrder α] [OrderBot α]

-- `simp` can prove these, so they shouldn't be simp-lemmas.

@[to_dual] theorem min_bot_left (a : α) : min ⊥ a = ⊥ := bot_inf_eq _
@[to_dual] theorem min_bot_right (a : α) : min a ⊥ = ⊥ := inf_bot_eq _

@[to_dual] theorem max_bot_left (a : α) : max ⊥ a = a := bot_sup_eq _
@[to_dual] theorem max_bot_right (a : α) : max a ⊥ = a := sup_bot_eq _

@[to_dual] theorem max_eq_bot {a b : α} : max a b = ⊥ ↔ a = ⊥ ∧ b = ⊥ := sup_eq_bot_iff

@[to_dual (attr := simp)]
theorem min_eq_bot {a b : α} : min a b = ⊥ ↔ a = ⊥ ∨ b = ⊥ := by
  simp_rw [← le_bot_iff, inf_le_iff]

@[to_dual (attr := aesop (rule_sets := [finiteness]) safe apply)]
lemma min_ne_bot {a b : α} (ha : a ≠ ⊥) (hb : b ≠ ⊥) : min a b ≠ ⊥ := by
  grind

end LinearOrder

/-! ### Induction on `WellFoundedGT` and `WellFoundedLT` -/

section WellFounded

@[to_dual (attr := elab_as_elim)]
theorem WellFoundedGT.induction_top [Preorder α] [WellFoundedGT α] [OrderTop α]
    {P : α → Prop} (hexists : ∃ M, P M) (hind : ∀ N ≠ ⊤, P N → ∃ M > N, P M) : P ⊤ := by
  contrapose! hexists
  intro M
  induction M using WellFoundedGT.induction with
  | ind x IH =>
    by_cases hx : x = ⊤
    · exact hx ▸ hexists
    · intro hx'
      obtain ⟨M, hM, hM'⟩ := hind x hx hx'
      exact IH _ hM hM'

end WellFounded
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bcdd43941e8b9a0754dc416d9aec77b170fea6cf4f53da2244130cec8190e1bc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantb8612ef683e7d163a7fd584a330d8735af02597a731434c7edd9d47331e8dd2b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
