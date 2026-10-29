-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EffectiveEpiDescIffEffectiveEpiFamily.Variant2b89bf920f30e666ab5837ce63616e6e002bf495c54605958bb273fd21ca2345","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2b89bf920f30e666ab5837ce63616e6e002bf495c54605958bb273fd21ca2345","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.EffectiveEpiDescIffEffectiveEpiFamily.Variant2b89bf920f30e666ab5837ce63616e6e002bf495c54605958bb273fd21ca2345","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"2b89bf920f30e666ab5837ce63616e6e002bf495c54605958bb273fd21ca2345","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/EffectiveEpi/Extensive.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.CategoryTheory.EffectiveEpi.Preserves
import Mathlib.CategoryTheory.EffectiveEpi.Coproduct
import Mathlib.CategoryTheory.Extensive
import Mathlib.CategoryTheory.Limits.Preserves.Finite
/-!

# Preserving and reflecting effective epis on extensive categories

We prove that a functor between `FinitaryPreExtensive` categories preserves (resp. reflects) finite
effective epi families if it preserves (resp. reflects) effective epis.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EffectiveEpiDescIffEffectiveEpiFamily.Variant2b89bf920f30e666ab5837ce63616e6e002bf495c54605958bb273fd21ca2345

namespace CategoryTheory

open Limits

variable {C : Type*} [Category C] [FinitaryPreExtensive C]

theorem effectiveEpi_desc_iff_effectiveEpiFamily {α : Type} [Finite α]
    {B : C} (X : α → C) (π : (a : α) → X a ⟶ B) :
    EffectiveEpi (Sigma.desc π) ↔ EffectiveEpiFamily X π := by
  exact ⟨fun h ↦ ⟨⟨@effectiveEpiFamilyStructOfEffectiveEpiDesc _ _ _ _ X π _ h _ _ (fun g ↦
    (FinitaryPreExtensive.sigma_desc_iso (fun a ↦ Sigma.ι X a) g inferInstance).epi_of_iso)⟩⟩,
    fun _ ↦ inferInstance⟩

variable {D : Type*} [Category D] [FinitaryPreExtensive D]
variable (F : C ⥤ D) [PreservesFiniteCoproducts F]

instance [F.ReflectsEffectiveEpis] : F.ReflectsFiniteEffectiveEpiFamilies where
  reflects {α _ B} X π h := by
    simp only [← effectiveEpi_desc_iff_effectiveEpiFamily]
    apply F.effectiveEpi_of_map
    convert (inferInstance :
      EffectiveEpi (inv (sigmaComparison F X) ≫ (Sigma.desc (fun a ↦ F.map (π a)))))
    simp

instance [F.PreservesEffectiveEpis] : F.PreservesFiniteEffectiveEpiFamilies where
  preserves {α _ B} X π h := by
    simp only [← effectiveEpi_desc_iff_effectiveEpiFamily]
    convert (inferInstance :
      EffectiveEpi ((sigmaComparison F X) ≫ (F.map (Sigma.desc π))))
    simp

end CategoryTheory
