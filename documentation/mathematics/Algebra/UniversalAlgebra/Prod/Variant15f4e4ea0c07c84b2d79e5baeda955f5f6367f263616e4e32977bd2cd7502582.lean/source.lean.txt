-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.NoZeroSMulDivisors.Variant845f84668972ea8f04040e35f3f14916be31fc66d07e690ad4895dc99fdb6173","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"845f84668972ea8f04040e35f3f14916be31fc66d07e690ad4895dc99fdb6173","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.NoZeroSMulDivisors.Variant845f84668972ea8f04040e35f3f14916be31fc66d07e690ad4895dc99fdb6173","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"845f84668972ea8f04040e35f3f14916be31fc66d07e690ad4895dc99fdb6173","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/NoZeroSMulDivisors/Prod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Simon Hudon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen
-/
import Mathlib.Algebra.NoZeroSMulDivisors.Defs
import Mathlib.Algebra.Notation.Prod

/-!
# Prod instances for NoZeroSMulDivisors

This file defines a NoZeroSMulDivisors instance for the binary product of actions.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.NoZeroSMulDivisors.Variant845f84668972ea8f04040e35f3f14916be31fc66d07e690ad4895dc99fdb6173

variable {R M N : Type*}

namespace Prod

instance noZeroSMulDivisors [Zero R] [Zero M] [Zero N]
    [SMulWithZero R M] [SMulWithZero R N] [NoZeroSMulDivisors R M] [NoZeroSMulDivisors R N] :
    NoZeroSMulDivisors R (M × N) where
  eq_zero_or_eq_zero_of_smul_eq_zero {c xy} h := by simpa [Prod.ext_iff, or_and_left] using h

end Prod
