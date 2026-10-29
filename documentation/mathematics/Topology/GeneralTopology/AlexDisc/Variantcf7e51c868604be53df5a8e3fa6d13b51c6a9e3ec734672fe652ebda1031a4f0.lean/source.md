# Complete source: GRWTSK.Topology.GeneralTopology.AlexDisc.Variantcf7e51c868604be53df5a8e3fa6d13b51c6a9e3ec734672fe652ebda1031a4f0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `85dbc5707b2ff5cf6453d19345b7ca1d5b3259d5` · SHA-256 `cf7e51c868604be53df5a8e3fa6d13b51c6a9e3ec734672fe652ebda1031a4f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Topology.Specialization

/-!
# Category of Alexandrov-discrete topological spaces

This defines `AlexDisc`, the category of Alexandrov-discrete topological spaces with continuous
maps, and proves it's equivalent to the category of preorders.
-/

@[expose] public section

open CategoryTheory Topology

/-- The category of Alexandrov-discrete spaces. -/
structure AlexDisc extends TopCat where
  [is_alexandrovDiscrete : AlexandrovDiscrete carrier]

namespace AlexDisc

attribute [instance] is_alexandrovDiscrete

instance : CoeSort AlexDisc (Type _) :=
  ⟨fun X => X.toTopCat⟩

instance category : Category AlexDisc :=
  inferInstanceAs <| Category (InducedCategory _ toTopCat)

instance concreteCategory : ConcreteCategory AlexDisc (C(·, ·)) :=
  inferInstanceAs <| ConcreteCategory (InducedCategory _ toTopCat) _

instance instHasForgetToTop : HasForget₂ AlexDisc TopCat :=
  inferInstanceAs <| HasForget₂ (InducedCategory _ toTopCat) _

-- TODO: generalize to `InducedCategory.forget₂_full`?
instance forgetToTop_full : (forget₂ AlexDisc TopCat).Full where
  map_surjective f := ⟨InducedCategory.homMk f, rfl⟩

instance forgetToTop_faithful : (forget₂ AlexDisc TopCat).Faithful where
  map_injective {X Y f g} h := by
    ext x
    exact ConcreteCategory.congr_hom h x


/-- Construct a bundled `AlexDisc` from the underlying topological space. -/
abbrev of (X : Type*) [TopologicalSpace X] [AlexandrovDiscrete X] : AlexDisc where
  toTopCat := ↧X

open Lean.PrettyPrinter.Delaborator in
/-- This prints `AlexDisc.of X` as `↧X`. -/
@[app_delab AlexDisc.of]
meta def delabOf : Delab := CategoryTheory.delabOf

lemma coe_of (α : Type*) [TopologicalSpace α] [AlexandrovDiscrete α] : ↥(of α) = α := rfl

@[simp] lemma forgetToTop_of (α : Type*) [TopologicalSpace α] [AlexandrovDiscrete α] :
    (forget₂ AlexDisc TopCat).obj (of α) = ↧α := rfl

@[simp] lemma coe_forgetToTop (X : AlexDisc) : ↥((forget₂ _ TopCat).obj X) = X := rfl

/-- Constructs an equivalence between preorders from an order isomorphism between them. -/
@[simps]
def Iso.mk {α β : AlexDisc} (e : α ≃ₜ β) : α ≅ β where
  hom := ConcreteCategory.ofHom (e : ContinuousMap α β)
  inv := ConcreteCategory.ofHom (e.symm : ContinuousMap β α)
  hom_inv_id := by ext; apply e.symm_apply_apply
  inv_hom_id := by ext; apply e.apply_symm_apply

end AlexDisc

/-- Sends a topological space to its specialisation order. -/
@[simps]
def alexDiscEquivPreord : AlexDisc ≌ Preord where
  functor := forget₂ _ _ ⋙ topToPreord
  inverse.obj X := ↧(WithUpperSet X)
  inverse.map f := ConcreteCategory.ofHom (WithUpperSet.map f.hom)
  unitIso := NatIso.ofComponents fun X ↦ AlexDisc.Iso.mk <| by
    dsimp; exact homeoWithUpperSetTopologyorderIso X
  counitIso := NatIso.ofComponents fun X ↦ Preord.Iso.mk <| by
    dsimp; exact (orderIsoSpecializationWithUpperSetTopology X).symm
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c931c9188849ec33819e5265d95106c4a1194ba555038bcc5dfac0499cc19c42 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/AlexDisc/Variantcf7e51c868604be53df5a8e3fa6d13b51c6a9e3ec734672fe652ebda1031a4f0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
