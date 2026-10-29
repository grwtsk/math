-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.NNRat.Variant8c9dc39970a77d936745340238017b8cf5727c11e25fd7b1639c89ce2c2966fd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8c9dc39970a77d936745340238017b8cf5727c11e25fd7b1639c89ce2c2966fd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.NNRat.Variant8c9dc39970a77d936745340238017b8cf5727c11e25fd7b1639c89ce2c2966fd","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"8c9dc39970a77d936745340238017b8cf5727c11e25fd7b1639c89ce2c2966fd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/NNRat/Order.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies, Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies, Bhavik Mehta
-/
import Mathlib.Data.NNRat.Defs
import Mathlib.Algebra.Order.Ring.Rat
import Mathlib.Algebra.Order.Nonneg.Ring

/-!
# Bundled ordered algebra structures on `ℚ≥0`

-/


namespace GRWTSK.Algebra.UniversalAlgebra.NNRat.Variant8c9dc39970a77d936745340238017b8cf5727c11e25fd7b1639c89ce2c2966fd

instance : IsStrictOrderedRing ℚ≥0 := Nonneg.isStrictOrderedRing

-- TODO: `deriving instance OrderedSub for NNRat` doesn't work yet, so we add the instance manually
instance NNRat.instOrderedSub : OrderedSub ℚ≥0 := Nonneg.orderedSub
instance NNRat.instCanonicallyOrderedAdd : CanonicallyOrderedAdd ℚ≥0 := Nonneg.canonicallyOrderedAdd
