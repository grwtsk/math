-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.LinearMapDetZeroPrimePrime.Variant62b2065ab767beb3b6fdc13a59948ee578436e1ea54a5eb6a7bac31d8baf2c98","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"62b2065ab767beb3b6fdc13a59948ee578436e1ea54a5eb6a7bac31d8baf2c98","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.LinearMapDetZeroPrimePrime.Variant62b2065ab767beb3b6fdc13a59948ee578436e1ea54a5eb6a7bac31d8baf2c98","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"62b2065ab767beb3b6fdc13a59948ee578436e1ea54a5eb6a7bac31d8baf2c98","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/FreeModule/Determinant.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Anne Baanen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen, Alex J. Best
-/
import Mathlib.LinearAlgebra.Determinant
import Mathlib.LinearAlgebra.FreeModule.Finite.Basic

/-!
# Determinants in free (finite) modules

Quite a lot of our results on determinants (that you might know in vector spaces) will work for all
free (finite) modules over any commutative ring.

## Main results

* `LinearMap.det_zero''`: The determinant of the constant zero map is zero, in a finite free
nontrivial module.
-/



namespace GRWTSK.Algebra.LinearAlgebra.LinearMapDetZeroPrimePrime.Variant62b2065ab767beb3b6fdc13a59948ee578436e1ea54a5eb6a7bac31d8baf2c98

@[simp high]
theorem LinearMap.det_zero'' {R M : Type*} [CommRing R] [AddCommGroup M] [Module R M]
    [Module.Free R M] [Module.Finite R M] [Nontrivial M] : LinearMap.det (0 : M →ₗ[R] M) = 0 := by
  letI : Nonempty (Module.Free.ChooseBasisIndex R M) := (Module.Free.chooseBasis R M).index_nonempty
  nontriviality R
  exact LinearMap.det_zero' (Module.Free.chooseBasis R M)
