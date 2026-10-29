-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.SubgroupCenterUnitsEquivUnitsCenter.Variantb1a37688ff4f442c853512a10140a9d7d0e5118d73e3a7e89face1a65a2edfc6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b1a37688ff4f442c853512a10140a9d7d0e5118d73e3a7e89face1a65a2edfc6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.SubgroupCenterUnitsEquivUnitsCenter.Variantb1a37688ff4f442c853512a10140a9d7d0e5118d73e3a7e89face1a65a2edfc6","mathematical_subject":"Algebra.Groups","original_sha256":"b1a37688ff4f442c853512a10140a9d7d0e5118d73e3a7e89face1a65a2edfc6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/GroupWithZero/Action/Center.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kexing Ying. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kexing Ying
-/
import Mathlib.Algebra.GroupWithZero.Units.Basic
import Mathlib.GroupTheory.Subgroup.Center

/-!
# The center of a group with zero
-/


namespace GRWTSK.Algebra.GroupTheory.SubgroupCenterUnitsEquivUnitsCenter.Variantb1a37688ff4f442c853512a10140a9d7d0e5118d73e3a7e89face1a65a2edfc6

assert_not_exists Ring

/-- For a group with zero, the center of the units is the same as the units of the center. -/
@[simps! apply_val_coe symm_apply_coe_val]
def Subgroup.centerUnitsEquivUnitsCenter (G₀ : Type*) [GroupWithZero G₀] :
    center G₀ˣ ≃* (Submonoid.center G₀)ˣ where
  toFun := MonoidHom.toHomUnits
    { toFun u := by
        refine ⟨(u : G₀ˣ), Submonoid.mem_center_iff.mpr fun r ↦ ?_⟩
        obtain rfl | hr := eq_or_ne r 0
        · rw [mul_zero, zero_mul]
        · exact congrArg Units.val <| (u.2.comm <| Units.mk0 r hr).symm
      map_one' := rfl
      map_mul' _ _ := rfl }
  invFun u := unitsCenterToCenterUnits G₀ u
  left_inv _ := by ext; rfl
  right_inv _ := by ext; rfl
  map_mul' := map_mul _
