# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Check.Variant411252b0d77ea0088b0c49ea73720ce2abe70d3987ca46341577ff610c66e90b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d38906461def3ef093e037739a357b182ce3471` · SHA-256 `411252b0d77ea0088b0c49ea73720ce2abe70d3987ca46341577ff610c66e90b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Script.UScript
import Aesop.Check

public section

open Lean Lean.Elab.Tactic
open Lean.Parser.Tactic (tacticSeq)

namespace Aesop.Script

def UScript.checkIfEnabled (uscript : UScript) : MetaM Unit := do
  unless ← Check.script.steps.isEnabled do
    return
  try
    uscript.validate
  catch e =>
    throwError "{Check.script.steps.name}: {e.toMessageData}"

end Script

def checkRenderedScriptIfEnabled (script : TSyntax ``tacticSeq)
    (preState : Meta.SavedState) (goal : MVarId) (expectCompleteProof : Bool) :
    MetaM Unit := do
  if ! (← Check.script.isEnabled) then
    return
  let go : TacticM Unit := do
    setGoals [goal]
    evalTactic script
    if expectCompleteProof && ! (← getUnsolvedGoals).isEmpty then
      throwError "script executed successfully but did not solve the main goal"
  try
    show MetaM Unit from withoutModifyingState do
      preState.restore
      go.run { elaborator := .anonymous, recover := false }
        |>.run' { goals := [goal] }
        |>.run'
  catch e => throwError
    "{Check.script.name}: error while executing generated script:{indentD e.toMessageData}"

end Aesop
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3be42c57c9fefd7d6035b796cfc929691a578cedaee3da0fc38084220e3a3cee -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant411252b0d77ea0088b0c49ea73720ce2abe70d3987ca46341577ff610c66e90b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
