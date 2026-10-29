-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.Group.Variant666cc970273ac4c61a442c83fa97610007b109ac286ea0ac3bad7c6bf39ed8eb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"666cc970273ac4c61a442c83fa97610007b109ac286ea0ac3bad7c6bf39ed8eb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.Group.Variant666cc970273ac4c61a442c83fa97610007b109ac286ea0ac3bad7c6bf39ed8eb","mathematical_subject":"Algebra.Groups","original_sha256":"666cc970273ac4c61a442c83fa97610007b109ac286ea0ac3bad7c6bf39ed8eb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/PEmptyInstances.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Julian Kuelshammer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Julian Kuelshammer
-/
import Mathlib.Algebra.Group.Defs
import Mathlib.Tactic.ToAdditive

/-!
# Instances on pempty

This file collects facts about algebraic structures on the (universe-polymorphic) empty type, e.g.
that it is a semigroup.
-/



namespace GRWTSK.Algebra.GroupTheory.Group.Variant666cc970273ac4c61a442c83fa97610007b109ac286ea0ac3bad7c6bf39ed8eb

universe u

@[to_additive]
instance SemigroupPEmpty : Semigroup PEmpty.{u + 1} where
  mul x _ := by cases x
  mul_assoc x y z := by cases x
