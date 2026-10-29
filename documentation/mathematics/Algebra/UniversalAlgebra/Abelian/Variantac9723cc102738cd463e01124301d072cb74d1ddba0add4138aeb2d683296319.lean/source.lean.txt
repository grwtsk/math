-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Colimits.Variant6cf67ac5992daf3b6d0d823f9c050e58d3004de2920a68643a7094defa6ba28b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6cf67ac5992daf3b6d0d823f9c050e58d3004de2920a68643a7094defa6ba28b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Colimits.Variant6cf67ac5992daf3b6d0d823f9c050e58d3004de2920a68643a7094defa6ba28b","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"6cf67ac5992daf3b6d0d823f9c050e58d3004de2920a68643a7094defa6ba28b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Category/ModuleCat/Presheaf/Abelian.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Algebra.Category.ModuleCat.Presheaf.Colimits
import Mathlib.Algebra.Category.ModuleCat.Presheaf.Limits
import Mathlib.Algebra.Category.ModuleCat.Abelian
import Mathlib.CategoryTheory.Abelian.Basic

/-!
# The category of presheaves of modules is abelian

-/


namespace GRWTSK.Algebra.UniversalAlgebra.Colimits.Variant6cf67ac5992daf3b6d0d823f9c050e58d3004de2920a68643a7094defa6ba28b

universe v v₁ u₁ u

open CategoryTheory Category Limits

namespace PresheafOfModules

variable {C : Type u₁} [Category.{v₁} C] (R : Cᵒᵖ ⥤ RingCat.{u})

noncomputable instance : IsNormalEpiCategory (PresheafOfModules.{v} R) where
  normalEpiOfEpi p _ := ⟨NormalEpi.mk _ (kernel.ι p) (kernel.condition _)
    (evaluationJointlyReflectsColimits _ _ (fun _ =>
      Abelian.isColimitMapCoconeOfCokernelCoforkOfπ _ _))⟩

noncomputable instance : IsNormalMonoCategory (PresheafOfModules.{v} R) where
  normalMonoOfMono i _ := ⟨NormalMono.mk _ (cokernel.π i) (cokernel.condition _)
    (evaluationJointlyReflectsLimits _ _ (fun _ =>
      Abelian.isLimitMapConeOfKernelForkOfι _ _))⟩

noncomputable instance : Abelian (PresheafOfModules.{v} R) where

end PresheafOfModules
