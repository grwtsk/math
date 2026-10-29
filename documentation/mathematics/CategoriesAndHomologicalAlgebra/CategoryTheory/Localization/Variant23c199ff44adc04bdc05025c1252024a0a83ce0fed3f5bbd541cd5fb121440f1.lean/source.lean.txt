-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.W.Varianta74d244ddd34b33661454f12b2d6264949de1d2097765942f5996c3b9632593d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a74d244ddd34b33661454f12b2d6264949de1d2097765942f5996c3b9632593d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.W.Varianta74d244ddd34b33661454f12b2d6264949de1d2097765942f5996c3b9632593d","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"a74d244ddd34b33661454f12b2d6264949de1d2097765942f5996c3b9632593d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Sites/Localization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Localization.Bousfield
import Mathlib.CategoryTheory.Sites.Sheafification

/-!
# The sheaf category as a localized category

In this file, it is shown that the category of sheaves `Sheaf J A` is a localization
of the category `Presheaf J A` with respect to the class `J.W` of morphisms
of presheaves which become isomorphisms after applying the sheafification functor.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.W.Varianta74d244ddd34b33661454f12b2d6264949de1d2097765942f5996c3b9632593d

namespace CategoryTheory

open Localization

variable {C : Type*} [Category C] (J : GrothendieckTopology C) {A : Type*} [Category A]

namespace GrothendieckTopology

/-- The class of morphisms of presheaves which become isomorphisms after sheafification.
(See `GrothendieckTopology.W_iff`.) -/
abbrev W : MorphismProperty (Cᵒᵖ ⥤ A) := LeftBousfield.W (Presheaf.IsSheaf J)

variable (A) in
lemma W_eq_W_range_sheafToPresheaf_obj :
    J.W = LeftBousfield.W (· ∈ Set.range (sheafToPresheaf J A).obj) := by
  apply congr_arg
  ext P
  constructor
  · intro hP
    exact ⟨⟨P, hP⟩, rfl⟩
  · rintro ⟨F, rfl⟩
    exact F.cond

lemma W_sheafToPreheaf_map_iff_isIso {F₁ F₂ : Sheaf J A} (φ : F₁ ⟶ F₂) :
    J.W ((sheafToPresheaf J A).map φ) ↔ IsIso φ := by
  rw [W_eq_W_range_sheafToPresheaf_obj, LeftBousfield.W_iff_isIso _ _ ⟨_, rfl⟩ ⟨_, rfl⟩,
    isIso_iff_of_reflects_iso]

section Adjunction

variable {G : (Cᵒᵖ ⥤ A) ⥤ Sheaf J A}

lemma W_adj_unit_app (adj : G ⊣ sheafToPresheaf J A) (P : Cᵒᵖ ⥤ A) : J.W (adj.unit.app P) := by
  rw [W_eq_W_range_sheafToPresheaf_obj]
  exact LeftBousfield.W_adj_unit_app adj P

lemma W_iff_isIso_map_of_adjunction (adj : G ⊣ sheafToPresheaf J A)
    {P₁ P₂ : Cᵒᵖ ⥤ A} (f : P₁ ⟶ P₂) :
    J.W f ↔ IsIso (G.map f) := by
  rw [W_eq_W_range_sheafToPresheaf_obj]
  exact LeftBousfield.W_iff_isIso_map adj f

lemma W_eq_inverseImage_isomorphisms_of_adjunction (adj : G ⊣ sheafToPresheaf J A) :
    J.W = (MorphismProperty.isomorphisms _).inverseImage G := by
  rw [W_eq_W_range_sheafToPresheaf_obj,
    LeftBousfield.W_eq_inverseImage_isomorphisms adj]

end Adjunction

section HasWeakSheafify

variable [HasWeakSheafify J A]

lemma W_toSheafify (P : Cᵒᵖ ⥤ A) : J.W (toSheafify J P) :=
  J.W_adj_unit_app (sheafificationAdjunction J A) P

lemma W_iff {P₁ P₂ : Cᵒᵖ ⥤ A} (f : P₁ ⟶ P₂) :
    J.W f ↔ IsIso ((presheafToSheaf J A).map f) :=
  J.W_iff_isIso_map_of_adjunction (sheafificationAdjunction J A) f

variable (A) in
lemma W_eq_inverseImage_isomorphisms :
    J.W = (MorphismProperty.isomorphisms _).inverseImage (presheafToSheaf J A) :=
  J.W_eq_inverseImage_isomorphisms_of_adjunction (sheafificationAdjunction J A)

instance : (presheafToSheaf J A).IsLocalization J.W := by
  rw [W_eq_inverseImage_isomorphisms]
  exact (sheafificationAdjunction J A).isLocalization

end HasWeakSheafify

end GrothendieckTopology

end CategoryTheory
