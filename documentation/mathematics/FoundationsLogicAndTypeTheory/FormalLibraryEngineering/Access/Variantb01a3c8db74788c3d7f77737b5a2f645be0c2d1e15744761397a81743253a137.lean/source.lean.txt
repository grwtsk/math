-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AtIdxSlow.Variantcb4d2344e610ffb77a9b4b44751a9a500d5038b331f5c3053c9446331e7b9fe9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cb4d2344e610ffb77a9b4b44751a9a500d5038b331f5c3053c9446331e7b9fe9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.AtIdxSlow.Variantcb4d2344e610ffb77a9b4b44751a9a500d5038b331f5c3053c9446331e7b9fe9","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"cb4d2344e610ffb77a9b4b44751a9a500d5038b331f5c3053c9446331e7b9fe9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Iterators/Lemmas/Consumers/Access.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Consumers.Access


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AtIdxSlow.Variantcb4d2344e610ffb77a9b4b44751a9a500d5038b331f5c3053c9446331e7b9fe9

namespace Std.Iter
open Std.Iterators

public theorem atIdxSlow?_eq_match [Iterator α Id β] [Productive α Id]
    {n : Nat} {it : Iter (α := α) β} :
    it.atIdxSlow? n =
      (match it.step.val with
      | .yield it' out =>
        match n with
        | 0 => some out
        | n + 1 => it'.atIdxSlow? n
      | .skip it' => it'.atIdxSlow? n
      | .done => none) := by
  induction n, it using Iter.atIdxSlow?.induct_unfolding <;> simp_all

end Std.Iter
