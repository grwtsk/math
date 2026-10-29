-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Nat.Variant715b6805a47990be9c0a48d8a18571973f25976742857bca02ba8a128ad20b0e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"715b6805a47990be9c0a48d8a18571973f25976742857bca02ba8a128ad20b0e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Nat.Variant715b6805a47990be9c0a48d8a18571973f25976742857bca02ba8a128ad20b0e","mathematical_subject":"Computation.DataStructures","original_sha256":"715b6805a47990be9c0a48d8a18571973f25976742857bca02ba8a128ad20b0e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Simp/BuiltinSimprocs/List.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Lean.Meta.Tactic.Simp.BuiltinSimprocs.Nat


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Nat.Variant715b6805a47990be9c0a48d8a18571973f25976742857bca02ba8a128ad20b0e

public section

namespace List
open Lean Meta Simp

/-- Simplification procedure for `List.replicate` applied to a `Nat` literal. -/
-- We don't always want `List.replicate_succ` as a `simp` lemma,
-- so we use this `dsimproc` to unfold `List.replicate` applied to literals.
builtin_dsimproc [simp, seval] reduceReplicate (replicate _ _) := fun e => do
  let_expr replicate α n x ← e | return .continue
  let some n ← Nat.fromExpr? n | return .continue
  return .done <| (← mkListLit α (List.replicate n x))

end List
