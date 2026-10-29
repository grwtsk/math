# Is Independent Of — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `272cb50ef94ec1cbed55b7e2d21941ceec417af7` · SHA-256 `3870c1d24f696b0b06376885e3ed40485aa05b91f2d22be5426bf7e2b4b29bce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Batteries.Lean.Meta.Basic
import Batteries.Tactic.PermuteGoals
import Lean.Meta.Tactic.IndependentOf

open Lean Meta Elab.Tactic

elab "check_indep" : tactic => do
  match ← getGoals with
  | [] => throwError "Expected goal"
  | g :: l =>
    let res := if ←g.isIndependentOf l then "" else "not "
    let t ← instantiateMVars (← g.getType)
    logWarning s!"{←ppExpr (.mvar g)} : {←ppExpr t} is {res}independent of:"
    l.forM fun g' => do
      logInfo s!"  {←ppExpr (.mvar g')} : {←ppExpr (← g'.getType)}"
      let ppD (l : LocalDecl) : TacticM PUnit := do
        logInfo s!"    {←ppExpr (.fvar l.fvarId)} : {←ppExpr l.type}"
      let _ ← (←g'.getDecl).lctx.forM ppD
      pure ()

/-- warning: ?w : Nat is not independent of: -/
#guard_msgs(warning, drop info) in
example : ∃ (n : Nat), ∀(x : Fin n), x.val = 0 := by
  apply Exists.intro
  intro x
  swap
  check_indep
  exact 0
  revert x
  intro ⟨x, lt⟩
  contradiction

-- This is a tricker one, where the dependency is via a hypothesis.
/-- warning: ?w : Nat is not independent of: -/
#guard_msgs(warning, drop info) in
example : ∃ (n : Nat), ∀(x : Fin n) (y : Nat), x.val = y → y = 0 := by
  apply Exists.intro
  intro x y p
  swap
  check_indep
  exact 0
  revert x
  intro ⟨x, lt⟩
  contradiction
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=40cef8b6179d71b4bece4b98fc4f6d8861ab9f06e8bb0fc32d1287b058307037 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IsIndependentOf/Variant3870c1d24f696b0b06376885e3ed40485aa05b91f2d22be5426bf7e2b4b29bce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
