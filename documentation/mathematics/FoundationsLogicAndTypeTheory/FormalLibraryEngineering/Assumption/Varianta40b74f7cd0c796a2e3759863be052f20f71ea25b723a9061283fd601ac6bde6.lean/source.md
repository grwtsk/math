# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Assumption.Varianta40b74f7cd0c796a2e3759863be052f20f71ea25b723a9061283fd601ac6bde6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7bb428a825f00212b1cd256376a61bab5d3ca157` · SHA-256 `a40b74f7cd0c796a2e3759863be052f20f71ea25b723a9061283fd601ac6bde6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Frontend.Attribute

public section

open Lean
open Lean.Meta

namespace Aesop.BuiltinRules

@[aesop safe -50 (rule_sets := [builtin])]
meta def assumption : RuleTac := λ input => do
  let goal := input.goal
  let md := input.options.assumptionTransparency
  goal.withContext do
    goal.checkNotAssigned `Aesop.BuiltinRules.assumption
    goal.instantiateMVars
    let tgt ← goal.getType
    let tgtHasMVar := tgt.hasMVar
    let initialState ← saveState
    let mut applications := #[]
    for ldecl in ← getLCtx do
      if ldecl.isImplementationDetail then
        continue
      restoreState initialState
      let (some (application, proofHasMVar)) ← tryHyp goal ldecl.fvarId md
        | continue
      if ! tgtHasMVar && ! proofHasMVar then
        applications := #[application]
        break
      else
        applications := applications.push application
    if applications.isEmpty then
      throwTacticEx `Aesop.BuiltinRules.assumption goal "no matching assumption found"
    return ⟨applications⟩
  where
    tryHyp (goal : MVarId) (fvarId : FVarId) (md : TransparencyMode) :
        BaseM (Option (RuleApplication × Bool)) := do
      let (true, steps) ← tryExactFVarS goal fvarId md |>.run
        | return none
      let #[step] := steps
        | throwError "aesop: internal error in assumption: multiple steps"
      let proofHasMVar := (← fvarId.getType).hasMVar
      let app := {
        goals := #[]
        postState := step.postState
        scriptSteps? := #[step]
        successProbability? := none
      }
      return some (app, proofHasMVar)

end Aesop.BuiltinRules
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ca32a69c2e1cbbbf42f08e2ae364c1cce0ad60d5e153a3dd8ebb578030794a7a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assumption/Varianta40b74f7cd0c796a2e3759863be052f20f71ea25b723a9061283fd601ac6bde6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
