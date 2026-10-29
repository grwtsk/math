# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rewrites.Variant0523cf45927b865cefd9cec90f601897c4ae0e313608f5e8a9d29e21256a7785

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c7efb1821fba9370e7a7a871e4b82612dd361e0b` · SHA-256 `0523cf45927b865cefd9cec90f601897c4ae0e313608f5e8a9d29e21256a7785`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Lean.Elab.Tactic.Location
public import Lean.Meta.Tactic.Replace
public import Lean.Meta.Tactic.Rewrites

public section

/-!
# The `rewrites` tactic.

`rw?` tries to find a lemma which can rewrite the goal.

`rw?` should not be left in proofs; it is a search tool, like `apply?`.

Suggestions are printed as `rw [h]` or `rw [← h]`.

-/
namespace Lean.Elab.Rewrites

open Lean Meta Rewrites
open Lean.Parser.Tactic

open Lean Elab Tactic

@[builtin_tactic Lean.Parser.Tactic.rewrites?]
def evalExact : Tactic := fun stx => do
  let `(tactic| rw?%$tk $[$loc]? $[[ $[-$forbidden],* ]]?) := stx
        | throwUnsupportedSyntax
  let moduleRef ← createModuleTreeRef
  let forbidden : NameSet :=
    ((forbidden.getD #[]).map Syntax.getId).foldl (init := ∅) fun s n => s.insert n
  reportOutOfHeartbeats `findRewrites tk
  let goal ← getMainGoal
  withLocation (expandOptLocation (Lean.mkOptionalNode loc))
    fun f => do
      let some a ← f.findDecl? | return
      if a.isImplementationDetail then return
      let target ← instantiateMVars (← f.getType)
      let hyps ← localHypotheses (except := [f])
      let results ← findRewrites hyps moduleRef goal target (stopAtRfl := false) forbidden
      reportOutOfHeartbeats `rewrites tk
      if results.isEmpty then
        throwError "Could not find any lemmas which can rewrite the hypothesis {← f.getUserName}"
      for r in results do withMCtx r.mctx do
        Tactic.TryThis.addRewriteSuggestion tk [(r.expr, r.symm)]
          (type? := .some r.result.eNew) (loc? := .some (.fvar f))
          (origSpan? := ← getRef) (checkState? := (← saveState))
      if let some r := results[0]? then
        setMCtx r.mctx
        let replaceResult ← goal.replaceLocalDecl f r.result.eNew r.result.eqProof
        replaceMainGoal (replaceResult.mvarId :: r.result.mvarIds)
    do
      let target ← instantiateMVars (← goal.getType)
      let hyps ← localHypotheses
      let results ← findRewrites hyps moduleRef goal target (stopAtRfl := true) forbidden
      reportOutOfHeartbeats `rewrites tk
      if results.isEmpty then
        throwError "Could not find any lemmas which can rewrite the goal"
      let mut state ← saveState
      if let some r := results[0]? then
        setMCtx r.mctx
        -- We must save the state after setting the metavar context so we can instantiate
        -- mvars in the expected type
        state ← saveState
        replaceMainGoal
          ((← goal.replaceTargetEq r.result.eNew r.result.eqProof) :: r.result.mvarIds)
        evalTactic (← `(tactic| try rfl))
      results.forM (·.addSuggestion tk (checkState? := state))
    (fun _ => throwError "Failed to find a rewrite for some location")

end Lean.Elab.Rewrites
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=81ea2fc7de1c36c7ed7276dacca356b434168007514b6f8e9fd47520a47d483a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrites/Variant0523cf45927b865cefd9cec90f601897c4ae0e313608f5e8a9d29e21256a7785.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
