-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RestrictScalars.Variante0c21e90754470e4ab7d5399fba98c12f91d7276fdba0f296492852275f14589","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e0c21e90754470e4ab7d5399fba98c12f91d7276fdba0f296492852275f14589","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.RestrictScalars.Variante0c21e90754470e4ab7d5399fba98c12f91d7276fdba0f296492852275f14589","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"e0c21e90754470e4ab7d5399fba98c12f91d7276fdba0f296492852275f14589","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Category/ModuleCat/Sheaf/ChangeOfRings.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Algebra.Category.ModuleCat.Sheaf
import Mathlib.Algebra.Category.ModuleCat.Presheaf.ChangeOfRings
import Mathlib.CategoryTheory.Sites.LocallySurjective

/-!
# Change of sheaf of rings

In this file, we define the restriction of scalars functor
`restrictScalars α : SheafOfModules.{v} R' ⥤ SheafOfModules.{v} R`
attached to a morphism of sheaves of rings `α : R ⟶ R'`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RestrictScalars.Variante0c21e90754470e4ab7d5399fba98c12f91d7276fdba0f296492852275f14589

universe v v' u u'

open CategoryTheory

variable {C : Type u'} [Category.{v'} C] {J : GrothendieckTopology C}

namespace SheafOfModules

variable {R R' : Sheaf J RingCat.{u}} (α : R ⟶ R')

/-- The restriction of scalars functor `SheafOfModules R' ⥤ SheafOfModules R`
induced by a morphism of sheaves of rings `R ⟶ R'`. -/
@[simps]
noncomputable def restrictScalars :
    SheafOfModules.{v} R' ⥤ SheafOfModules.{v} R where
  obj M' :=
    { val := (PresheafOfModules.restrictScalars α.val).obj M'.val
      isSheaf := M'.isSheaf }
  map φ := { val := (PresheafOfModules.restrictScalars α.val).map φ.val }

instance : (restrictScalars.{v} α).Additive where

end SheafOfModules

namespace PresheafOfModules

variable {R R' : Cᵒᵖ ⥤ RingCat.{u}} (α : R ⟶ R')
  {M₁ M₂ : PresheafOfModules.{v} R'}

/-- The functor `PresheafOfModules.restrictScalars α` induces bijections on
morphisms if `α` is locally surjective and the target presheaf is a sheaf. -/
noncomputable def restrictHomEquivOfIsLocallySurjective
    (hM₂ : Presheaf.IsSheaf J M₂.presheaf) [Presheaf.IsLocallySurjective J α] :
    (M₁ ⟶ M₂) ≃ ((restrictScalars α).obj M₁ ⟶ (restrictScalars α).obj M₂) where
  toFun f := (restrictScalars α).map f
  invFun g := homMk ((toPresheaf R).map g) (fun X r' m ↦ by
    apply hM₂.isSeparated _ _ (Presheaf.imageSieve_mem J α r')
    rintro Y p ⟨r : R.obj _, hr⟩
    have hg : ∀ (z : M₁.obj X), g.app _ (M₁.map p.op z) = M₂.map p.op (g.app X z) :=
      fun z ↦ CategoryTheory.congr_fun (g.naturality p.op) z
    change M₂.map p.op (g.app X (r' • m)) = M₂.map p.op (r' • show M₂.obj X from g.app X m)
    dsimp at hg ⊢
    rw [← hg, M₂.map_smul, ← hg, ← hr]
    erw [← (g.app _).hom.map_smul]
    rw [M₁.map_smul, ← hr]
    rfl)
  left_inv _ := rfl
  right_inv _ := rfl

end PresheafOfModules
