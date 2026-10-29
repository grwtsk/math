-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PartialEquivBEq.Variant7de8d1d9e6de6ea3ed2780cd5ee6745f76156848f474871bd3cd9d9aae845cfa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7de8d1d9e6de6ea3ed2780cd5ee6745f76156848f474871bd3cd9d9aae845cfa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PartialEquivBEq.Variant7de8d1d9e6de6ea3ed2780cd5ee6745f76156848f474871bd3cd9d9aae845cfa","mathematical_subject":"Foundations.Unclassified","original_sha256":"7de8d1d9e6de6ea3ed2780cd5ee6745f76156848f474871bd3cd9d9aae845cfa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Classes/BEq.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/

/-! ## Boolean equality -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PartialEquivBEq.Variant7de8d1d9e6de6ea3ed2780cd5ee6745f76156848f474871bd3cd9d9aae845cfa

/-- `PartialEquivBEq α` says that the `BEq` implementation is a
partial equivalence relation, that is:
* it is symmetric: `a == b → b == a`
* it is transitive: `a == b → b == c → a == c`.
-/
class PartialEquivBEq (α) [BEq α] : Prop where
  /-- Symmetry for `BEq`. If `a == b` then `b == a`. -/
  symm : (a : α) == b → b == a
  /-- Transitivity for `BEq`. If `a == b` and `b == c` then `a == c`. -/
  trans : (a : α) == b → b == c → a == c

@[simp] theorem beq_eq_false_iff_ne [BEq α] [LawfulBEq α]
    (a b : α) : (a == b) = false ↔ a ≠ b := by
  rw [ne_eq, ← beq_iff_eq a b]
  cases a == b <;> decide
