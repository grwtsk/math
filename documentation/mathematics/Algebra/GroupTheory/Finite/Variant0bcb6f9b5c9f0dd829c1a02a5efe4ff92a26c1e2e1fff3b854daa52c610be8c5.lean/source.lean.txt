-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.FiniteSmulSet.Variant3e8adb2d5bb33a7b6f2fd3bff6379f98f46f0ff92984689fc6105826a31f79f0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3e8adb2d5bb33a7b6f2fd3bff6379f98f46f0ff92984689fc6105826a31f79f0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.FiniteSmulSet.Variant3e8adb2d5bb33a7b6f2fd3bff6379f98f46f0ff92984689fc6105826a31f79f0","mathematical_subject":"Algebra.Groups","original_sha256":"3e8adb2d5bb33a7b6f2fd3bff6379f98f46f0ff92984689fc6105826a31f79f0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Group/Action/Pointwise/Set/Finite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Group.Action.Basic
import Mathlib.Algebra.Group.Pointwise.Set.Scalar
import Mathlib.Data.Set.Finite.Basic

/-! # Finiteness lemmas for pointwise operations on sets -/


namespace GRWTSK.Algebra.GroupTheory.FiniteSmulSet.Variant3e8adb2d5bb33a7b6f2fd3bff6379f98f46f0ff92984689fc6105826a31f79f0

open scoped Pointwise

namespace Set
variable {G α : Type*} [Group G] [MulAction G α] {a : G} {s : Set α}

@[to_additive (attr := simp)]
lemma finite_smul_set : (a • s).Finite ↔ s.Finite := finite_image_iff (MulAction.injective _).injOn

@[to_additive (attr := simp)]
lemma infinite_smul_set : (a • s).Infinite ↔ s.Infinite :=
  infinite_image_iff (MulAction.injective _).injOn

@[to_additive] alias ⟨Finite.of_smul_set, _⟩ := finite_smul_set
@[to_additive] alias ⟨_, Infinite.smul_set⟩ := infinite_smul_set

end Set
