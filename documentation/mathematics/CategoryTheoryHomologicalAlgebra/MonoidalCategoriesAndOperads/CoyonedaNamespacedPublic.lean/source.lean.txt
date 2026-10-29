-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Types.Varianta8eb4f3c24871b53a1263d2f44d3294b70067c51054c089de00aae47b128cae0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a8eb4f3c24871b53a1263d2f44d3294b70067c51054c089de00aae47b128cae0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Types.Varianta8eb4f3c24871b53a1263d2f44d3294b70067c51054c089de00aae47b128cae0","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"a8eb4f3c24871b53a1263d2f44d3294b70067c51054c089de00aae47b128cae0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Monoidal/Types/Coyoneda.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Michael Jendrusch. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Jendrusch, Kim Morrison
-/
module

public import Mathlib.CategoryTheory.Monoidal.Types.Basic
public import Mathlib.CategoryTheory.Monoidal.CoherenceLemmas

/-!
# `(𝟙_ C ⟶ -)` is a lax monoidal functor to `Type`
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Types.Varianta8eb4f3c24871b53a1263d2f44d3294b70067c51054c089de00aae47b128cae0

public section

universe v u

namespace CategoryTheory

open Opposite MonoidalCategory

set_option backward.defeqAttrib.useBackward true in
attribute [local simp] types_tensorObj_def types_tensorUnit_def in
instance (C : Type u) [Category.{v} C] [MonoidalCategory C] :
    (coyoneda.obj (op (𝟙_ C))).LaxMonoidal :=
  Functor.LaxMonoidal.ofTensorHom
    (ε := ↾fun _ ↦ 𝟙 _)
    (μ := fun X Y ↦ ↾fun p ↦ (λ_ (𝟙_ C)).inv ≫ (p.1 ⊗ₘ p.2))
    (μ_natural := by cat_disch)
    (associativity := fun X Y Z => by
      ext ⟨⟨f, g⟩, h⟩; dsimp at f g h
      dsimp; simp only [Category.assoc, Iso.cancel_iso_inv_left]
      conv_lhs =>
        rw [← Category.id_comp h, ← tensorHom_comp_tensorHom, Category.assoc, associator_naturality,
          ← Category.assoc, unitors_inv_equal, tensorHom_id, triangle_assoc_comp_right_inv]
      conv_rhs => rw [← Category.id_comp f, ← tensorHom_comp_tensorHom]
      simp)
    (right_unitality := fun X => by
      ext ⟨f, ⟨⟩⟩
      simp [unitors_inv_equal])

end CategoryTheory
