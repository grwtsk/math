-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadSimpResult.Variant01dd0f3201ebf8d33a3aa1b492c74b5921406bcf583b6652306d2aab461ae527","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"01dd0f3201ebf8d33a3aa1b492c74b5921406bcf583b6652306d2aab461ae527","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MonadSimpResult.Variant01dd0f3201ebf8d33a3aa1b492c74b5921406bcf583b6652306d2aab461ae527","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"01dd0f3201ebf8d33a3aa1b492c74b5921406bcf583b6652306d2aab461ae527","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/MonadSimp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Expr

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MonadSimpResult.Variant01dd0f3201ebf8d33a3aa1b492c74b5921406bcf583b6652306d2aab461ae527

public section
namespace Lean.Meta
/-!
Abstract simplifier API
-/

inductive MonadSimp.Result where
  | rfl
  | step (e : Expr) (h : Expr)
  deriving Inhabited

class MonadSimp (m : Type → Type) where
  withNewLemmas (xs : Array Expr) (k : m α) : m α
  dsimp : Expr → m Expr
  simp : Expr → m MonadSimp.Result

end Lean.Meta
