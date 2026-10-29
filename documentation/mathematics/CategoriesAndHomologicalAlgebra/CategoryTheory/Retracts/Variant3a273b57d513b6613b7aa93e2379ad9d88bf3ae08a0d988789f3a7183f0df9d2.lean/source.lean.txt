-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RetractIsCardinalPresentable.Variantc23cf9a53ad8dadba13e8ece9da7d64a8c04c640830df4e1dcd77b2b5372e434","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c23cf9a53ad8dadba13e8ece9da7d64a8c04c640830df4e1dcd77b2b5372e434","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.RetractIsCardinalPresentable.Variantc23cf9a53ad8dadba13e8ece9da7d64a8c04c640830df4e1dcd77b2b5372e434","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"c23cf9a53ad8dadba13e8ece9da7d64a8c04c640830df4e1dcd77b2b5372e434","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Presentable/Retracts.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Presentable.Basic
public import Mathlib.CategoryTheory.ObjectProperty.Retract

/-!
# Presentable objects are stable under retracts

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RetractIsCardinalPresentable.Variantc23cf9a53ad8dadba13e8ece9da7d64a8c04c640830df4e1dcd77b2b5372e434

public section

universe w v u

namespace CategoryTheory

open Limits

variable {C : Type u} [Category.{v} C]

set_option backward.defeqAttrib.useBackward true in
lemma Retract.isCardinalPresentable
    {X Y : C} (h : Retract Y X) (κ : Cardinal.{w}) [Fact κ.IsRegular]
    [IsCardinalPresentable X κ] :
    IsCardinalPresentable Y κ where
  preservesColimitOfShape J _ _ := ⟨fun {F} ↦ ⟨fun {c} hc ↦ ⟨by
    have := essentiallySmallSelf J
    have := isFiltered_of_isCardinalFiltered J κ
    refine Types.FilteredColimit.isColimitOf' _ _ (fun f ↦ ?_) (fun j f₁ f₂ hf ↦ ?_)
    · obtain ⟨i, g, hg⟩ := IsCardinalPresentable.exists_hom_of_isColimit κ hc (h.r ≫ f)
      exact ⟨i, h.i ≫ g, by simp [hg]⟩
    · dsimp at f₁ f₂ hf ⊢
      obtain ⟨k, u, hj⟩ := IsCardinalPresentable.exists_eq_of_isColimit'
        κ hc (h.r ≫ f₁) (h.r ≫ f₂) (by simp [hf])
      exact ⟨k, u, by simpa [← cancel_epi h.r] using hj⟩⟩⟩⟩

instance (κ : Cardinal.{w}) [Fact κ.IsRegular] :
    (isCardinalPresentable C κ).IsStableUnderRetracts where
  of_retract {Y X} h hX := by
    rw [isCardinalPresentable_iff] at hX ⊢
    exact h.isCardinalPresentable κ

end CategoryTheory
