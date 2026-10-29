-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.StructuredArrow.Variantc0b104fb127861c116bbe9e7d50e99e6b876f88040afcd58651249184fdc3141","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c0b104fb127861c116bbe9e7d50e99e6b876f88040afcd58651249184fdc3141","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.StructuredArrow.Variantc0b104fb127861c116bbe9e7d50e99e6b876f88040afcd58651249184fdc3141","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"c0b104fb127861c116bbe9e7d50e99e6b876f88040afcd58651249184fdc3141","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Comma/StructuredArrow/Small.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Comma.StructuredArrow.Basic
import Mathlib.CategoryTheory.EssentiallySmall
import Mathlib.Logic.Small.Set

/-!
# Small sets in the category of structured arrows

Here we prove a technical result about small sets in the category of structured arrows that will
be used in the proof of the Special Adjoint Functor Theorem.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.StructuredArrow.Variantc0b104fb127861c116bbe9e7d50e99e6b876f88040afcd58651249184fdc3141

namespace CategoryTheory

-- morphism levels before object levels. See note [CategoryTheory universes].
universe v₁ v₂ u₁ u₂

variable {C : Type u₁} [Category.{v₁} C] {D : Type u₂} [Category.{v₂} D]

namespace StructuredArrow

variable {S : D} {T : C ⥤ D}

instance small_proj_preimage_of_locallySmall {𝒢 : Set C} [Small.{v₁} 𝒢] [LocallySmall.{v₁} D] :
    Small.{v₁} ((proj S T).obj ⁻¹' 𝒢) := by
  suffices (proj S T).obj ⁻¹' 𝒢 = Set.range fun f : ΣG : 𝒢, S ⟶ T.obj G => mk f.2 by
    rw [this]
    infer_instance
  exact Set.ext fun X => ⟨fun h => ⟨⟨⟨_, h⟩, X.hom⟩, (eq_mk _).symm⟩, by aesop_cat⟩

end StructuredArrow

namespace CostructuredArrow

variable {S : C ⥤ D} {T : D}

instance small_proj_preimage_of_locallySmall {𝒢 : Set C} [Small.{v₁} 𝒢] [LocallySmall.{v₁} D] :
    Small.{v₁} ((proj S T).obj ⁻¹' 𝒢) := by
  suffices (proj S T).obj ⁻¹' 𝒢 = Set.range fun f : ΣG : 𝒢, S.obj G ⟶ T => mk f.2 by
    rw [this]
    infer_instance
  exact Set.ext fun X => ⟨fun h => ⟨⟨⟨_, h⟩, X.hom⟩, (eq_mk _).symm⟩, by aesop_cat⟩

end CostructuredArrow

end CategoryTheory
