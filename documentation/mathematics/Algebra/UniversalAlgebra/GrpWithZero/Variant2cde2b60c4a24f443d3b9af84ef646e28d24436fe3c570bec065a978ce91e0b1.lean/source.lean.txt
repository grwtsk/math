-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.GrpWithZero.Variant2bad073e6280545a638346a19b2725a98ff454abf212b3823eea101d383859c7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2bad073e6280545a638346a19b2725a98ff454abf212b3823eea101d383859c7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.GrpWithZero.Variant2bad073e6280545a638346a19b2725a98ff454abf212b3823eea101d383859c7","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"2bad073e6280545a638346a19b2725a98ff454abf212b3823eea101d383859c7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Category/GrpWithZero.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Category.MonCat.Basic
import Mathlib.Algebra.GroupWithZero.WithZero
import Mathlib.CategoryTheory.Category.Bipointed

/-!
# The category of groups with zero

This file defines `GrpWithZero`, the category of groups with zero.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.GrpWithZero.Variant2bad073e6280545a638346a19b2725a98ff454abf212b3823eea101d383859c7

assert_not_exists Ring

universe u

open CategoryTheory

/-- The category of groups with zero. -/
structure GrpWithZero where
  /-- The underlying group with zero. -/
  carrier : Type*
  [str : GroupWithZero carrier]

attribute [instance] GrpWithZero.str

namespace GrpWithZero

instance : CoeSort GrpWithZero Type* :=
  ⟨carrier⟩

/-- Construct a bundled `GrpWithZero` from a `GroupWithZero`. -/
abbrev of (α : Type*) [GroupWithZero α] : GrpWithZero where
  carrier := α

instance : Inhabited GrpWithZero :=
  ⟨of (WithZero PUnit)⟩

instance : LargeCategory.{u} GrpWithZero where
  Hom X Y := MonoidWithZeroHom X Y
  id X := MonoidWithZeroHom.id X
  comp f g := g.comp f

instance groupWithZeroConcreteCategory : ConcreteCategory GrpWithZero (MonoidWithZeroHom · ·) where
  hom f := f
  ofHom f := f

/-- Typecheck a `MonoidWithZeroHom` as a morphism in `GrpWithZero`. -/
abbrev ofHom {X Y : Type u} [GroupWithZero X] [GroupWithZero Y]
    (f : MonoidWithZeroHom X Y) : of X ⟶ of Y :=
  ConcreteCategory.ofHom f

@[simp]
lemma hom_id {X : GrpWithZero} : ConcreteCategory.hom (𝟙 X : X ⟶ X) = MonoidWithZeroHom.id X := rfl

@[simp]
lemma hom_comp {X Y Z : GrpWithZero} {f : X ⟶ Y} {g : Y ⟶ Z} :
    ConcreteCategory.hom (f ≫ g) = g.comp f := rfl

lemma coe_id {X : GrpWithZero} : (𝟙 X : X → X) = id := rfl

lemma coe_comp {X Y Z : GrpWithZero} {f : X ⟶ Y} {g : Y ⟶ Z} : (f ≫ g : X → Z) = g ∘ f := rfl

@[simp] lemma forget_map {X Y : GrpWithZero} (f : X ⟶ Y) :
  (forget GrpWithZero).map f = f := rfl

instance hasForgetToBipointed : HasForget₂ GrpWithZero Bipointed where
  forget₂ :=
      { obj := fun X => ⟨X, 0, 1⟩
        map := fun f => ⟨f, f.map_zero', f.map_one'⟩ }

instance hasForgetToMon : HasForget₂ GrpWithZero MonCat where
  forget₂ :=
      { obj := fun X => MonCat.of X
        map := fun f => MonCat.ofHom f.toMonoidHom }

/-- Constructs an isomorphism of groups with zero from a group isomorphism between them. -/
@[simps]
def Iso.mk {α β : GrpWithZero.{u}} (e : α ≃* β) : α ≅ β where
  hom := ofHom e
  inv := ofHom e.symm
  hom_inv_id := by
    ext
    exact e.symm_apply_apply _
  inv_hom_id := by
    ext
    exact e.apply_symm_apply _

end GrpWithZero
