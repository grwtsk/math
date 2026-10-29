-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssertAfterResult.Variant629851b357421168d88480d6a19ee2c1385e621b067776f9dc8609f064461fd0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"629851b357421168d88480d6a19ee2c1385e621b067776f9dc8609f064461fd0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.AssertAfterResult.Variant629851b357421168d88480d6a19ee2c1385e621b067776f9dc8609f064461fd0","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"629851b357421168d88480d6a19ee2c1385e621b067776f9dc8609f064461fd0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Assert.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Tactic.FVarSubst
public import Lean.Meta.Tactic.Intro
public import Lean.Meta.Tactic.Revert
public import Lean.Elab.InfoTree.Main
public import Lean.Util.ForEachExpr
import Lean.Meta.AppBuilder


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssertAfterResult.Variant629851b357421168d88480d6a19ee2c1385e621b067776f9dc8609f064461fd0

public section

namespace Lean.Meta

/--
  Convert the given goal `Ctx |- target` into `Ctx |- type -> target`.
  It assumes `val` has type `type` -/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssertAfterResult.Variant629851b357421168d88480d6a19ee2c1385e621b067776f9dc8609f064461fd0.Lean.MVarId.assert (mvarId : MVarId) (name : Name) (type : Expr) (val : Expr) : MetaM MVarId :=
  mvarId.withContext do
    mvarId.checkNotAssigned `assert
    let tag    ← mvarId.getTag
    let target ← mvarId.getType
    let newType := Lean.mkForall name BinderInfo.default type target
    let newMVar ← mkFreshExprSyntheticOpaqueMVar newType tag
    mvarId.assign (mkApp newMVar val)
    return newMVar.mvarId!

/-- Add the hypothesis `h : t`, given `v : t`, and return the new `FVarId`. -/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssertAfterResult.Variant629851b357421168d88480d6a19ee2c1385e621b067776f9dc8609f064461fd0.Lean.MVarId.note (g : MVarId) (h : Name) (v : Expr) (t? : Option Expr := .none) :
    MetaM (FVarId × MVarId) := do
  (← g.assert h (← match t? with | some t => pure t | none => inferType v) v).intro1P

/--
  Convert the given goal `Ctx |- target` into `Ctx |- let name : type := val; target`.
  It assumes `val` has type `type` -/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssertAfterResult.Variant629851b357421168d88480d6a19ee2c1385e621b067776f9dc8609f064461fd0.Lean.MVarId.define (mvarId : MVarId) (name : Name) (type : Expr) (val : Expr) : MetaM MVarId := do
  mvarId.withContext do
    mvarId.checkNotAssigned `define
    let tag    ← mvarId.getTag
    let target ← mvarId.getType
    let newType := Lean.mkLet name type val target
    let newMVar ← mkFreshExprSyntheticOpaqueMVar newType tag
    mvarId.assign newMVar
    return newMVar.mvarId!

/--
  Convert the given goal `Ctx |- target` into `Ctx |- (hName : type) -> hName = val -> target`.
  It assumes `val` has type `type` -/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssertAfterResult.Variant629851b357421168d88480d6a19ee2c1385e621b067776f9dc8609f064461fd0.Lean.MVarId.assertExt (mvarId : MVarId) (name : Name) (type : Expr) (val : Expr) (hName : Name := `h) : MetaM MVarId := do
  mvarId.withContext do
    mvarId.checkNotAssigned `assert
    let tag    ← mvarId.getTag
    let target ← mvarId.getType
    let u ← getLevel type
    let hType := mkApp3 (mkConst `Eq [u]) type (mkBVar 0) val
    let newType := Lean.mkForall name BinderInfo.default type $ Lean.mkForall hName BinderInfo.default hType target
    let newMVar ← mkFreshExprSyntheticOpaqueMVar newType tag
    let rflPrf ← mkEqRefl val
    mvarId.assign (mkApp2 newMVar val rflPrf)
    return newMVar.mvarId!

structure AssertAfterResult where
  fvarId : FVarId
  mvarId : MVarId
  subst  : FVarSubst

/--
  Convert the given goal `Ctx |- target` into a goal containing `(userName : type)` after the local declaration with if `fvarId`.
  It assumes `val` has type `type`, and that `type` is well-formed after `fvarId`.
  Note that `val` does not need to be well-formed after `fvarId`. That is, it may contain variables that are defined after `fvarId`. -/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssertAfterResult.Variant629851b357421168d88480d6a19ee2c1385e621b067776f9dc8609f064461fd0.Lean.MVarId.assertAfter (mvarId : MVarId) (fvarId : FVarId) (userName : Name) (type : Expr) (val : Expr) : MetaM AssertAfterResult := do
  mvarId.checkNotAssigned `assertAfter
  let (fvarIds, mvarId) ← mvarId.revertAfter fvarId
  let mvarId ← mvarId.assert userName type val
  let (fvarIdNew, mvarId) ← mvarId.intro1P
  let (fvarIdsNew, mvarId) ← mvarId.introNP fvarIds.size
  let lctx := (← mvarId.getDecl).lctx
  let mut subst := {}
  for f in fvarIds, fNew in fvarIdsNew do
    subst := subst.insert f (mkFVar fNew)
    Elab.pushInfoLeaf (.ofFVarAliasInfo { id := fNew, baseId := f, userName := (lctx.get! fNew).userName })
  return { fvarId := fvarIdNew, mvarId, subst }

/--
Like `Lean.MVarId.assertAfter`, but asserts the new hypothesis at the earliest point after `fvarId`
where `type` is well-formed. Note that `val` may depend on any variables in the local context.

The expression `type` may contain metavariables, and this procedure ensures they are well-formed
at the point in the local context where the hypothesis is asserted.
The metavariables in `type` are instantiated to avoid false dependencies.
-/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssertAfterResult.Variant629851b357421168d88480d6a19ee2c1385e621b067776f9dc8609f064461fd0.Lean.MVarId.assertAfter' (mvarId : MVarId) (fvarId : FVarId) (userName : Name) (type : Expr) (val : Expr) :
    MetaM AssertAfterResult :=
  mvarId.withContext do
    -- Instantiate metavariables, which possibly allows the asserted hypothesis to appear earlier.
    -- Assigned metavariables can create false dependences on variables.
    let type ← instantiateMVars type
    -- `type` may contain variables that occur after `fvarId`.
    -- Thus, we use the auxiliary function `findMaxFVar` to ensure `type` is well-formed
    -- at the position we are inserting it.
    let (_, ldecl') ← findMaxFVar type |>.run (← fvarId.getDecl)
    mvarId.assertAfter ldecl'.fvarId userName type val
where
  /-- Finds the `LocalDecl` for the FVar in `e` with the highest index. -/
  findMaxFVar (e : Expr) : StateRefT LocalDecl MetaM Unit :=
    e.forEach' fun e => do
      if let Expr.fvar fvarId' := e then
        visitLocalDecl (← fvarId'.getDecl)
        return false
      else if let Expr.mvar mvarId' := e then
        -- Metavariables need to appear after all local variables appearing in their own local contexts
        let lctx' := (← mvarId'.getDecl).lctx
        lctx'.forM fun ldecl' => do
          -- We need the corresponding `LocalDecl` from the current context, to get the correct `index`
          visitLocalDecl (← ldecl'.fvarId.getDecl)
        return false
      else
        return e.hasFVar || e.hasExprMVar
  visitLocalDecl (ldecl' : LocalDecl) : StateRefT LocalDecl MetaM Unit :=
    modify fun ldecl => if ldecl'.index > ldecl.index then ldecl' else ldecl

structure Hypothesis where
  userName : Name
  type     : Expr
  value    : Expr
  /-- The hypothesis' `BinderInfo` -/
  binderInfo : BinderInfo := .default
  /-- The hypothesis' `LocalDeclKind` -/
  kind : LocalDeclKind := .default

/--
  Convert the given goal `Ctx |- target` into `Ctx, (hs[0].userName : hs[0].type) ... |-target`.
  It assumes `hs[i].val` has type `hs[i].type`. -/
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssertAfterResult.Variant629851b357421168d88480d6a19ee2c1385e621b067776f9dc8609f064461fd0.Lean.MVarId.assertHypotheses (mvarId : MVarId) (hs : Array Hypothesis) : MetaM (Array FVarId × MVarId) := do
  if hs.isEmpty then
    return (#[], mvarId)
  else mvarId.withContext do
    mvarId.checkNotAssigned `assertHypotheses
    let tag    ← mvarId.getTag
    let target ← mvarId.getType
    let targetNew := hs.foldr (init := target) fun h targetNew =>
      .forallE h.userName h.type targetNew h.binderInfo
    let mvarNew ← mkFreshExprSyntheticOpaqueMVar targetNew tag
    let val := hs.foldl (init := mvarNew) fun val h => .app val h.value
    mvarId.assign val
    let (fvarIds, mvarId) ← mvarNew.mvarId!.introNP hs.size
    mvarId.modifyLCtx fun lctx => Id.run do
      let mut lctx := lctx
      for h : i in *...hs.size do
        let h := hs[i]
        if h.kind != .default then
          lctx := lctx.setKind fvarIds[i]! h.kind
      pure lctx
    return (fvarIds, mvarId)

end Lean.Meta
