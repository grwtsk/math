-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Final.Variantb24ff17cea611d63b1ff18962e51490de169c7740f774b0e5313a5aa72548872","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b24ff17cea611d63b1ff18962e51490de169c7740f774b0e5313a5aa72548872","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Final.Variantb24ff17cea611d63b1ff18962e51490de169c7740f774b0e5313a5aa72548872","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"b24ff17cea611d63b1ff18962e51490de169c7740f774b0e5313a5aa72548872","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/Interval/Set/Final.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Filtered.Final

/-!
# Final functors between intervals

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Final.Variantb24ff17cea611d63b1ff18962e51490de169c7740f774b0e5313a5aa72548872

universe u

instance Set.Ici.subtype_functor_final {J : Type u} [LinearOrder J] (j : J) :
    (Subtype.mono_coe (Set.Ici j)).functor.Final := by
  rw [Monotone.final_functor_iff]
  intro k
  exact ⟨⟨max j k, le_max_left _ _⟩, le_max_right _ _⟩
