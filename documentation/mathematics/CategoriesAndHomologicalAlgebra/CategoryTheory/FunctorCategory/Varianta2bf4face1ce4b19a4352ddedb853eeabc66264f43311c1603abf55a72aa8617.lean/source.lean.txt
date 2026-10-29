-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ClosedIhom.Variantb8c856d5c393a164f46b83f71e43a0f8c64be56a1e5809ab897d85c8ea4d9378","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b8c856d5c393a164f46b83f71e43a0f8c64be56a1e5809ab897d85c8ea4d9378","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ClosedIhom.Variantb8c856d5c393a164f46b83f71e43a0f8c64be56a1e5809ab897d85c8ea4d9378","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"b8c856d5c393a164f46b83f71e43a0f8c64be56a1e5809ab897d85c8ea4d9378","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Closed/FunctorCategory.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Antoine Labelle. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Antoine Labelle
-/
import Mathlib.CategoryTheory.Closed.Monoidal
import Mathlib.CategoryTheory.Monoidal.FunctorCategory


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ClosedIhom.Variantb8c856d5c393a164f46b83f71e43a0f8c64be56a1e5809ab897d85c8ea4d9378

#align_import category_theory.closed.functor_category from "leanprover-community/mathlib"@"0caf3701139ef2e69c215717665361cda205a90b"

/-!
# Functors from a groupoid into a monoidal closed category form a monoidal closed category.

(Using the pointwise monoidal structure on the functor category.)
-/


noncomputable section

open CategoryTheory CategoryTheory.MonoidalCategory CategoryTheory.MonoidalClosed

namespace CategoryTheory.Functor

variable {D C : Type*} [Groupoid D] [Category C] [MonoidalCategory C] [MonoidalClosed C]

/-- Auxiliary definition for `CategoryTheory.Functor.closed`.
The internal hom functor `F ⟶[C] -` -/
@[simps!]
def closedIhom (F : D ⥤ C) : (D ⥤ C) ⥤ D ⥤ C :=
  ((whiskeringRight₂ D Cᵒᵖ C C).obj internalHom).obj (Groupoid.invFunctor D ⋙ F.op)
#align category_theory.functor.closed_ihom CategoryTheory.Functor.closedIhom

/-- Auxiliary definition for `CategoryTheory.Functor.closed`.
The unit for the adjunction `(tensorLeft F) ⊣ (ihom F)`. -/
@[simps]
def closedUnit (F : D ⥤ C) : 𝟭 (D ⥤ C) ⟶ tensorLeft F ⋙ closedIhom F where
  app G :=
  { app := fun X => (ihom.coev (F.obj X)).app (G.obj X)
    naturality := by
      intro X Y f
      dsimp
      simp only [ihom.coev_naturality, closedIhom_obj_map, Monoidal.tensorObj_map]
      dsimp
      rw [coev_app_comp_pre_app_assoc, ← Functor.map_comp]
      simp }
#align category_theory.functor.closed_unit CategoryTheory.Functor.closedUnit

/-- Auxiliary definition for `CategoryTheory.Functor.closed`.
The counit for the adjunction `(tensorLeft F) ⊣ (ihom F)`. -/
@[simps]
def closedCounit (F : D ⥤ C) : closedIhom F ⋙ tensorLeft F ⟶ 𝟭 (D ⥤ C) where
  app G :=
  { app := fun X => (ihom.ev (F.obj X)).app (G.obj X)
    naturality := by
      intro X Y f
      dsimp
      simp only [closedIhom_obj_map, pre_comm_ihom_map]
      rw [← tensor_id_comp_id_tensor, id_tensor_comp]
      simp }
#align category_theory.functor.closed_counit CategoryTheory.Functor.closedCounit

/-- If `C` is a monoidal closed category and `D` is a groupoid, then every functor `F : D ⥤ C` is
closed in the functor category `F : D ⥤ C` with the pointwise monoidal structure. -/
-- Porting note: removed `@[simps]`, as some of the generated lemmas were failing the simpNF linter,
-- and none of the generated lemmmas was actually used in mathlib3.
instance closed (F : D ⥤ C) : Closed F where
  isAdj :=
  { right := closedIhom F
    adj := Adjunction.mkOfUnitCounit
      { unit := closedUnit F
        counit := closedCounit F } }
#align category_theory.functor.closed CategoryTheory.Functor.closed

/-- If `C` is a monoidal closed category and `D` is groupoid, then the functor category `D ⥤ C`,
with the pointwise monoidal structure, is monoidal closed. -/
@[simps!]
instance monoidalClosed : MonoidalClosed (D ⥤ C) where
  closed := by infer_instance
#align category_theory.functor.monoidal_closed CategoryTheory.Functor.monoidalClosed

theorem ihom_map (F : D ⥤ C) {G H : D ⥤ C} (f : G ⟶ H) : (ihom F).map f = (closedIhom F).map f :=
  rfl
#align category_theory.functor.ihom_map CategoryTheory.Functor.ihom_map

theorem ihom_ev_app (F G : D ⥤ C) : (ihom.ev F).app G = (closedCounit F).app G :=
  rfl
#align category_theory.functor.ihom_ev_app CategoryTheory.Functor.ihom_ev_app

theorem ihom_coev_app (F G : D ⥤ C) : (ihom.coev F).app G = (closedUnit F).app G :=
  rfl
#align category_theory.functor.ihom_coev_app CategoryTheory.Functor.ihom_coev_app

end CategoryTheory.Functor
