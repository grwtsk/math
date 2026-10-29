-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.MulLeft.Variantb53e623f3124551f997ff45df753f66c09ed80cb518ec88a3870682d525a5c3e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b53e623f3124551f997ff45df753f66c09ed80cb518ec88a3870682d525a5c3e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.MulLeft.Variantb53e623f3124551f997ff45df753f66c09ed80cb518ec88a3870682d525a5c3e","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"b53e623f3124551f997ff45df753f66c09ed80cb518ec88a3870682d525a5c3e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Ring/AddAut.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Algebra.GroupWithZero.Action.Basic
import Mathlib.Algebra.GroupWithZero.Action.Units
import Mathlib.Algebra.Group.Units.Opposite
import Mathlib.Algebra.Module.Opposite

/-!
# Multiplication on the left/right as additive automorphisms

In this file we define `AddAut.mulLeft` and `AddAut.mulRight`.

See also `AddMonoidHom.mulLeft`, `AddMonoidHom.mulRight`, `AddMonoid.End.mulLeft`, and
`AddMonoid.End.mulRight` for multiplication by `R` as an endomorphism instead of multiplication by
`Rˣ` as an automorphism.
-/



namespace GRWTSK.Algebra.UniversalAlgebra.MulLeft.Variantb53e623f3124551f997ff45df753f66c09ed80cb518ec88a3870682d525a5c3e

namespace AddAut

variable {R : Type*} [Semiring R]

/-- Left multiplication by a unit of a semiring as an additive automorphism. -/
@[simps! +simpRhs]
def mulLeft : Rˣ →* AddAut R :=
  DistribMulAction.toAddAut _ _

/-- Right multiplication by a unit of a semiring as an additive automorphism. -/
def mulRight (u : Rˣ) : AddAut R :=
  DistribMulAction.toAddAut Rᵐᵒᵖˣ R (Units.opEquiv.symm <| MulOpposite.op u)

@[simp]
theorem mulRight_apply (u : Rˣ) (x : R) : mulRight u x = x * u :=
  rfl

@[simp]
theorem mulRight_symm_apply (u : Rˣ) (x : R) : (mulRight u).symm x = x * u⁻¹ :=
  rfl

end AddAut
