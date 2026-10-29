-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpGoalResult.Variant1ab735643c6be528f6e110bfffc9d7456d4ba63e37ac05bede26204d940113c6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1ab735643c6be528f6e110bfffc9d7456d4ba63e37ac05bede26204d940113c6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SimpGoalResult.Variant1ab735643c6be528f6e110bfffc9d7456d4ba63e37ac05bede26204d940113c6","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1ab735643c6be528f6e110bfffc9d7456d4ba63e37ac05bede26204d940113c6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Sym/Simp/Goal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.Simp.SimpM
import Lean.Meta.Tactic.Util
import Lean.Meta.Sym.InferType

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpGoalResult.Variant1ab735643c6be528f6e110bfffc9d7456d4ba63e37ac05bede26204d940113c6

namespace Lean.Meta.Sym
/-!
# Goal simplification

Applies `Sym.simp` to a goal's target type, producing a simplified goal or closing it if
the result is `True`.
-/

/-- Result of simplifying a goal with `Sym.simp`. -/
public inductive SimpGoalResult where
  /-- No simplification was possible. -/
  | noProgress
  /-- The goal was closed (simplified to `True`). -/
  | closed
  /-- The goal was simplified to a new goal. -/
  | goal (mvarId : MVarId)

/--
Converts a `SimpGoalResult` to an optional goal.
Returns `none` if closed, `some mvarId` if simplified, or throws an error if no progress.
-/
public def SimpGoalResult.toOption : SimpGoalResult → CoreM (Option MVarId)
  | .noProgress => throwError "`Sym.simp` made no progress "
  | .closed => return none
  | .goal mvarId => return some mvarId

public def SimpGoalResult.ignoreNoProgress : SimpGoalResult → MVarId → SimpGoalResult
  | .noProgress, mvarId => .goal mvarId
  | r, _ => r

/--
Converts a `Simp.Result` value into `SimpGoalResult`.
-/
public def Simp.Result.toSimpGoalResult (result : Simp.Result) (mvarId : MVarId) : SymM SimpGoalResult := do
  let decl ← mvarId.getDecl
  match result with
  | .rfl _ _ => return .noProgress
  | .step target' h _ _ =>
    let mvarNew ← mkFreshExprSyntheticOpaqueMVar target' decl.userName
    let u ← getLevel decl.type
    let h := mkApp4 (mkConst ``Eq.mpr [u]) decl.type target' h mvarNew
    mvarId.assign h
    if target'.isTrue then
      mvarNew.mvarId!.assign (mkConst ``True.intro)
      return .closed
    else
      return .goal mvarNew.mvarId!

/--
Simplifies the target of `mvarId` using `Sym.simp`.
Returns `.closed` if the target simplifies to `True`, `.simp mvarId'` if simplified
to a new goal, or `.noProgress` if no simplification occurred.

This function assumed the input goal is a valid `Sym` goal (e.g., expressions are maximally shared).
-/
public def simpGoal (mvarId : MVarId) (methods :  Simp.Methods := {}) (config : Simp.Config := {})
    : SymM SimpGoalResult := mvarId.withContext do
  let decl ← mvarId.getDecl
  (← simp decl.type methods config).toSimpGoalResult mvarId

/--
Similar to `simpGoal`, but returns `.goal mvarId` if no progress was made.
-/
public def simpGoalIgnoringNoProgress (mvarId : MVarId) (methods :  Simp.Methods := {}) (config : Simp.Config := {})
    : SymM SimpGoalResult := do
  match (← simpGoal mvarId methods config) with
  | .noProgress => return .goal mvarId
  | r => return r

end Lean.Meta.Sym
