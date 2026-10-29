-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.InjectiveOfPreservesFiniteColimitsPreadditiveYonedaObj.Variantb9ef49009744b8d7c00dc3c0d2f0d40568c61e4ba3e179c9d7309d9e4732938c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b9ef49009744b8d7c00dc3c0d2f0d40568c61e4ba3e179c9d7309d9e4732938c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.InjectiveOfPreservesFiniteColimitsPreadditiveYonedaObj.Variantb9ef49009744b8d7c00dc3c0d2f0d40568c61e4ba3e179c9d7309d9e4732938c","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"b9ef49009744b8d7c00dc3c0d2f0d40568c61e4ba3e179c9d7309d9e4732938c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Abelian/Injective/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jakob von Raumer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jakob von Raumer
-/
import Mathlib.CategoryTheory.Abelian.Exact
import Mathlib.CategoryTheory.Preadditive.Injective.Basic
import Mathlib.CategoryTheory.Preadditive.Yoneda.Limits
import Mathlib.CategoryTheory.Preadditive.Yoneda.Injective
import Mathlib.Algebra.Homology.ShortComplex.ExactFunctor

/-!
# Injective objects in abelian categories

* Objects in an abelian categories are injective if and only if the preadditive Yoneda functor
  on them preserves finite colimits.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.InjectiveOfPreservesFiniteColimitsPreadditiveYonedaObj.Variantb9ef49009744b8d7c00dc3c0d2f0d40568c61e4ba3e179c9d7309d9e4732938c

noncomputable section

open CategoryTheory Limits Injective Opposite

universe v u

namespace CategoryTheory

variable {C : Type u} [Category.{v} C] [Abelian C]

/-- The preadditive Yoneda functor on `J` preserves homology if `J` is injective. -/
instance preservesHomology_preadditiveYonedaObj_of_injective (J : C) [hJ : Injective J] :
    (preadditiveYonedaObj J).PreservesHomology  := by
  letI := (injective_iff_preservesEpimorphisms_preadditive_yoneda_obj' J).mp hJ
  apply Functor.preservesHomology_of_preservesEpis_and_kernels

/-- The preadditive Yoneda functor on `J` preserves colimits if `J` is injective. -/
instance preservesFiniteColimits_preadditiveYonedaObj_of_injective (J : C) [hP : Injective J] :
    PreservesFiniteColimits (preadditiveYonedaObj J) := by
  apply Functor.preservesFiniteColimits_of_preservesHomology

/-- An object is injective if its preadditive Yoneda functor preserves finite colimits. -/
theorem injective_of_preservesFiniteColimits_preadditiveYonedaObj (J : C)
    [hP : PreservesFiniteColimits (preadditiveYonedaObj J)] : Injective J := by
  rw [injective_iff_preservesEpimorphisms_preadditive_yoneda_obj']
  have := Functor.preservesHomologyOfExact (preadditiveYonedaObj J)
  infer_instance

end CategoryTheory
