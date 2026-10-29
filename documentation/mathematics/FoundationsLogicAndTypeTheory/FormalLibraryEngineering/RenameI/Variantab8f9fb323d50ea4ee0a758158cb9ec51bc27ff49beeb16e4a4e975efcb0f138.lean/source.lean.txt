-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MRenameI.Variantbc0f3f4e70cd9fa38b703649bca85afb267f55c9bae17ca7f93ecfc5b2098afb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bc0f3f4e70cd9fa38b703649bca85afb267f55c9bae17ca7f93ecfc5b2098afb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MRenameI.Variantbc0f3f4e70cd9fa38b703649bca85afb267f55c9bae17ca7f93ecfc5b2098afb","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"bc0f3f4e70cd9fa38b703649bca85afb267f55c9bae17ca7f93ecfc5b2098afb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Do/ProofMode/RenameI.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Lars König. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Lars König, Mario Carneiro, Sebastian Graf
-/
module

prelude
public import Lean.Elab.Tactic.Do.ProofMode.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MRenameI.Variantbc0f3f4e70cd9fa38b703649bca85afb267f55c9bae17ca7f93ecfc5b2098afb

namespace Lean.Elab.Tactic.Do.ProofMode
open Std.Do SPred.Tactic
open Lean Elab Tactic Meta

partial def mRenameI [Monad m] [MonadControlT MetaM m] [MonadLiftT MetaM m] (goal : MGoal)
    (idents : Array (TSyntax ``binderIdent)) (k : MGoal → m (α × Expr)) : m (α × Expr) := do
  let goal ← goal.renameInaccessibleHyps idents
  k goal

@[builtin_tactic Lean.Parser.Tactic.mrenameI]
def elabMRenameI : Tactic
  | `(tactic| mrename_i $idents:binderIdent*) => do
    let (mvar, goal) ← mStartMainGoal
    mvar.withContext do
    let goals ← IO.mkRef []
    mvar.assign (← Prod.snd <$> mRenameI goal idents fun newGoal => do
      let m ← mkFreshExprSyntheticOpaqueMVar newGoal.toExpr
      goals.modify (m.mvarId! :: ·)
      return ((), m))
    replaceMainGoal (← goals.get)
  | _ => throwUnsupportedSyntax
