-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.LinearMapToMatrixTranspose.Variant8fb19f64506594003063c2869b18c02ff3ed4167409ca18e1b70094bdb2d4cd7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8fb19f64506594003063c2869b18c02ff3ed4167409ca18e1b70094bdb2d4cd7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.LinearMapToMatrixTranspose.Variant8fb19f64506594003063c2869b18c02ff3ed4167409ca18e1b70094bdb2d4cd7","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"8fb19f64506594003063c2869b18c02ff3ed4167409ca18e1b70094bdb2d4cd7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/Matrix/Dual.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Patrick Massot, Casper Putz, Anne Baanen
-/
import Mathlib.LinearAlgebra.DFinsupp
import Mathlib.LinearAlgebra.Dual.Basis
import Mathlib.LinearAlgebra.Matrix.ToLin

/-!
# Dual space, linear maps and matrices.

This file contains some results on the matrix corresponding to the
transpose of a linear map (in the dual space).

## Tags

matrix, linear_map, transpose, dual
-/



namespace GRWTSK.Algebra.LinearAlgebra.LinearMapToMatrixTranspose.Variant8fb19f64506594003063c2869b18c02ff3ed4167409ca18e1b70094bdb2d4cd7

open Matrix

section Transpose

variable {K V₁ V₂ ι₁ ι₂ : Type*} [Field K] [AddCommGroup V₁] [Module K V₁] [AddCommGroup V₂]
  [Module K V₂] [Fintype ι₁] [Fintype ι₂] [DecidableEq ι₁] [DecidableEq ι₂] {B₁ : Basis ι₁ K V₁}
  {B₂ : Basis ι₂ K V₂}

@[simp]
theorem LinearMap.toMatrix_transpose (u : V₁ →ₗ[K] V₂) :
    LinearMap.toMatrix B₂.dualBasis B₁.dualBasis (Module.Dual.transpose (R := K) u) =
      (LinearMap.toMatrix B₁ B₂ u)ᵀ := by
  ext i j
  simp only [LinearMap.toMatrix_apply, Module.Dual.transpose_apply, B₁.dualBasis_repr,
    B₂.dualBasis_apply, Matrix.transpose_apply, LinearMap.comp_apply]

@[simp]
theorem Matrix.toLin_transpose (M : Matrix ι₁ ι₂ K) : Matrix.toLin B₁.dualBasis B₂.dualBasis Mᵀ =
    Module.Dual.transpose (R := K) (Matrix.toLin B₂ B₁ M) := by
  apply (LinearMap.toMatrix B₁.dualBasis B₂.dualBasis).injective
  rw [LinearMap.toMatrix_toLin, LinearMap.toMatrix_transpose, LinearMap.toMatrix_toLin]

end Transpose
