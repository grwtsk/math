-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Opposite.Variant578ba53ff117f52130d9f2e5a9ea7ffe1873d97ea300c98edf21156bd0694c51","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"578ba53ff117f52130d9f2e5a9ea7ffe1873d97ea300c98edf21156bd0694c51","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Opposite.Variant578ba53ff117f52130d9f2e5a9ea7ffe1873d97ea300c98edf21156bd0694c51","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"578ba53ff117f52130d9f2e5a9ea7ffe1873d97ea300c98edf21156bd0694c51","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Ring/Opposite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Order.Group.Opposite
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Ring.Opposite

/-!
# Ordered ring instances for `MulOpposite`/`AddOpposite`

This files transfers ordered (semi)ring instances from `R` to `Rᵐᵒᵖ` and `Rᵃᵒᵖ`.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.Opposite.Variant578ba53ff117f52130d9f2e5a9ea7ffe1873d97ea300c98edf21156bd0694c51

variable {R : Type*}

namespace MulOpposite

instance [Semiring R] [PartialOrder R] [IsOrderedRing R] : IsOrderedRing Rᵐᵒᵖ where
  zero_le_one := zero_le_one (α := R)
  mul_le_mul_of_nonneg_left _ _ _ := mul_le_mul_of_nonneg_right (α := R)
  mul_le_mul_of_nonneg_right _ _ _ := mul_le_mul_of_nonneg_left (α := R)

end MulOpposite

namespace AddOpposite

instance [Semiring R] [PartialOrder R] [IsOrderedRing R] : IsOrderedRing Rᵃᵒᵖ where
  zero_le_one := zero_le_one (α := R)
  mul_le_mul_of_nonneg_left _ _ _ := mul_le_mul_of_nonneg_left (α := R)
  mul_le_mul_of_nonneg_right _ _ _ := mul_le_mul_of_nonneg_right (α := R)

end AddOpposite
