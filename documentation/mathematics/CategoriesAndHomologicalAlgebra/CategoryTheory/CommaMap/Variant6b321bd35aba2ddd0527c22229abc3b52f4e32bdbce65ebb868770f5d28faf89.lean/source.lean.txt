-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CommaMapEquivalenceFunctor.Variantc70f75018dc33f7549ff35304a0b5f237de3b6a702aeaca9dceba9d19a36a214","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c70f75018dc33f7549ff35304a0b5f237de3b6a702aeaca9dceba9d19a36a214","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.CommaMapEquivalenceFunctor.Variantc70f75018dc33f7549ff35304a0b5f237de3b6a702aeaca9dceba9d19a36a214","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"c70f75018dc33f7549ff35304a0b5f237de3b6a702aeaca9dceba9d19a36a214","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Comma/StructuredArrow/CommaMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jakob von Raumer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jakob von Raumer
-/
import Mathlib.CategoryTheory.Comma.StructuredArrow.Basic

/-!
# Structured arrow categories on `Comma.map`

We characterize structured arrow categories on arbitrary instances of `Comma.map` as a
comma category itself.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CommaMapEquivalenceFunctor.Variantc70f75018dc33f7549ff35304a0b5f237de3b6a702aeaca9dceba9d19a36a214

namespace CategoryTheory

namespace StructuredArrow

universe v₁ v₂ v₃ v₄ v₅ v₆ u₁ u₂ u₃ u₄ u₅ u₆

noncomputable section

variable {C : Type u₁} [Category.{v₁} C] {D : Type u₂} [Category.{v₂} D]
  {T : Type u₃} [Category.{v₃} T] {L : C ⥤ T} {R : D ⥤ T}
  {C' : Type u₄} [Category.{v₄} C'] {D' : Type u₅} [Category.{v₅} D'] {T' : Type u₆}
  [Category.{v₆} T'] {L' : C' ⥤ T'} {R' : D' ⥤ T'} {F₁ : C ⥤ C'} {F₂ : D ⥤ D'} {F : T ⥤ T'}
  (α : F₁ ⋙ L' ⟶ L ⋙ F) (β : R ⋙ F ⟶ F₂ ⋙ R')

/-- The functor establishing the equivalence `StructuredArrow.commaMapEquivalence`. -/
@[simps]
def commaMapEquivalenceFunctor [IsIso β] (X : Comma L' R') :
    StructuredArrow X (Comma.map α β) ⥤ Comma (map₂ (𝟙 _) α) (map₂ X.hom (inv β)) where
  obj Y := ⟨mk Y.hom.left, mk Y.hom.right,
    homMk Y.right.hom
      (by simpa only [Functor.const_obj_obj, map₂_obj_left, mk_left, map₂_obj_right, mk_right,
        map₂_obj_hom, mk_hom_eq_self, Category.id_comp, Category.assoc, NatIso.isIso_inv_app,
        Functor.comp_obj, Comma.map_obj_right, Comma.map_obj_left, Comma.map_obj_hom,
        IsIso.hom_inv_id, Category.comp_id] using
        congrFun (congrArg CategoryStruct.comp Y.hom.w) (inv (β.app Y.right.right)))⟩
  map {Y Z} f := ⟨homMk f.right.left (congrArg CommaMorphism.left (StructuredArrow.w f)),
    homMk f.right.right (congrArg CommaMorphism.right (StructuredArrow.w f)),
    by simp only [Functor.const_obj_obj, map₂_obj_left, mk_left, map₂_obj_right, mk_right,
      map₂_obj_hom, mk_hom_eq_self, Functor.comp_obj, id_eq, Comma.map_obj_right,
      Comma.map_obj_left, Comma.map_obj_hom, eq_mp_eq_cast, eq_mpr_eq_cast, hom_eq_iff, comp_right,
      map₂_map_right, homMk_right, CommaMorphism.w] ⟩
  map_id X := by ext <;> rfl
  map_comp f g := by ext <;> rfl

/-- The inverse functor establishing the equivalence `StructuredArrow.commaMapEquivalence`. -/
@[simps]
def commaMapEquivalenceInverse [IsIso β] (X : Comma L' R') :
    Comma (map₂ (𝟙 _) α) (map₂ X.hom (inv β)) ⥤ StructuredArrow X (Comma.map α β) where
  obj Y := mk (Y := ⟨Y.left.right, Y.right.right, Y.hom.right⟩)
    ⟨by exact Y.left.hom, by exact Y.right.hom, by
      simpa using congrFun (congrArg CategoryStruct.comp (StructuredArrow.w Y.hom))
        (β.app Y.right.right)⟩
  map {Y Z} f := homMk ⟨by exact f.left.right, by exact f.right.right,
      by exact congrArg CommaMorphism.right f.w⟩ (by
      ext
      <;> simp only [Comma.map_obj_right, Comma.map_obj_left, Comma.map_obj_hom, Functor.comp_obj,
          map₂_obj_right, map₂_obj_left, Functor.const_obj_obj, map₂_obj_hom, eq_mp_eq_cast, id_eq,
          mk_left, mk_right, mk_hom_eq_self, Comma.comp_left, Comma.map_map_left, w]
      · simp only [Comma.map_obj_right, Comma.map_obj_left, Comma.map_obj_hom, Functor.comp_obj,
        map₂_obj_right, map₂_obj_left, Functor.const_obj_obj, map₂_obj_hom, eq_mp_eq_cast, id_eq,
        mk_left, mk_right, mk_hom_eq_self, Comma.comp_right, Comma.map_map_right, w] )
  map_id X := by ext <;> rfl
  map_comp f g := by ext <;> rfl

/-- The unit establishing the equivalence `StructuredArrow.commaMapEquivalence`. -/
@[simps!]
def commaMapEquivalenceUnitIso [IsIso β] (X : Comma L' R') :
    𝟭 (StructuredArrow X (Comma.map α β)) ≅
      commaMapEquivalenceFunctor α β X ⋙ commaMapEquivalenceInverse α β X :=
  NatIso.ofComponents (fun _ => isoMk (Iso.refl _))

/-- The counit functor establishing the equivalence `StructuredArrow.commaMapEquivalence`. -/
@[simps!]
def commaMapEquivalenceCounitIso [IsIso β] (X : Comma L' R') :
    commaMapEquivalenceInverse α β X ⋙ commaMapEquivalenceFunctor α β X ≅
      𝟭 (Comma (map₂ (𝟙 (L'.obj X.left)) α) (map₂ X.hom (inv β))) :=
  NatIso.ofComponents (fun _ => Comma.isoMk (Iso.refl _) (Iso.refl _))

/-- The structured arrow category on the functor `Comma.map α β`, with `β` a natural isomorphism,
is equivalent to a comma category on two instances of `StructuredArrow.map₂`. -/
def commaMapEquivalence [IsIso β] (X : Comma L' R') :
    StructuredArrow X (Comma.map α β) ≌ Comma (map₂ (𝟙 _) α) (map₂ X.hom (inv β)) where
  functor := commaMapEquivalenceFunctor α β X
  inverse := commaMapEquivalenceInverse α β X
  unitIso := commaMapEquivalenceUnitIso α β X
  counitIso := commaMapEquivalenceCounitIso α β X

end

end StructuredArrow

end CategoryTheory
