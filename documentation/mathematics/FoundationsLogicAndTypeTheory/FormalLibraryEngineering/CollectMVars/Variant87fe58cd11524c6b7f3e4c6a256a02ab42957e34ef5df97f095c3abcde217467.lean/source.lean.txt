-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CollectMVars.Variant8a75e234cc9e6e1aa7b26684ec39ad4de49fbfa3ea1957146322a52d841c988e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8a75e234cc9e6e1aa7b26684ec39ad4de49fbfa3ea1957146322a52d841c988e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CollectMVars.Variant8a75e234cc9e6e1aa7b26684ec39ad4de49fbfa3ea1957146322a52d841c988e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"8a75e234cc9e6e1aa7b26684ec39ad4de49fbfa3ea1957146322a52d841c988e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/CollectMVars.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Util.CollectMVars
public import Lean.Meta.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CollectMVars.Variant8a75e234cc9e6e1aa7b26684ec39ad4de49fbfa3ea1957146322a52d841c988e

public section

namespace Lean.Meta

/--
  Collect unassigned metavariables occurring in the given expression.

  Remark: if `e` contains `?m` and there is a `t` assigned to `?m`, we
  collect unassigned metavariables occurring in `t`.

  Remark: if `e` contains `?m` and `?m` is delayed assigned to some term `t`,
  we collect `?m` and unassigned metavariables occurring in `t`.
  We collect `?m` because it has not been assigned yet. -/
partial def collectMVars (e : Expr) : StateRefT CollectMVars.State MetaM Unit := do
  let e ← instantiateMVars e
  let s ← get
  let resultSavedSize := s.result.size
  let s := e.collectMVars s
  set s
  for mvarId in s.result[resultSavedSize...*] do
    match (← getDelayedMVarAssignment? mvarId) with
    | none   => pure ()
    | some d => collectMVars (mkMVar d.mvarIdPending)

/-- Return metavariables occurring in the given expression. See `collectMVars` -/
def getMVars (e : Expr) : MetaM (Array MVarId) := do
  let (_, s) ← (collectMVars e).run {}
  pure s.result

/-- Similar to `getMVars`, but removes delayed assignments. -/
def getMVarsNoDelayed (e : Expr) : MetaM (Array MVarId) := do
  let mvarIds ← getMVars e
  mvarIds.filterM fun mvarId => not <$> mvarId.isDelayedAssigned

def collectMVarsAtDecl (d : Declaration) : StateRefT CollectMVars.State MetaM Unit :=
  d.forExprM collectMVars

def getMVarsAtDecl (d : Declaration) : MetaM (Array MVarId) := do
  let (_, s) ← (collectMVarsAtDecl d).run {}
  pure s.result

end Lean.Meta

open Lean Meta

mutual

/-- Auxiliary definition for `getMVarDependencies`. -/
private partial def addMVars (e : Expr) (includeDelayed := false) : StateRefT (Std.HashSet MVarId) MetaM Unit := do
  let mvars ← getMVars e
  let mut s ← get
  set ({} : Std.HashSet MVarId) -- Ensure that `s` is not shared.
  for mvarId in mvars do
    if ← pure includeDelayed <||> notM (mvarId.isDelayedAssigned) then
      s := s.insert mvarId
  set s
  mvars.forM go

/-- Auxiliary definition for `getMVarDependencies`. -/
private partial def go (mvarId : MVarId) (includeDelayed := false) : StateRefT (Std.HashSet MVarId) MetaM Unit :=
  withIncRecDepth do
    let mdecl ← mvarId.getDecl
    addMVars mdecl.type includeDelayed
    for ldecl in mdecl.lctx do
      addMVars ldecl.type includeDelayed
      if let (some val) := ldecl.value? then
        addMVars val includeDelayed
    if let (some ass) ← getDelayedMVarAssignment? mvarId then
      let pendingMVarId := ass.mvarIdPending
      if ← notM pendingMVarId.isAssignedOrDelayedAssigned then
        modify (·.insert pendingMVarId)
      go pendingMVarId includeDelayed

end

/--
Collect the metavariables which `mvarId` depends on. These are the metavariables
which appear in the type and local context of `mvarId`, as well as the
metavariables which *those* metavariables depend on, etc.
-/
def Lean.MVarId.getMVarDependencies (mvarId : MVarId) (includeDelayed := false) :
    MetaM (Std.HashSet MVarId) :=
  (·.snd) <$> (go mvarId includeDelayed).run {}

/-- Collect the metavariables appearing in the expression `e`,
including metavariables in the type or local context of any such metavariables, etc. -/
def Lean.Expr.getMVarDependencies (e : Expr) (includeDelayed := false) : MetaM (Std.HashSet MVarId) := do
  (·.snd) <$> (addMVars e includeDelayed).run {}
