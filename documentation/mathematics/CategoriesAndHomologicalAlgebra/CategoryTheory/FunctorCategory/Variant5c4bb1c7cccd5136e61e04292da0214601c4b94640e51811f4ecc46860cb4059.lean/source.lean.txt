-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TensorObj.Variant3cd10da9b39f0c25d0e3ffc698396852df9870b23b5db5e87ea353fd147ac514","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3cd10da9b39f0c25d0e3ffc698396852df9870b23b5db5e87ea353fd147ac514","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.TensorObj.Variant3cd10da9b39f0c25d0e3ffc698396852df9870b23b5db5e87ea353fd147ac514","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"3cd10da9b39f0c25d0e3ffc698396852df9870b23b5db5e87ea353fd147ac514","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Monoidal/FunctorCategory.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Mathlib.CategoryTheory.Monoidal.Braided
import Mathlib.CategoryTheory.Functor.Category
import Mathlib.CategoryTheory.Functor.Const


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TensorObj.Variant3cd10da9b39f0c25d0e3ffc698396852df9870b23b5db5e87ea353fd147ac514

#align_import category_theory.monoidal.functor_category from "leanprover-community/mathlib"@"73dd4b5411ec8fafb18a9d77c9c826907730af80"

/-!
# Monoidal structure on `C ⥤ D` when `D` is monoidal.

When `C` is any category, and `D` is a monoidal category,
there is a natural "pointwise" monoidal structure on `C ⥤ D`.

The initial intended application is tensor product of presheaves.
-/


universe v₁ v₂ u₁ u₂

open CategoryTheory

open CategoryTheory.MonoidalCategory

namespace CategoryTheory.Monoidal

variable {C : Type u₁} [Category.{v₁} C]

variable {D : Type u₂} [Category.{v₂} D] [MonoidalCategory.{v₂} D]

namespace FunctorCategory

variable (F G F' G' : C ⥤ D)

/-- (An auxiliary definition for `functorCategoryMonoidal`.)
Tensor product of functors `C ⥤ D`, when `D` is monoidal.
 -/
@[simps]
def tensorObj : C ⥤ D where
  obj X := F.obj X ⊗ G.obj X
  map f := F.map f ⊗ G.map f
#align category_theory.monoidal.functor_category.tensor_obj CategoryTheory.Monoidal.FunctorCategory.tensorObj

variable {F G F' G'}

variable (α : F ⟶ G) (β : F' ⟶ G')

/-- (An auxiliary definition for `functorCategoryMonoidal`.)
Tensor product of natural transformations into `D`, when `D` is monoidal.
-/
@[simps]
def tensorHom : tensorObj F F' ⟶ tensorObj G G' where
  app X := α.app X ⊗ β.app X
  naturality X Y f := by dsimp; rw [← tensor_comp, α.naturality, β.naturality, tensor_comp]
#align category_theory.monoidal.functor_category.tensor_hom CategoryTheory.Monoidal.FunctorCategory.tensorHom

/-- (An auxiliary definition for `functorCategoryMonoidal`.) -/
@[simps]
def whiskerLeft (F) (β : F' ⟶ G') : tensorObj F F' ⟶ tensorObj F G' where
  app X := F.obj X ◁ β.app X
  naturality X Y f := by
    simp only [← id_tensorHom]
    apply (tensorHom (𝟙 F) β).naturality

/-- (An auxiliary definition for `functorCategoryMonoidal`.) -/
@[simps]
def whiskerRight (F') : tensorObj F F' ⟶ tensorObj G F' where
  app X := α.app X ▷ F'.obj X
  naturality X Y f := by
    simp only [← tensorHom_id]
    apply (tensorHom α (𝟙 F')).naturality

end FunctorCategory

open CategoryTheory.Monoidal.FunctorCategory

/-- When `C` is any category, and `D` is a monoidal category,
the functor category `C ⥤ D` has a natural pointwise monoidal structure,
where `(F ⊗ G).obj X = F.obj X ⊗ G.obj X`.
-/
instance functorCategoryMonoidal : MonoidalCategory (C ⥤ D) where
  tensorObj F G := tensorObj F G
  tensorHom α β := tensorHom α β
  whiskerLeft F _ _ α := FunctorCategory.whiskerLeft F α
  whiskerRight α F := FunctorCategory.whiskerRight α F
  tensorHom_def := by intros; ext; simp [tensorHom_def]
  tensorUnit' := (CategoryTheory.Functor.const C).obj (𝟙_ D)
  leftUnitor F := NatIso.ofComponents fun X => λ_ (F.obj X)
  rightUnitor F := NatIso.ofComponents fun X => ρ_ (F.obj X)
  associator F G H := NatIso.ofComponents fun X => α_ (F.obj X) (G.obj X) (H.obj X)
  pentagon F G H K := by ext X; dsimp; rw [pentagon]
#align category_theory.monoidal.functor_category_monoidal CategoryTheory.Monoidal.functorCategoryMonoidal

@[simp]
theorem tensorUnit_obj {X} : (𝟙_ (C ⥤ D)).obj X = 𝟙_ D :=
  rfl
#align category_theory.monoidal.tensor_unit_obj CategoryTheory.Monoidal.tensorUnit_obj

@[simp]
theorem tensorUnit_map {X Y} {f : X ⟶ Y} : (𝟙_ (C ⥤ D)).map f = 𝟙 (𝟙_ D) :=
  rfl
#align category_theory.monoidal.tensor_unit_map CategoryTheory.Monoidal.tensorUnit_map

@[simp]
theorem tensorObj_obj {F G : C ⥤ D} {X} : (F ⊗ G).obj X = F.obj X ⊗ G.obj X :=
  rfl
#align category_theory.monoidal.tensor_obj_obj CategoryTheory.Monoidal.tensorObj_obj

@[simp]
theorem tensorObj_map {F G : C ⥤ D} {X Y} {f : X ⟶ Y} : (F ⊗ G).map f = F.map f ⊗ G.map f :=
  rfl
#align category_theory.monoidal.tensor_obj_map CategoryTheory.Monoidal.tensorObj_map

@[simp]
theorem tensorHom_app {F G F' G' : C ⥤ D} {α : F ⟶ G} {β : F' ⟶ G'} {X} :
    (α ⊗ β).app X = α.app X ⊗ β.app X :=
  rfl
#align category_theory.monoidal.tensor_hom_app CategoryTheory.Monoidal.tensorHom_app

@[simp]
theorem leftUnitor_hom_app {F : C ⥤ D} {X} :
    ((λ_ F).hom : 𝟙_ _ ⊗ F ⟶ F).app X = (λ_ (F.obj X)).hom :=
  rfl
#align category_theory.monoidal.left_unitor_hom_app CategoryTheory.Monoidal.leftUnitor_hom_app

@[simp]
theorem leftUnitor_inv_app {F : C ⥤ D} {X} :
    ((λ_ F).inv : F ⟶ 𝟙_ _ ⊗ F).app X = (λ_ (F.obj X)).inv :=
  rfl
#align category_theory.monoidal.left_unitor_inv_app CategoryTheory.Monoidal.leftUnitor_inv_app

@[simp]
theorem rightUnitor_hom_app {F : C ⥤ D} {X} :
    ((ρ_ F).hom : F ⊗ 𝟙_ _ ⟶ F).app X = (ρ_ (F.obj X)).hom :=
  rfl
#align category_theory.monoidal.right_unitor_hom_app CategoryTheory.Monoidal.rightUnitor_hom_app

@[simp]
theorem rightUnitor_inv_app {F : C ⥤ D} {X} :
    ((ρ_ F).inv : F ⟶ F ⊗ 𝟙_ _).app X = (ρ_ (F.obj X)).inv :=
  rfl
#align category_theory.monoidal.right_unitor_inv_app CategoryTheory.Monoidal.rightUnitor_inv_app

@[simp]
theorem associator_hom_app {F G H : C ⥤ D} {X} :
    ((α_ F G H).hom : (F ⊗ G) ⊗ H ⟶ F ⊗ G ⊗ H).app X = (α_ (F.obj X) (G.obj X) (H.obj X)).hom :=
  rfl
#align category_theory.monoidal.associator_hom_app CategoryTheory.Monoidal.associator_hom_app

@[simp]
theorem associator_inv_app {F G H : C ⥤ D} {X} :
    ((α_ F G H).inv : F ⊗ G ⊗ H ⟶ (F ⊗ G) ⊗ H).app X = (α_ (F.obj X) (G.obj X) (H.obj X)).inv :=
  rfl
#align category_theory.monoidal.associator_inv_app CategoryTheory.Monoidal.associator_inv_app

section BraidedCategory

open CategoryTheory.BraidedCategory

variable [BraidedCategory.{v₂} D]

/-- When `C` is any category, and `D` is a braided monoidal category,
the natural pointwise monoidal structure on the functor category `C ⥤ D`
is also braided.
-/
instance functorCategoryBraided : BraidedCategory (C ⥤ D) where
  braiding F G := NatIso.ofComponents fun X => β_ _ _
  hexagon_forward F G H := by ext X; apply hexagon_forward
  hexagon_reverse F G H := by ext X; apply hexagon_reverse
#align category_theory.monoidal.functor_category_braided CategoryTheory.Monoidal.functorCategoryBraided

example : BraidedCategory (C ⥤ D) :=
  CategoryTheory.Monoidal.functorCategoryBraided

end BraidedCategory

section SymmetricCategory

open CategoryTheory.SymmetricCategory

variable [SymmetricCategory.{v₂} D]

/-- When `C` is any category, and `D` is a symmetric monoidal category,
the natural pointwise monoidal structure on the functor category `C ⥤ D`
is also symmetric.
-/
instance functorCategorySymmetric : SymmetricCategory (C ⥤ D)
    where symmetry F G := by ext X; apply symmetry
#align category_theory.monoidal.functor_category_symmetric CategoryTheory.Monoidal.functorCategorySymmetric

end SymmetricCategory

end CategoryTheory.Monoidal
