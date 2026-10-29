-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SectionsEquiv.Variantddeccc51c2adb1f6ca3c921ce3a2a94bdcc9fcf911fd618d5fe003db4110d3a4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ddeccc51c2adb1f6ca3c921ce3a2a94bdcc9fcf911fd618d5fe003db4110d3a4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.SectionsEquiv.Variantddeccc51c2adb1f6ca3c921ce3a2a94bdcc9fcf911fd618d5fe003db4110d3a4","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"ddeccc51c2adb1f6ca3c921ce3a2a94bdcc9fcf911fd618d5fe003db4110d3a4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Limits/Preserves/Ulift.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson, Junyan Xu, Sophie Morel
-/
import Mathlib.CategoryTheory.Limits.Creates
import Mathlib.CategoryTheory.Limits.Types.Limits
import Mathlib.CategoryTheory.Limits.Types.Colimits
import Mathlib.Data.Set.Subsingleton

/-!
# `ULift` creates small (co)limits


This file shows that `uliftFunctor.{v, u}` preserves all limits and colimits, including those
potentially too big to exist in `Type u`.

As this functor is fully faithful, we also deduce that it creates `u`-small limits and
colimits.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SectionsEquiv.Variantddeccc51c2adb1f6ca3c921ce3a2a94bdcc9fcf911fd618d5fe003db4110d3a4

universe v w w' u

namespace CategoryTheory.Limits.Types

/--
The equivalence between `K.sections` and `(K ⋙ uliftFunctor.{v, u}).sections`. This is used to show
that `uliftFunctor` preserves limits that are potentially too large to exist in the source
category.
-/
def sectionsEquiv {J : Type*} [Category J] (K : J ⥤ Type u) :
    K.sections ≃ (K ⋙ uliftFunctor.{v, u}).sections where
  toFun := fun ⟨u, hu⟩ => ⟨fun j => ⟨u j⟩, fun f => by simp [hu f]⟩
  invFun := fun ⟨u, hu⟩ => ⟨fun j => (u j).down, @fun j j' f => by simp [← hu f]⟩
  left_inv _ := rfl
  right_inv _ := rfl

/--
The functor `uliftFunctor : Type u ⥤ Type (max u v)` preserves limits of arbitrary size.
-/
noncomputable instance : PreservesLimitsOfSize.{w', w} uliftFunctor.{v, u} where
  preservesLimitsOfShape {J} := {
    preservesLimit := fun {K} => {
      preserves := fun {c} hc => by
        rw [Types.isLimit_iff ((uliftFunctor.{v, u}).mapCone c)]
        intro s hs
        obtain ⟨x, hx₁, hx₂⟩ := (Types.isLimit_iff c).mp ⟨hc⟩ _ ((sectionsEquiv K).symm ⟨s, hs⟩).2
        exact ⟨⟨x⟩, fun i => ULift.ext _ _ (hx₁ i),
          fun y hy => ULift.ext _ _ (hx₂ y.down fun i ↦ ULift.ext_iff.mp (hy i))⟩ } }

/--
The functor `uliftFunctor : Type u ⥤ Type (max u v)` creates `u`-small limits.
-/
noncomputable instance : CreatesLimitsOfSize.{w, u} uliftFunctor.{v, u} where
  CreatesLimitsOfShape := { CreatesLimit := fun {_} ↦ createsLimitOfFullyFaithfulOfPreserves }

variable {J : Type*} [Category J] {K : J ⥤ Type u} {c : Cocone K} (hc : IsColimit c)
variable {lc : Cocone (K ⋙ uliftFunctor.{v, u})}

/--
The functor `uliftFunctor : Type u ⥤ Type (max u v)` preserves colimits of arbitrary size.
-/
noncomputable instance : PreservesColimitsOfSize.{w', w} uliftFunctor.{v, u} where
  preservesColimitsOfShape {J _} :=
  { preservesColimit := fun {F} ↦
    { preserves := fun {c} hc ↦ by
        rw [isColimit_iff_bijective_desc, ← Function.Bijective.of_comp_iff _
          (quotQuotUliftEquiv F).bijective, Quot.desc_quotQuotUliftEquiv]
        exact ULift.up_bijective.comp ((isColimit_iff_bijective_desc c).mp (Nonempty.intro hc)) } }

/--
The functor `uliftFunctor : Type u ⥤ Type (max u v)` creates `u`-small colimits.
-/
noncomputable instance : CreatesColimitsOfSize.{w, u} uliftFunctor.{v, u} where
  CreatesColimitsOfShape :=
    { CreatesColimit := fun {_} ↦ createsColimitOfReflectsIsomorphismsOfPreserves }

end CategoryTheory.Limits.Types
