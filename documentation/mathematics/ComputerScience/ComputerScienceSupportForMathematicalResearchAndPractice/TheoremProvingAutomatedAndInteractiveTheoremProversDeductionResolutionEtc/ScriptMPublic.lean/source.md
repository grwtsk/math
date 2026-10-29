# Script MPublic — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7ff2db2ff8d78c4caf7b59ef381883dcd1017ec5` · SHA-256 `19e55f1952c9b08ab7f070a90eb86e4e2081be8aae4b10977966f1fb4c7b7429`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.BaseM
public import Aesop.Script.Step

public section

open Lean Aesop.Script

namespace Aesop

abbrev ScriptT m := StateRefT' IO.RealWorld (Array LazyStep) m

namespace ScriptT

protected def run [Monad m] [MonadLiftT (ST IO.RealWorld) m] (x : ScriptT m α) :
    m (α × Array LazyStep) :=
  StateRefT'.run x #[]

end ScriptT

abbrev ScriptM := ScriptT BaseM

variable [MonadStateOf (Array LazyStep) m]

def recordScriptStep (step : LazyStep) : m Unit :=
  modify (·.push step)

def recordScriptSteps (steps : Array LazyStep) : m Unit :=
  modify (· ++ steps)

def withScriptStep (preGoal : MVarId) (postGoals : α → Array MVarId)
    (success : α → Bool) (tacticBuilder : α → TacticBuilder) (x : MetaM α) :
    ScriptM α := do
  let preState ← show MetaM _ from saveState
  let a ← x
  if success a then
    let postState ← show MetaM _ from saveState
    recordScriptStep {
      tacticBuilders := #[tacticBuilder a]
      postGoals := postGoals a
      preGoal, preState, postState
    }
  return a

def withOptScriptStep (preGoal : MVarId) (postGoals : α → Array MVarId)
    (tacticBuilder : α → TacticBuilder) (x : MetaM (Option α)) :
    ScriptM (Option α) := do
  let preState ← show MetaM _ from saveState
  let some a ← x
    | return none
  let postState ← show MetaM _ from saveState
  recordScriptStep {
    tacticBuilders := #[tacticBuilder a]
    postGoals := postGoals a
    preGoal, preState, postState
  }
  return some a

end Aesop
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2a408f999c786faa8c5aeadfa5436b798d61119753c0d03026043bba4bd94b1d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScriptM/Variant19e55f1952c9b08ab7f070a90eb86e4e2081be8aae4b10977966f1fb4c7b7429.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
