# And Flatten Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `45ba4df4c5dd757a28b320cccbb6cdb3ba6f02b3` · SHA-256 `0ba636dd43c4b0ecc357f0b24d943392df9952b0055057ae0380811bcbd47e1e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Normalize.Bool
public import Lean.Meta.Tactic.BVDecide.Normalize.Basic

/-!
This module contains the implementation of the and flattening pass in the fixpoint pipeline, taking
hypotheses of the form `h : x && y = true` and splitting them into `h1 : x = true` and
`h2 : y = true` recursively.
-/

namespace Lean.Meta.Tactic.BVDecide
namespace Normalize

structure AndHyp where
  hyp : Hypothesis
  original : FVarId

structure AndFlattenState where
  hypsToDelete : Array FVarId := #[]
  hypsToAdd : Array AndHyp := #[]
  cache : Std.HashSet Expr := {}

/--
Flatten out ands. That is look for hypotheses of the form `h : (x && y) = true` and replace them
with `h.left : x = true` and `h.right : y = true`. This can enable more fine grained substitutions
in embedded constraint substitution.
-/
public partial def andFlatteningPass : Pass where
  name := `andFlattening
  run' goal := do
    let (_, { hypsToDelete, hypsToAdd, .. }) ← processGoal goal |>.run {}
    if hypsToAdd.isEmpty then
      return goal
    else
      let (newFVars, goal) ← goal.assertHypotheses <| hypsToAdd.map (·.hyp)
      for h : i in 0...hypsToAdd.size do
        let orig := hypsToAdd[i].original
        let new := newFVars[i]!
        if ← PreProcessM.checkRewritten orig then
          PreProcessM.rewriteFinished new
        if ← PreProcessM.checkAcNf orig then
          PreProcessM.acNfFinished new

      -- Given that we collected the hypotheses in the correct order above the invariant is given
      let goal ← goal.tryClearMany hypsToDelete
      return goal
where
  processGoal (goal : MVarId) : StateRefT AndFlattenState MetaM Unit := do
    goal.withContext do
      let hyps ← getPropHyps
      hyps.forM processFVar

  processFVar (fvar : FVarId) : StateRefT AndFlattenState MetaM Unit := do
    let type ← fvar.getType
    if (← get).cache.contains type then
      modify (fun s => { s with hypsToDelete := s.hypsToDelete.push fvar })
    else
      let hyp := {
        hyp := {
          userName := (← fvar.getDecl).userName
          type := type
          value := mkFVar fvar
        },
        original := fvar
      }
      let some (lhs, rhs) ← trySplit hyp | return ()
      modify (fun s => { s with hypsToDelete := s.hypsToDelete.push fvar })
      splitAnds fvar [lhs, rhs]

  splitAnds (fvar : FVarId)  (worklist : List AndHyp) : StateRefT AndFlattenState MetaM Unit := do
    match worklist with
    | [] => return ()
    | hyp :: worklist =>
      match ← trySplit hyp with
      | some (left, right) => splitAnds fvar <| left :: right :: worklist
      | none =>
        modify (fun s => { s with hypsToAdd := s.hypsToAdd.push hyp })
        splitAnds fvar worklist

  trySplit (hyp : AndHyp) :
      StateRefT AndFlattenState MetaM (Option (AndHyp × AndHyp)) := do
    let typ := hyp.hyp.type
    if (← get).cache.contains typ then
      return none
    else
      modify (fun s => { s with cache := s.cache.insert typ })
      let_expr Eq _ eqLhs eqRhs := typ | return none
      let_expr Bool.and lhs rhs := eqLhs | return none
      let_expr Bool.true := eqRhs | return none
      let mkEqTrue (lhs : Expr) : Expr :=
        mkApp3 (mkConst ``Eq [1]) (mkConst ``Bool) lhs (mkConst ``Bool.true)
      let leftHyp : Hypothesis := {
        userName := hyp.hyp.userName,
        type := mkEqTrue lhs,
        value := mkApp3 (mkConst ``Std.Tactic.BVDecide.Normalize.Bool.and_left) lhs rhs hyp.hyp.value
      }
      let rightHyp : Hypothesis := {
        userName := hyp.hyp.userName,
        type := mkEqTrue rhs,
        value := mkApp3 (mkConst ``Std.Tactic.BVDecide.Normalize.Bool.and_right) lhs rhs hyp.hyp.value
      }
      return some (⟨leftHyp, hyp.original⟩, ⟨rightHyp, hyp.original⟩)


end Normalize
end Lean.Meta.Tactic.BVDecide
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8d4604853b99a6420c4d9ad40245ce893fc969083ae50b01643684f094443b82 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AndFlatten/Variant0ba636dd43c4b0ecc357f0b24d943392df9952b0055057ae0380811bcbd47e1e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
