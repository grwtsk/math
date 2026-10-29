-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Mul.Variantda4251973d0050609dfefb11179fdc03b136c7fa0580fea24525c83d01a6e693","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"da4251973d0050609dfefb11179fdc03b136c7fa0580fea24525c83d01a6e693","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Mul.Variantda4251973d0050609dfefb11179fdc03b136c7fa0580fea24525c83d01a6e693","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"da4251973d0050609dfefb11179fdc03b136c7fa0580fea24525c83d01a6e693","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Ring/Subgroup.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Junyan Xu
-/
import Mathlib.Algebra.GroupWithZero.Subgroup
import Mathlib.Algebra.Ring.Submonoid.Pointwise
import Mathlib.Algebra.Module.Defs

/-!
# Additive subgroups of rings
-/


namespace GRWTSK.Algebra.LinearAlgebra.Mul.Variantda4251973d0050609dfefb11179fdc03b136c7fa0580fea24525c83d01a6e693

open scoped Pointwise

variable {R M : Type*}

namespace AddSubgroup
section NonUnitalNonAssocRing
variable [NonUnitalNonAssocRing R]

/-- For additive subgroups `S` and `T` of a ring, the product of `S` and `T` as submonoids
is automatically a subgroup, which we define as the product of `S` and `T` as subgroups. -/
protected def mul : Mul (AddSubgroup R) where
  mul M N :=
  { __ := M.toAddSubmonoid * N.toAddSubmonoid
    neg_mem' := fun h ↦ AddSubmonoid.mul_induction_on h
      (fun m hm n hn ↦ by rw [← neg_mul]; exact AddSubmonoid.mul_mem_mul (M.neg_mem hm) hn)
      fun r₁ r₂ h₁ h₂ ↦ by rw [neg_add]; exact (M.1 * N.1).add_mem h₁ h₂ }

scoped[Pointwise] attribute [instance] AddSubgroup.mul

lemma mul_toAddSubmonoid (M N : AddSubgroup R) :
    (M * N).toAddSubmonoid = M.toAddSubmonoid * N.toAddSubmonoid := rfl

end NonUnitalNonAssocRing

section Semiring
variable [Semiring R] [AddCommGroup M] [Module R M]

@[simp] protected lemma zero_smul (s : AddSubgroup M) : (0 : R) • s = ⊥ := by
  simp [eq_bot_iff_forall, pointwise_smul_def]

end Semiring
end AddSubgroup
