# Radical — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a5a10b5c7e852f9a20018d9d4e1ccf5a543cfa8` · SHA-256 `089875c0c6bbb9b64ae121707b6dabdfb0c2b265181ac2a1c0905212105838aa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Colva Roney-Dougal. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Colva Roney-Dougal, Inna Capdeboscq, Susanna Fishel, Kim Morrison
-/
import Mathlib.Order.Atoms

/-!
# The radical of a lattice

This file contains results on the order radical of a lattice: the infimum of the coatoms.
-/

/--
The infimum of all coatoms.

This notion specializes, e.g. in the subgroup lattice of a group to the Frattini subgroup,
or in the lattices of ideals in a ring `R` to the Jacobson ideal.
-/
def Order.radical (α : Type*) [Preorder α] [OrderTop α] [InfSet α] : α :=
   ⨅ a ∈ {H | IsCoatom H}, a

variable {α : Type*} [CompleteLattice α]

lemma Order.radical_le_coatom {a : α} (h : IsCoatom a) : radical α ≤ a := biInf_le _ h

variable {β : Type*} [CompleteLattice β]

theorem OrderIso.map_radical (f : α ≃o β) : f (Order.radical α) = Order.radical β := by
  unfold Order.radical
  simp only [OrderIso.map_iInf]
  fapply Equiv.iInf_congr
  · exact f.toEquiv
  · simp

theorem Order.radical_nongenerating [IsCoatomic α] {a : α} (h : a ⊔ radical α = ⊤) : a = ⊤ := by
  -- Since the lattice is coatomic, either `a` is already the top element,
  -- or there is a coatom above it.
  obtain (rfl | w) := eq_top_or_exists_le_coatom a
  · -- In the first case, we're done, this was already the goal.
    rfl
  · obtain ⟨m, c, le⟩ := w
    have q : a ⊔ radical α ≤ m := sup_le le (radical_le_coatom c)
    -- Now note that `a ⊔ radical α ≤ m` since both `a ≤ m` and `radical α ≤ m`.
    rw [h, top_le_iff] at q
    simpa using c.1 q
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=79d57198630420779271f923a12d2495d89efe36a6666d0958dc143c97c1b8d1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Radical/Variant089875c0c6bbb9b64ae121707b6dabdfb0c2b265181ac2a1c0905212105838aa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
