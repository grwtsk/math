-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PreservesMonoOfPreservesLimit.Variantd80408c0ee35edc3c14d1067b37180ca726e8c1aae7a961e1b3c91be60b3a805","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d80408c0ee35edc3c14d1067b37180ca726e8c1aae7a961e1b3c91be60b3a805","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.PreservesMonoOfPreservesLimit.Variantd80408c0ee35edc3c14d1067b37180ca726e8c1aae7a961e1b3c91be60b3a805","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"d80408c0ee35edc3c14d1067b37180ca726e8c1aae7a961e1b3c91be60b3a805","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Limits/Constructions/EpiMono.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bhavik Mehta
-/
module

public import Mathlib.CategoryTheory.Limits.Preserves.Shapes.Pullbacks

/-!
# Relating monomorphisms and epimorphisms to limits and colimits

If `F` preserves (resp. reflects) pullbacks, then it preserves (resp. reflects) monomorphisms.

We also provide the dual version for epimorphisms.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PreservesMonoOfPreservesLimit.Variantd80408c0ee35edc3c14d1067b37180ca726e8c1aae7a961e1b3c91be60b3a805

public section


universe v₁ v₂ u₁ u₂

namespace CategoryTheory

open Category Limits

variable {C : Type u₁} {D : Type u₂} [Category.{v₁} C] [Category.{v₂} D]
variable (F : C ⥤ D)

/-- If `F` preserves pullbacks, then it preserves monomorphisms. -/
theorem preserves_mono_of_preservesLimit {X Y : C} (f : X ⟶ Y) [PreservesLimit (cospan f f) F]
    [Mono f] : Mono (F.map f) := by
  have := isLimitPullbackConeMapOfIsLimit F _ (PullbackCone.isLimitMkIdId f)
  simp_rw [F.map_id] at this
  apply PullbackCone.mono_of_isLimitMkIdId _ this

instance (priority := 100) preservesMonomorphisms_of_preservesLimitsOfShape
    [PreservesLimitsOfShape WalkingCospan F] : F.PreservesMonomorphisms where
  preserves f _ := preserves_mono_of_preservesLimit F f

/-- If `F` reflects pullbacks, then it reflects monomorphisms. -/
theorem reflects_mono_of_reflectsLimit {X Y : C} (f : X ⟶ Y) [ReflectsLimit (cospan f f) F]
    [Mono (F.map f)] : Mono f := by
  have := PullbackCone.isLimitMkIdId (F.map f)
  simp_rw [← F.map_id] at this
  apply PullbackCone.mono_of_isLimitMkIdId _ (isLimitOfIsLimitPullbackConeMap F _ this)

instance (priority := 100) reflectsMonomorphisms_of_reflectsLimitsOfShape
    [ReflectsLimitsOfShape WalkingCospan F] : F.ReflectsMonomorphisms where
  reflects f _ := reflects_mono_of_reflectsLimit F f

/-- If `F` preserves pushouts, then it preserves epimorphisms. -/
theorem preserves_epi_of_preservesColimit {X Y : C} (f : X ⟶ Y) [PreservesColimit (span f f) F]
    [Epi f] : Epi (F.map f) := by
  have := isColimitPushoutCoconeMapOfIsColimit F _ (PushoutCocone.isColimitMkIdId f)
  simp_rw [F.map_id] at this
  apply PushoutCocone.epi_of_isColimitMkIdId _ this

instance (priority := 100) preservesEpimorphisms_of_preservesColimitsOfShape
    [PreservesColimitsOfShape WalkingSpan F] : F.PreservesEpimorphisms where
  preserves f _ := preserves_epi_of_preservesColimit F f

/-- If `F` reflects pushouts, then it reflects epimorphisms. -/
theorem reflects_epi_of_reflectsColimit {X Y : C} (f : X ⟶ Y) [ReflectsColimit (span f f) F]
    [Epi (F.map f)] : Epi f := by
  have := PushoutCocone.isColimitMkIdId (F.map f)
  simp_rw [← F.map_id] at this
  apply
    PushoutCocone.epi_of_isColimitMkIdId _
      (isColimitOfIsColimitPushoutCoconeMap F _ this)

instance (priority := 100) reflectsEpimorphisms_of_reflectsColimitsOfShape
    [ReflectsColimitsOfShape WalkingSpan F] : F.ReflectsEpimorphisms where
  reflects f _ := reflects_epi_of_reflectsColimit F f

end CategoryTheory
