-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.SetLike.Variant368e88404d91aa9736ba1c0f4a6784b6cfbb166b90e7cab9172074e89d3ddb80","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"368e88404d91aa9736ba1c0f4a6784b6cfbb166b90e7cab9172074e89d3ddb80","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.SetLike.Variant368e88404d91aa9736ba1c0f4a6784b6cfbb166b90e7cab9172074e89d3ddb80","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"368e88404d91aa9736ba1c0f4a6784b6cfbb166b90e7cab9172074e89d3ddb80","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/SetLike/Fintype.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 . All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes
-/
import Mathlib.Data.SetLike.Basic
import Mathlib.Data.Fintype.Powerset

/-!
# Set-like fintype

This file contains a fintype instance for set-like objects such as subgroups. If `SetLike A B`
and `Fintype B` then `Fintype A`.
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SetLike.Variant368e88404d91aa9736ba1c0f4a6784b6cfbb166b90e7cab9172074e89d3ddb80

namespace SetLike

/-- TODO: It should be possible to obtain a computable version of this for most
SetLike objects. If we add those instances, we should remove this one. -/
noncomputable instance (priority := 100) {A B : Type*} [SetLike A B] [Fintype B] : Fintype A :=
  Fintype.ofInjective SetLike.coe SetLike.coe_injective

-- See note [lower instance priority]
instance (priority := 100) {A B : Type*} [SetLike A B] [Finite B] : Finite A :=
  Finite.of_injective SetLike.coe SetLike.coe_injective

end SetLike
