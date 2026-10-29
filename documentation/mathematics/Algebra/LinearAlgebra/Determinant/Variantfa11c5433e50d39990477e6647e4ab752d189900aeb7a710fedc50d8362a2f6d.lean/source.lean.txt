-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.DetConjAe.Variant85248337ef68b33201dc757c19cecc17657cdc0097ab15508b8b0a55ebaa2424","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"85248337ef68b33201dc757c19cecc17657cdc0097ab15508b8b0a55ebaa2424","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.DetConjAe.Variant85248337ef68b33201dc757c19cecc17657cdc0097ab15508b8b0a55ebaa2424","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"85248337ef68b33201dc757c19cecc17657cdc0097ab15508b8b0a55ebaa2424","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Complex/Determinant.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Joseph Myers. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joseph Myers
-/
import Mathlib.Data.Complex.Module
import Mathlib.LinearAlgebra.Determinant

/-!
# Determinants of maps in the complex numbers as a vector space over `ℝ`

This file provides results about the determinants of maps in the complex numbers as a vector
space over `ℝ`.

-/



namespace GRWTSK.Algebra.LinearAlgebra.DetConjAe.Variant85248337ef68b33201dc757c19cecc17657cdc0097ab15508b8b0a55ebaa2424

namespace Complex

/-- The determinant of `conjAe`, as a linear map. -/
@[simp]
theorem det_conjAe : LinearMap.det conjAe.toLinearMap = -1 := by
  rw [← LinearMap.det_toMatrix basisOneI, toMatrix_conjAe, Matrix.det_fin_two_of]
  simp

/-- The determinant of `conjAe`, as a linear equiv. -/
@[simp]
theorem linearEquiv_det_conjAe : LinearEquiv.det conjAe.toLinearEquiv = -1 := by
  rw [← Units.eq_iff, LinearEquiv.coe_det, AlgEquiv.toLinearEquiv_toLinearMap, det_conjAe,
    Units.coe_neg_one]

end Complex
