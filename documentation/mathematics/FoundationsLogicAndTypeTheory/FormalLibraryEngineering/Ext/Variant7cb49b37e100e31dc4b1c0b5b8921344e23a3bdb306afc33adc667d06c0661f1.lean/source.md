# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ext.Variant7cb49b37e100e31dc4b1c0b5b8921344e23a3bdb306afc33adc667d06c0661f1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `facededd652a5779d910e7289d966cbedabb9587` · SHA-256 `7cb49b37e100e31dc4b1c0b5b8921344e23a3bdb306afc33adc667d06c0661f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Tracing
import Lean.Elab.Tactic.Ext
import Lean.Meta.Tactic.Intro

public section

open Lean Lean.Meta Lean.Elab.Tactic.Ext

namespace Aesop

structure ExtResult where
  depth : Nat
  commonFVarIds : Array FVarId
  goals : Array (MVarId × Array FVarId)

partial def straightLineExt (goal : MVarId) : MetaM ExtResult :=
  go goal 0 #[]
where
  go (goal : MVarId) (depth : Nat) (commonFVarIds : Array FVarId) :
      MetaM ExtResult:= do
    withConstAesopTraceNode .debug (return m!"straightLineExt") do
    aesop_trace[debug] "goal:{indentD goal}"
    let goals? ← show MetaM _ from observing? $ applyExtTheoremAt goal
    if let some goals := goals? then
      aesop_trace[debug] "ext lemma applied; new goals:{indentD $ Elab.goalsToMessageData goals}"
      let goals := goals.toArray
      if goals.isEmpty then
        return { depth := depth + 1, goals := #[], commonFVarIds := #[] }
      let goals ← goals.mapM λ goal => do
        let (fvarIds, goal) ← goal.intros
        return (goal, fvarIds)
      if h : goals.size = 1 then
        let (goal, fvarIds) := goals[0]
        go goal (depth + 1) (commonFVarIds ++ fvarIds)
      else
        return { depth := depth + 1, goals, commonFVarIds }
    else
      aesop_trace[debug] "no applicable ext lemma"
      return { depth, goals := #[(goal, #[])], commonFVarIds }

def straightLineExtProgress (goal : MVarId) : MetaM ExtResult := do
  let result ← straightLineExt goal
  if result.depth == 0 then
    throwError "no applicable extensionality theorem found"
  return result

end Aesop
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f09c0d377262e8d4ac72c84acdcf3f18b78345c091950dce563661168c4920d6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant7cb49b37e100e31dc4b1c0b5b8921344e23a3bdb306afc33adc667d06c0661f1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
