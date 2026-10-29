-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.AntipodeDef.Variant9881c38a33247a37ddae3e8f2faeea64e07d28edb78ef9fa63a260efe18a0c3a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9881c38a33247a37ddae3e8f2faeea64e07d28edb78ef9fa63a260efe18a0c3a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.AntipodeDef.Variant9881c38a33247a37ddae3e8f2faeea64e07d28edb78ef9fa63a260efe18a0c3a","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"9881c38a33247a37ddae3e8f2faeea64e07d28edb78ef9fa63a260efe18a0c3a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/HopfAlgebra/TensorProduct.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Amelia Livingston. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Amelia Livingston, Andrew Yang
-/
import Mathlib.RingTheory.HopfAlgebra.Basic
import Mathlib.RingTheory.Bialgebra.TensorProduct

/-!
# Tensor products of Hopf algebras

We define the Hopf algebra instance on the tensor product of two Hopf algebras.

-/


namespace GRWTSK.Algebra.LinearAlgebra.AntipodeDef.Variant9881c38a33247a37ddae3e8f2faeea64e07d28edb78ef9fa63a260efe18a0c3a

open Coalgebra TensorProduct HopfAlgebra

namespace TensorProduct

variable {R A B : Type*} [CommSemiring R] [Semiring A] [Semiring B] [HopfAlgebra R A]
    [HopfAlgebra R B]

noncomputable
instance : HopfAlgebra R (B ⊗[R] A) where
  antipode := AlgebraTensorModule.map HopfAlgebra.antipode HopfAlgebra.antipode
  mul_antipode_rTensor_comul := by
    ext x y
    convert congr($(mul_antipode_rTensor_comul_apply (R := R) x) ⊗ₜ[R]
      $(mul_antipode_rTensor_comul_apply (R := R) y)) using 1
    · dsimp
      hopf_tensor_induction comul (R := R) x with x₁ x₂
      hopf_tensor_induction comul (R := R) y with y₁ y₂
      simp
    · dsimp [Algebra.TensorProduct.one_def]
      simp [Algebra.algebraMap_eq_smul_one, smul_tmul', mul_smul]
  mul_antipode_lTensor_comul := by
    ext x y
    convert congr($(mul_antipode_lTensor_comul_apply (R := R) x) ⊗ₜ[R]
      $(mul_antipode_lTensor_comul_apply (R := R) y)) using 1
    · dsimp [Algebra.TensorProduct.one_def]
      hopf_tensor_induction comul (R := R) x with x₁ x₂
      hopf_tensor_induction comul (R := R) y with y₁ y₂
      simp
    · dsimp [Algebra.TensorProduct.one_def]
      simp [Algebra.algebraMap_eq_smul_one, smul_tmul', mul_smul]

@[simp]
theorem antipode_def :
    antipode (R := R) (A := B ⊗[R] A) = AlgebraTensorModule.map antipode antipode := rfl

end TensorProduct
