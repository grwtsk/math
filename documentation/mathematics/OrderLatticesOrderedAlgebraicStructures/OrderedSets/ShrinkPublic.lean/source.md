# Shrink Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `73ab8f87dc167201ba5b82932d3d52a1b50ab75e` · SHA-256 `5048acca25e024c5c7287d54d5afde2c94c49370c2b464b01539a65f87bc65f4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.Order.SuccPred.Basic
public import Mathlib.Logic.Small.Defs

/-!
# Order instances on Shrink

If `α : Type v` is `u`-small, we transport various order related
instances on `α` to `Shrink.{u} α`.

-/

@[expose] public section

universe u

variable {α : Type*} [Small.{u} α]

section Bot
variable [Bot α]

@[to_dual]
noncomputable instance : Bot (Shrink.{u} α) where
  bot := equivShrink _ ⊥

@[to_dual (attr := simp)]
lemma equivShrink_bot : equivShrink.{u} α ⊥ = ⊥ := rfl

@[to_dual (attr := simp)]
lemma equivShrink_symm_bot : (equivShrink.{u} α).symm ⊥ = ⊥ :=
  (equivShrink.{u} α).injective (by simp)

end Bot

section Preorder
variable [Preorder α]

noncomputable instance : Preorder (Shrink.{u} α) :=
  Preorder.lift (equivShrink α).symm

variable (α) in
/-- The order isomorphism `α ≃o Shrink.{u} α`. -/
noncomputable def orderIsoShrink : α ≃o Shrink.{u} α where
  toEquiv := equivShrink α
  map_rel_iff' {a b} := by
    obtain ⟨a, rfl⟩ := (equivShrink.{u} α).symm.surjective a
    obtain ⟨b, rfl⟩ := (equivShrink.{u} α).symm.surjective b
    simp only [Equiv.apply_symm_apply]
    rfl

@[simp]
lemma orderIsoShrink_apply (a : α) :
    orderIsoShrink α a = equivShrink α a := rfl

@[simp]
lemma orderIsoShrink_symm_apply (a : Shrink.{u} α) :
    (orderIsoShrink α).symm a = (equivShrink α).symm a := rfl

@[simp]
theorem equivShrink_le_equivShrink {x y : α} : equivShrink α x ≤ equivShrink α y ↔ x ≤ y :=
  (orderIsoShrink α).map_rel_iff

@[simp]
theorem equivShrink_lt_equivShrink {x y : α} : equivShrink α x < equivShrink α y ↔ x < y :=
  (orderIsoShrink α).toRelIsoLT.map_rel_iff

@[to_dual]
noncomputable instance [OrderBot α] : OrderBot (Shrink.{u} α) where
  bot_le a := by simp [← (orderIsoShrink.{u} α).symm.le_iff_le]

@[to_dual]
noncomputable instance [SuccOrder α] : SuccOrder (Shrink.{u} α) :=
  SuccOrder.ofOrderIso (orderIsoShrink.{u} α)

@[to_dual]
instance [WellFoundedLT α] : WellFoundedLT (Shrink.{u} α) :=
  (orderIsoShrink.{u} α).symm.toRelIsoLT.toRelEmbedding.wellFounded'

end Preorder

noncomputable instance [PartialOrder α] : PartialOrder (Shrink.{u} α) :=
  (equivShrink _).symm.injective.partialOrder _ .rfl .rfl

noncomputable instance [LinearOrder α] : LinearOrder (Shrink.{u} α) :=
  .lift' _ (equivShrink _).symm.injective
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=01102a71a0418915fbd9066dd2f48f9685d11bd33c23ae07cdb11ff75e487162 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Shrink/Variant5048acca25e024c5c7287d54d5afde2c94c49370c2b464b01539a65f87bc65f4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
