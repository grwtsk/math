-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BoolRingCat.Variant5ff4b8c14df356ef55e2998f643feb5c572048b0d3aa12de067a69373b8f5ee6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5ff4b8c14df356ef55e2998f643feb5c572048b0d3aa12de067a69373b8f5ee6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.BoolRingCat.Variant5ff4b8c14df356ef55e2998f643feb5c572048b0d3aa12de067a69373b8f5ee6","mathematical_subject":"Algebra.OrderTheory","original_sha256":"5ff4b8c14df356ef55e2998f643feb5c572048b0d3aa12de067a69373b8f5ee6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Category/BoolRingCat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Category.Ring.Basic
import Mathlib.Algebra.Ring.BooleanRing
import Mathlib.Order.Category.BoolAlgCat


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BoolRingCat.Variant5ff4b8c14df356ef55e2998f643feb5c572048b0d3aa12de067a69373b8f5ee6

#align_import algebra.category.BoolRing from "leanprover-community/mathlib"@"67779f73e572fd1fec2218648b2078d167d16c0a"

/-!
# The category of Boolean rings

This file defines `BoolRingCat`, the category of Boolean rings.

## TODO

Finish the equivalence with `BoolAlgCat`.
-/

set_option linter.uppercaseLean3 false

universe u

open CategoryTheory Order

/-- The category of Boolean rings. -/
def BoolRingCat :=
  Bundled BooleanRing
#align BoolRing BoolRingCat

namespace BoolRingCat

instance : CoeSort BoolRingCat (Type*) :=
  Bundled.coeSort

instance (X : BoolRingCat) : BooleanRing X :=
  X.str

/-- Construct a bundled `BoolRingCat` from a `BooleanRing`. -/
def of (α : Type*) [BooleanRing α] : BoolRingCat :=
  Bundled.of α
#align BoolRing.of BoolRingCat.of

@[simp]
theorem coe_of (α : Type*) [BooleanRing α] : ↥(of α) = α :=
  rfl
#align BoolRing.coe_of BoolRingCat.coe_of

instance : Inhabited BoolRingCat :=
  ⟨of PUnit⟩

instance : BundledHom.ParentProjection @BooleanRing.toCommRing :=
  ⟨⟩

-- Porting note: `deriving` `ConcreteCategory` failed, added it manually
-- see https://github.com/leanprover-community/mathlib4/issues/5020
deriving instance LargeCategory for BoolRingCat

instance : ConcreteCategory BoolRingCat := by
  dsimp [BoolRingCat]
  infer_instance

-- Porting note: disabled `simps`
--   Invalid simp lemma BoolRingCat.hasForgetToCommRing_forget₂_obj_str_add.
--   The given definition is not a constructor application:
--     inferInstance.1
-- @[simps]
instance hasForgetToCommRing : HasForget₂ BoolRingCat CommRingCat :=
  BundledHom.forget₂ _ _
#align BoolRing.has_forget_to_CommRing BoolRingCat.hasForgetToCommRing

/-- Constructs an isomorphism of Boolean rings from a ring isomorphism between them. -/
@[simps]
def Iso.mk {α β : BoolRingCat.{u}} (e : α ≃+* β) : α ≅ β where
  hom := (e : RingHom _ _)
  inv := (e.symm : RingHom _ _)
  hom_inv_id := by ext; exact e.symm_apply_apply _
  inv_hom_id := by ext; exact e.apply_symm_apply _
#align BoolRing.iso.mk BoolRingCat.Iso.mk

end BoolRingCat

/-! ### Equivalence between `BoolAlgCat` and `BoolRingCat` -/

@[simps]
instance BoolRingCat.hasForgetToBoolAlgCat : HasForget₂ BoolRingCat BoolAlgCat where
  forget₂ :=
    { obj := fun X => BoolAlgCat.of (AsBoolAlg X)
      map := fun {X Y} => RingHom.asBoolAlg }
#align BoolRing.has_forget_to_BoolAlg BoolRingCat.hasForgetToBoolAlgCat

-- Porting note: Added. somehow it does not find this instance.
instance {X : BoolAlgCat} :
    BooleanAlgebra ↑(BddDistLatCat.toBddLat (X.toBddDistLatCat)).toLat :=
  BoolAlgCat.instBooleanAlgebra _

@[simps]
instance BoolAlgCat.hasForgetToBoolRingCat : HasForget₂ BoolAlgCat BoolRingCat where
  forget₂ :=
    { obj := fun X => BoolRingCat.of (AsBoolRing X)
      map := fun {X Y} => BoundedLatticeHom.asBoolRing }
#align BoolAlg.has_forget_to_BoolRingCat BoolAlgCat.hasForgetToBoolRingCat

/-- The equivalence between Boolean rings and Boolean algebras. This is actually an isomorphism. -/
@[simps functor inverse]
def boolRingCatEquivBoolAlgCat : BoolRingCat ≌ BoolAlgCat where
  functor := forget₂ BoolRingCat BoolAlgCat
  inverse := forget₂ BoolAlgCat BoolRingCat
  unitIso := NatIso.ofComponents (fun X => BoolRingCat.Iso.mk <|
    (RingEquiv.asBoolRingAsBoolAlg X).symm) fun {X Y} f => rfl
  counitIso := NatIso.ofComponents (fun X => BoolAlgCat.Iso.mk <|
    OrderIso.asBoolAlgAsBoolRing X) fun {X Y} f => rfl
#align BoolRing_equiv_BoolAlg boolRingCatEquivBoolAlgCat
