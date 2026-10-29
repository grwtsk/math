# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BoolRing.Variant6bec9d13c66a773397b138f16adb459b482a21dbb2122bf779ccbf310b156d9d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4cf42aa88f9644d20b427f34389953a031d77759` · SHA-256 `6bec9d13c66a773397b138f16adb459b482a21dbb2122bf779ccbf310b156d9d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Algebra.Category.Ring.Basic
public import Mathlib.Algebra.Ring.BooleanRing
public import Mathlib.Order.Category.BoolAlg

/-!
# The category of Boolean rings

This file defines `BoolRing`, the category of Boolean rings.

## TODO

Finish the equivalence with `BoolAlg`.
-/

@[expose] public section


universe u

open CategoryTheory

/-- The category of Boolean rings. -/
structure BoolRing where
  /-- Construct a bundled `BoolRing` from a `BooleanRing`. -/
  of ::
  /-- The underlying type. -/
  carrier : Type u
  [booleanRing : BooleanRing carrier]

namespace BoolRing

initialize_simps_projections BoolRing (-booleanRing)

instance : CoeSort BoolRing Type* :=
  ⟨carrier⟩

attribute [coe] carrier

attribute [instance] booleanRing

theorem coe_of (α : Type*) [BooleanRing α] : ↥(of α) = α :=
  rfl

instance : Inhabited BoolRing :=
  ⟨of PUnit⟩

variable {R} in
/-- The type of morphisms in `BoolRing`. -/
@[ext]
structure Hom (R S : BoolRing) where
  _mkInternal ::
  /-- The underlying ring hom. -/
  hom' : R →+* S

instance : Category BoolRing where
  Hom R S := Hom R S
  id R := ⟨RingHom.id R⟩
  comp f g := ⟨g.hom'.comp f.hom'⟩

instance : ConcreteCategory BoolRing (· →+* ·) where
  hom f := f.hom'
  ofHom f := ⟨f⟩

/-- Turn a morphism in `BoolRing` back into a `RingHom`. -/
abbrev Hom.hom {X Y : BoolRing} (f : Hom X Y) :=
  ConcreteCategory.hom (C := BoolRing) f

/-- Typecheck a `RingHom` as a morphism in `BoolRing`. -/
abbrev ofHom {R S : Type u} [BooleanRing R] [BooleanRing S] (f : R →+* S) : of R ⟶ of S :=
  ConcreteCategory.ofHom f

@[ext]
lemma hom_ext {R S : BoolRing} {f g : R ⟶ S} (hf : f.hom = g.hom) : f = g :=
  Hom.ext hf

instance hasForgetToCommRing : HasForget₂ BoolRing CommRingCat where
  forget₂ :=
    { obj := fun R ↦ ↧R
      map := fun f ↦ CommRingCat.ofHom f.hom }

/-- Constructs an isomorphism of Boolean rings from a ring isomorphism between them. -/
@[simps]
def Iso.mk {α β : BoolRing.{u}} (e : α ≃+* β) : α ≅ β where
  hom := ⟨e⟩
  inv := ⟨e.symm⟩
  hom_inv_id := by ext; exact e.symm_apply_apply _
  inv_hom_id := by ext; exact e.apply_symm_apply _

end BoolRing

/-! ### Equivalence between `BoolAlg` and `BoolRing` -/

-- We have to add this instance since Lean doesn't see through `X.toBddDistLat`.
instance {X : BoolAlg} :
    BooleanAlgebra ↑(BddDistLat.toBddLat (X.toBddDistLat)).toLat :=
  BoolAlg.str _

-- We have to add this instance since Lean doesn't see through `R.toBddDistLat`.
instance {R : Type u} [BooleanRing R] :
    BooleanRing (BoolAlg.of (AsBoolAlg ↑R)).toBddDistLat.toBddLat.toLat :=
  inferInstanceAs <| BooleanRing R

@[simps]
instance BoolRing.hasForgetToBoolAlg : HasForget₂ BoolRing BoolAlg where
  forget₂.obj X := ↧(AsBoolAlg X)
  forget₂.map f := BoolAlg.ofHom f.hom.asBoolAlg

@[simps]
instance BoolAlg.hasForgetToBoolRing : HasForget₂ BoolAlg BoolRing where
  forget₂.obj X := ↧(AsBoolRing X)
  forget₂.map f := BoolRing.ofHom <| BoundedLatticeHom.asBoolRing f.hom

/-- The equivalence between Boolean rings and Boolean algebras. This is actually an isomorphism. -/
@[simps functor inverse]
def boolRingCatEquivBoolAlg : BoolRing ≌ BoolAlg where
  functor := forget₂ BoolRing BoolAlg
  inverse := forget₂ BoolAlg BoolRing
  unitIso := NatIso.ofComponents (fun X => BoolRing.Iso.mk <|
    (RingEquiv.asBoolRingAsBoolAlg X).symm) fun {_ _} _ => rfl
  counitIso := NatIso.ofComponents (fun X => BoolAlg.Iso.mk <|
    OrderIso.asBoolAlgAsBoolRing X) fun {_ _} _ => rfl

section Notation

open Lean.PrettyPrinter.Delaborator

/-- This prints `BoolRing.of X` as `↧X`. -/
@[app_delab BoolRing.of]
meta def BoolRing.delabOf : Delab := CategoryTheory.delabOf

end Notation
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=97ab4200c4da0649c345e160db970aa4c2aa1396f98c0a77c8a0ea4a1ad95bf6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BoolRing/Variant6bec9d13c66a773397b138f16adb459b482a21dbb2122bf779ccbf310b156d9d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
