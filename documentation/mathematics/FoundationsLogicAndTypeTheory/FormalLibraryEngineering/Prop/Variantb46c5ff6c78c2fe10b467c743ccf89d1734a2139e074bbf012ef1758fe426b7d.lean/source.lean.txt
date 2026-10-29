-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpLemmas.Variant34a0cf27afbe15b48f223b27b8b121235f144eb254e5c2b2b0b305ebf4f70f76","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"34a0cf27afbe15b48f223b27b8b121235f144eb254e5c2b2b0b305ebf4f70f76","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.SimpLemmas.Variant34a0cf27afbe15b48f223b27b8b121235f144eb254e5c2b2b0b305ebf4f70f76","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"34a0cf27afbe15b48f223b27b8b121235f144eb254e5c2b2b0b305ebf4f70f76","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Normalize/Prop.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Init.SimpLemmas


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpLemmas.Variant34a0cf27afbe15b48f223b27b8b121235f144eb254e5c2b2b0b305ebf4f70f76

@[expose] public section

/-!
This module contains the `Prop` simplifying part of the `bv_normalize` simp set.
-/

namespace Std.Tactic.BVDecide
namespace Frontend.Normalize

attribute [bv_normalize] and_true
attribute [bv_normalize] true_and
attribute [bv_normalize] and_false
attribute [bv_normalize] false_and
attribute [bv_normalize] or_true
attribute [bv_normalize] true_or
attribute [bv_normalize] or_false
attribute [bv_normalize] false_or
attribute [bv_normalize] iff_true
attribute [bv_normalize] true_iff
attribute [bv_normalize] iff_false
attribute [bv_normalize] false_iff
attribute [bv_normalize] false_implies
attribute [bv_normalize] imp_false
attribute [bv_normalize] implies_true
attribute [bv_normalize] true_implies
attribute [bv_normalize] not_true
attribute [bv_normalize] not_false_iff
attribute [bv_normalize] eq_iff_iff

end Frontend.Normalize
end Std.Tactic.BVDecide
