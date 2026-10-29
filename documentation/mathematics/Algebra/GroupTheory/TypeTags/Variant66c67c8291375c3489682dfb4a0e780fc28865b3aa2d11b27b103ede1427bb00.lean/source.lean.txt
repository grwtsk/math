-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.ToAddPow.Variant230527047583c7accdbe168718b3a0c28ca2238f01f29bbe4af7366606650211","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"230527047583c7accdbe168718b3a0c28ca2238f01f29bbe4af7366606650211","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.ToAddPow.Variant230527047583c7accdbe168718b3a0c28ca2238f01f29bbe4af7366606650211","mathematical_subject":"Algebra.Groups","original_sha256":"230527047583c7accdbe168718b3a0c28ca2238f01f29bbe4af7366606650211","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Group/Int/TypeTags.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad
-/
import Mathlib.Algebra.Group.Int.Defs
import Mathlib.Algebra.Group.TypeTags.Basic

/-!
# Lemmas about `Multiplicative ℤ`.
-/



namespace GRWTSK.Algebra.GroupTheory.ToAddPow.Variant230527047583c7accdbe168718b3a0c28ca2238f01f29bbe4af7366606650211

open Nat

namespace Int

section Multiplicative

open Multiplicative

lemma toAdd_pow (a : Multiplicative ℤ) (b : ℕ) : (a ^ b).toAdd = a.toAdd * b := mul_comm _ _

lemma toAdd_zpow (a : Multiplicative ℤ) (b : ℤ) : (a ^ b).toAdd = a.toAdd * b := mul_comm _ _

@[simp] lemma ofAdd_mul (a b : ℤ) : ofAdd (a * b) = ofAdd a ^ b := (toAdd_zpow ..).symm

end Multiplicative

end Int
