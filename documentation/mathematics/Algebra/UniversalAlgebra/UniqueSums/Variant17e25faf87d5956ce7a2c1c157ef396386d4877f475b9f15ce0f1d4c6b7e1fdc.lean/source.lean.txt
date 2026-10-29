-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Finsupp.Variant537eea4bf0b1b7116f1a358e7d805b7e810368479ef06139f3f183e05e2ac1b9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"537eea4bf0b1b7116f1a358e7d805b7e810368479ef06139f3f183e05e2ac1b9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Finsupp.Variant537eea4bf0b1b7116f1a358e7d805b7e810368479ef06139f3f183e05e2ac1b9","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"537eea4bf0b1b7116f1a358e7d805b7e810368479ef06139f3f183e05e2ac1b9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/FreeAbelianGroup/UniqueSums.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yaël Dillies, Paul Lezeau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies, Paul Lezeau
-/
import Mathlib.Algebra.FreeAbelianGroup.Finsupp
import Mathlib.Algebra.Group.UniqueProds.Basic

/-!
# Free abelian groups have unique sums
-/


namespace GRWTSK.Algebra.UniversalAlgebra.Finsupp.Variant537eea4bf0b1b7116f1a358e7d805b7e810368479ef06139f3f183e05e2ac1b9

assert_not_exists StarModule

instance {σ : Type*} : TwoUniqueSums (FreeAbelianGroup σ) :=
  (FreeAbelianGroup.equivFinsupp σ).twoUniqueSums_iff.mpr inferInstance
