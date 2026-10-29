-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LimitFunctorialMap.Variant09a761836de175d4f9eed6169e8a42f2aa056c4a8f1a5d2d92758d18de997d2f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"09a761836de175d4f9eed6169e8a42f2aa056c4a8f1a5d2d92758d18de997d2f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.LimitFunctorialMap.Variant09a761836de175d4f9eed6169e8a42f2aa056c4a8f1a5d2d92758d18de997d2f","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"09a761836de175d4f9eed6169e8a42f2aa056c4a8f1a5d2d92758d18de997d2f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Monoidal/Limits.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Mathlib.CategoryTheory.Monoidal.Functorial
import Mathlib.CategoryTheory.Monoidal.FunctorCategory
import Mathlib.CategoryTheory.Limits.HasLimits


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LimitFunctorialMap.Variant09a761836de175d4f9eed6169e8a42f2aa056c4a8f1a5d2d92758d18de997d2f

#align_import category_theory.monoidal.limits from "leanprover-community/mathlib"@"744d59af0b28d0c42f631038627df9b85ae1d1ce"

/-!
# `lim : (J ⥤ C) ⥤ C` is lax monoidal when `C` is a monoidal category.

When `C` is a monoidal category, the functorial association `F ↦ limit F` is lax monoidal,
i.e. there are morphisms
* `limLax.ε : (𝟙_ C) → limit (𝟙_ (J ⥤ C))`
* `limLax.μ : limit F ⊗ limit G ⟶ limit (F ⊗ G)`
satisfying the laws of a lax monoidal functor.
-/


open CategoryTheory

open CategoryTheory.MonoidalCategory

namespace CategoryTheory.Limits

universe v u

noncomputable section

variable {J : Type v} [SmallCategory J]

variable {C : Type u} [Category.{v} C] [HasLimits C]

instance limitFunctorial : Functorial fun F : J ⥤ C => limit F where
  map' := Limits.lim.map
#align category_theory.limits.limit_functorial CategoryTheory.Limits.limitFunctorial

@[simp]
theorem limitFunctorial_map {F G : J ⥤ C} (α : F ⟶ G) :
    map (fun F : J ⥤ C => limit F) α = Limits.lim.map α :=
  rfl
#align category_theory.limits.limit_functorial_map CategoryTheory.Limits.limitFunctorial_map

variable [MonoidalCategory.{v} C]

@[simps]
instance limitLaxMonoidal : LaxMonoidal fun F : J ⥤ C => limit F where
  ε :=
    limit.lift _
      { pt := _
        π := { app := fun j => 𝟙 _ } }
  μ F G :=
    limit.lift (F ⊗ G)
      { pt := limit F ⊗ limit G
        π :=
          { app := fun j => limit.π F j ⊗ limit.π G j
            naturality := fun j j' f => by
              dsimp
              simp only [Category.id_comp, ← tensor_comp, limit.w] } }
  μ_natural f g := by
    ext; dsimp
    simp only [limit.lift_π, Cones.postcompose_obj_π, Monoidal.tensorHom_app, limit.lift_map,
      NatTrans.comp_app, Category.assoc, ← tensor_comp, limMap_π]
  associativity X Y Z := by
    ext j; dsimp
    simp only [limit.lift_π, Cones.postcompose_obj_π, Monoidal.associator_hom_app, limit.lift_map,
      NatTrans.comp_app, Category.assoc]
    slice_lhs 2 2 => rw [← tensor_id_comp_id_tensor]
    slice_lhs 1 2 =>
      rw [← comp_tensor_id, limit.lift_π]
      dsimp
    slice_lhs 1 2 => rw [tensor_id_comp_id_tensor]
    conv_lhs => rw [associator_naturality]
    conv_rhs => rw [← id_tensor_comp_tensor_id (limit.π (Y ⊗ Z) j)]
    slice_rhs 2 3 =>
      rw [← id_tensor_comp, limit.lift_π]
      dsimp
    dsimp; simp
  left_unitality X := by
    ext j; dsimp
    simp
    conv_rhs => rw [← tensor_id_comp_id_tensor (limit.π X j)]
    slice_rhs 1 2 =>
      rw [← comp_tensor_id]
      erw [limit.lift_π]
      dsimp
    slice_rhs 2 3 => rw [leftUnitor_naturality]
    simp
  right_unitality X := by
    ext j; dsimp
    simp
    conv_rhs => rw [← id_tensor_comp_tensor_id _ (limit.π X j)]
    slice_rhs 1 2 =>
      rw [← id_tensor_comp]
      erw [limit.lift_π]
      dsimp
    slice_rhs 2 3 => rw [rightUnitor_naturality]
    simp
#align category_theory.limits.limit_lax_monoidal CategoryTheory.Limits.limitLaxMonoidal

/-- The limit functor `F ↦ limit F` bundled as a lax monoidal functor. -/
def limLax : LaxMonoidalFunctor (J ⥤ C) C :=
  LaxMonoidalFunctor.of fun F : J ⥤ C => limit F
#align category_theory.limits.lim_lax CategoryTheory.Limits.limLax

@[simp]
theorem limLax_obj (F : J ⥤ C) : limLax.obj F = limit F :=
  rfl
#align category_theory.limits.lim_lax_obj CategoryTheory.Limits.limLax_obj

theorem limLax_obj' (F : J ⥤ C) : limLax.obj F = lim.obj F :=
  rfl
#align category_theory.limits.lim_lax_obj' CategoryTheory.Limits.limLax_obj'

@[simp]
theorem limLax_map {F G : J ⥤ C} (α : F ⟶ G) : limLax.map α = lim.map α :=
  rfl
#align category_theory.limits.lim_lax_map CategoryTheory.Limits.limLax_map

@[simp]
theorem limLax_ε :
    (@limLax J _ C _ _ _).ε =
      limit.lift _
        { pt := _
          π := { app := fun j => 𝟙 _ } } :=
  rfl
#align category_theory.limits.lim_lax_ε CategoryTheory.Limits.limLax_ε

@[simp]
theorem limLax_μ (F G : J ⥤ C) :
    (@limLax J _ C _ _ _).μ F G =
      limit.lift (F ⊗ G)
        { pt := limit F ⊗ limit G
          π :=
            { app := fun j => limit.π F j ⊗ limit.π G j
              naturality := fun j j' f => by
                dsimp
                simp only [Category.id_comp, ← tensor_comp, limit.w] } } :=
  rfl
#align category_theory.limits.lim_lax_μ CategoryTheory.Limits.limLax_μ

end

end CategoryTheory.Limits
