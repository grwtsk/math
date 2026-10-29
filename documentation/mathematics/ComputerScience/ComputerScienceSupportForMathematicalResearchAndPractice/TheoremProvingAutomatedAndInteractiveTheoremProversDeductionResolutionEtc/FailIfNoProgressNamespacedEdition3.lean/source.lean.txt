-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LctxIsDefEq.Variant3f8c99dbae05f50647455bb9ee133322aa74b2ca7f82f6c8a38ebdee8f7b5d71","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3f8c99dbae05f50647455bb9ee133322aa74b2ca7f82f6c8a38ebdee8f7b5d71","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LctxIsDefEq.Variant3f8c99dbae05f50647455bb9ee133322aa74b2ca7f82f6c8a38ebdee8f7b5d71","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3f8c99dbae05f50647455bb9ee133322aa74b2ca7f82f6c8a38ebdee8f7b5d71","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Tactic/FailIfNoProgress.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Thomas Murrills. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Thomas Murrills
-/
import Lean

/-!
# Fail if no progress

This implements the `fail_if_no_progress` tactic, which fails if no actual progress is made by the
following tactic sequence.

"Actual progress" means that either the number of goals has changed, that the
number or presence of expressions in the context has changed, or that the type of some expression
in the context or the type of the goal is no longer definitionally equal to what it used to be at
reducible transparency.

This means that, for example, `1 - 1` changing to `0` does not count as actual progress, since
```lean
example : (1 - 1 = 0) := by with_reducible rfl
```

This tactic is useful in situations where we want to stop iterating some tactics if they're not
having any effect, e.g. `repeat (fail_if_no_progress simp <;> ring_nf)`.

-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LctxIsDefEq.Variant3f8c99dbae05f50647455bb9ee133322aa74b2ca7f82f6c8a38ebdee8f7b5d71

namespace Mathlib.Tactic

open Lean Meta Elab Tactic

/-- `fail_if_no_progress tacs` evaluates `tacs`, and fails if no progress is made on the main goal
or the local context at reducible transparency. -/
syntax (name := failIfNoProgress) "fail_if_no_progress " tacticSeq : tactic

/-- `lctxIsDefEq l₁ l₂` compares two lists of `Option LocalDecl`s (as returned from e.g.
`(← (← getMainGoal).getDecl).lctx.decls.toList`). It returns `true` if they contain expressions of
the same type in the same order (up to defeq), and `false` otherwise. -/
def lctxIsDefEq : (l₁ l₂ : List (Option LocalDecl)) → MetaM Bool
  | some d₁ :: l₁, some d₂ :: l₂ => do
    unless (← withNewMCtxDepth <| isDefEq d₁.type d₂.type) do
      return false
    lctxIsDefEq l₁ l₂
  | none :: l₁, none :: l₂ => lctxIsDefEq l₁ l₂
  | [], [] => return true
  | _, _ => return false

/-- Run `tacs : TacticM Unit` on `goal`, and fail if no progress is made. -/
def runAndFailIfNoProgress (goal : MVarId) (tacs : TacticM Unit) : TacticM (List MVarId) := do
  let l ← run goal tacs
  try
    let [newGoal] := l | failure
    guard <|← withNewMCtxDepth <| withReducible <| isDefEq (← newGoal.getType) (← goal.getType)
    let ctxDecls := (← goal.getDecl).lctx.decls.toList
    let newCtxDecls := (← newGoal.getDecl).lctx.decls.toList
    guard <|← withNewMCtxDepth <| withReducible <| lctxIsDefEq ctxDecls newCtxDecls
  catch _ =>
    return l
  throwError "no progress made on {goal}"

elab_rules : tactic
| `(tactic| fail_if_no_progress $tacs) => do
  let goal ← getMainGoal
  let l ← runAndFailIfNoProgress goal (evalTactic tacs)
  replaceMainGoal l
