-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ProjectiveOfPreservesFiniteColimitsPreadditiveCoyonedaObj.Variantde5cd33fdee0dae4c93611e8f973b4021a836898069fe61f9055e2b7565f64d2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"de5cd33fdee0dae4c93611e8f973b4021a836898069fe61f9055e2b7565f64d2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ProjectiveOfPreservesFiniteColimitsPreadditiveCoyonedaObj.Variantde5cd33fdee0dae4c93611e8f973b4021a836898069fe61f9055e2b7565f64d2","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"de5cd33fdee0dae4c93611e8f973b4021a836898069fe61f9055e2b7565f64d2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Abelian/Projective/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jakob von Raumer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jakob von Raumer
-/
import Mathlib.CategoryTheory.Abelian.Exact
import Mathlib.CategoryTheory.Preadditive.Yoneda.Projective
import Mathlib.CategoryTheory.Preadditive.Yoneda.Limits
import Mathlib.Algebra.Category.ModuleCat.EpiMono
import Mathlib.Algebra.Homology.ShortComplex.ExactFunctor

/-!
# Projective objects in abelian categories

In an abelian category, an object `P` is projective iff the functor
`preadditiveCoyonedaObj (op P)` preserves finite colimits.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ProjectiveOfPreservesFiniteColimitsPreadditiveCoyonedaObj.Variantde5cd33fdee0dae4c93611e8f973b4021a836898069fe61f9055e2b7565f64d2

universe v u

namespace CategoryTheory

open Limits Projective Opposite

variable {C : Type u} [Category.{v} C] [Abelian C]

/-- The preadditive Co-Yoneda functor on `P` preserves homology if `P` is projective. -/
noncomputable instance preservesHomology_preadditiveCoyonedaObj_of_projective
    (P : C) [hP : Projective P] :
    (preadditiveCoyonedaObj P).PreservesHomology := by
  haveI := (projective_iff_preservesEpimorphisms_preadditiveCoyonedaObj P).mp hP
  apply Functor.preservesHomology_of_preservesEpis_and_kernels

/-- The preadditive Co-Yoneda functor on `P` preserves finite colimits if `P` is projective. -/
noncomputable instance preservesFiniteColimits_preadditiveCoyonedaObj_of_projective
    (P : C) [hP : Projective P] :
    PreservesFiniteColimits (preadditiveCoyonedaObj P) := by
  apply Functor.preservesFiniteColimits_of_preservesHomology

/-- An object is projective if its preadditive Co-Yoneda functor preserves finite colimits. -/
theorem projective_of_preservesFiniteColimits_preadditiveCoyonedaObj (P : C)
    [hP : PreservesFiniteColimits (preadditiveCoyonedaObj P)] : Projective P := by
  rw [projective_iff_preservesEpimorphisms_preadditiveCoyonedaObj]
  have := Functor.preservesHomologyOfExact (preadditiveCoyonedaObj P)
  infer_instance

end CategoryTheory
