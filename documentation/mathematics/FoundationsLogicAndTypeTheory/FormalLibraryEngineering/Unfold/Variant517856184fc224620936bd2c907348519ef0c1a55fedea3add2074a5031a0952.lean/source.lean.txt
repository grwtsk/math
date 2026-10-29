-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnfoldLocalDecl.Variant123f72be16c6285a47ce89b66e31855882de10cc778399abcf83332a42a43b03","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"123f72be16c6285a47ce89b66e31855882de10cc778399abcf83332a42a43b03","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.UnfoldLocalDecl.Variant123f72be16c6285a47ce89b66e31855882de10cc778399abcf83332a42a43b03","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"123f72be16c6285a47ce89b66e31855882de10cc778399abcf83332a42a43b03","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Unfold.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Tactic.Unfold
public import Lean.Elab.Tactic.Location


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnfoldLocalDecl.Variant123f72be16c6285a47ce89b66e31855882de10cc778399abcf83332a42a43b03

public section

namespace Lean.Elab.Tactic
open Meta

def unfoldLocalDecl (declName : Name) (fvarId : FVarId) : TacticM Unit := do
  replaceMainGoal [← Meta.unfoldLocalDecl (← getMainGoal) fvarId declName]

def unfoldTarget (declName : Name) : TacticM Unit := do
  replaceMainGoal [← Meta.unfoldTarget (← getMainGoal) declName]

def zetaDeltaLocalDecl (declFVarId : FVarId) (fvarId : FVarId) : TacticM Unit := do
  replaceMainGoal [← Meta.zetaDeltaLocalDecl (← getMainGoal) fvarId declFVarId]

def zetaDeltaTarget (declFVarId : FVarId) : TacticM Unit := do
  replaceMainGoal [← Meta.zetaDeltaTarget (← getMainGoal) declFVarId]

/-- "unfold " ident+ (location)? -/
@[builtin_tactic Lean.Parser.Tactic.unfold] def evalUnfold : Tactic := fun stx => do
  let loc := expandOptLocation stx[2]
  for declNameId in stx[1].getArgs do
    go declNameId loc
where
  go (declNameId : Syntax) (loc : Location) : TacticM Unit := withMainContext <| withRef declNameId do
    let e ← withoutRecover <| elabTermForApply declNameId (mayPostpone := false)
    match e with
    | .const declName _ =>
      withLocation loc (unfoldLocalDecl declName) (unfoldTarget declName) (throwTacticEx `unfold · m!"did not unfold '{declName}'")
    | .fvar declFVarId =>
      unless ← declFVarId.isLetVar do
        throwError "Tactic `unfold` failed: Local variable `{Expr.fvar declFVarId}` has no definition"
      withLocation loc (zetaDeltaLocalDecl declFVarId) (zetaDeltaTarget declFVarId) (throwTacticEx `unfold · m!"did not unfold '{e}'")
    | _ => throwTacticEx `unfold (← getMainGoal) m!"expression {e} is not a global or local constant"

end Lean.Elab.Tactic
