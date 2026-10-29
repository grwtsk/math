-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.GeneralLinearGroup.Variant6cdb9015dd7c6d64a18ad11622bab0d298a614024b0a5f4610855e082c2d5340","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6cdb9015dd7c6d64a18ad11622bab0d298a614024b0a5f4610855e082c2d5340","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.GeneralLinearGroup.Variant6cdb9015dd7c6d64a18ad11622bab0d298a614024b0a5f4610855e082c2d5340","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"6cdb9015dd7c6d64a18ad11622bab0d298a614024b0a5f4610855e082c2d5340","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/GeneralLinearGroup.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.Algebra.Module.Equiv.Basic

/-!
# The general linear group of linear maps

The general linear group is defined to be the group of invertible linear maps from `M` to itself.

See also `Matrix.GeneralLinearGroup`

## Main definitions

* `LinearMap.GeneralLinearGroup`

-/



namespace GRWTSK.Algebra.LinearAlgebra.GeneralLinearGroup.Variant6cdb9015dd7c6d64a18ad11622bab0d298a614024b0a5f4610855e082c2d5340

variable (R M : Type*)

namespace LinearMap

variable [Semiring R] [AddCommMonoid M] [Module R M]

/-- The group of invertible linear maps from `M` to itself -/
abbrev GeneralLinearGroup :=
  (M →ₗ[R] M)ˣ

namespace GeneralLinearGroup

variable {R M}

/-- An invertible linear map `f` determines an equivalence from `M` to itself. -/
def toLinearEquiv (f : GeneralLinearGroup R M) : M ≃ₗ[R] M :=
  { f.val with
    invFun := f.inv.toFun
    left_inv := fun m ↦ show (f.inv * f.val) m = m by rw [f.inv_val]; simp
    right_inv := fun m ↦ show (f.val * f.inv) m = m by rw [f.val_inv]; simp }

/-- An equivalence from `M` to itself determines an invertible linear map. -/
def ofLinearEquiv (f : M ≃ₗ[R] M) : GeneralLinearGroup R M where
  val := f
  inv := (f.symm : M →ₗ[R] M)
  val_inv := LinearMap.ext fun _ ↦ f.apply_symm_apply _
  inv_val := LinearMap.ext fun _ ↦ f.symm_apply_apply _

variable (R M)

/-- The general linear group on `R` and `M` is multiplicatively equivalent to the type of linear
equivalences between `M` and itself. -/
def generalLinearEquiv : GeneralLinearGroup R M ≃* M ≃ₗ[R] M where
  toFun := toLinearEquiv
  invFun := ofLinearEquiv
  left_inv f := by ext; rfl
  right_inv f := by ext; rfl
  map_mul' x y := by ext; rfl

@[simp]
theorem generalLinearEquiv_to_linearMap (f : GeneralLinearGroup R M) :
    (generalLinearEquiv R M f : M →ₗ[R] M) = f := by ext; rfl

@[simp]
theorem coeFn_generalLinearEquiv (f : GeneralLinearGroup R M) :
    (generalLinearEquiv R M f) = (f : M → M) := rfl

end GeneralLinearGroup

end LinearMap
