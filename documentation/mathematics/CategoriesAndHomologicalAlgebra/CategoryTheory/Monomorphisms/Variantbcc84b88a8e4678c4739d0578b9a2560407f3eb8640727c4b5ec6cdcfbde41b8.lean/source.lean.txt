-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variant9e5e57c4eeedb7008f0605db76bfecc6e2aeb9f3955f96c6d0eeefe957d01e23","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9e5e57c4eeedb7008f0605db76bfecc6e2aeb9f3955f96c6d0eeefe957d01e23","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Limits.Variant9e5e57c4eeedb7008f0605db76bfecc6e2aeb9f3955f96c6d0eeefe957d01e23","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"9e5e57c4eeedb7008f0605db76bfecc6e2aeb9f3955f96c6d0eeefe957d01e23","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Abelian/Monomorphisms.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.MorphismProperty.Limits
import Mathlib.CategoryTheory.Abelian.Basic

/-!
# Monomorphisms are stable under cobase change

In an abelian category `C`, the class of morphism
`monomorphisms C` is stable under cobase change and
`epimorphisms C` is stable under base change.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variant9e5e57c4eeedb7008f0605db76bfecc6e2aeb9f3955f96c6d0eeefe957d01e23

universe v u

namespace CategoryTheory.Abelian

variable {C : Type u} [Category.{v} C] [Abelian C]

open MorphismProperty

instance : (monomorphisms C).IsStableUnderCobaseChange :=
  IsStableUnderCobaseChange.mk' (fun _ _ _ f g _ hf ↦ by
    simp only [monomorphisms.iff] at hf ⊢
    infer_instance)

instance : (epimorphisms C).IsStableUnderBaseChange :=
  IsStableUnderBaseChange.mk' (fun _ _ _ f g _ hf ↦ by
    simp only [epimorphisms.iff] at hf ⊢
    infer_instance)

end CategoryTheory.Abelian
