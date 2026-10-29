# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant8ddcd0b579593fe42acbd1c4ae89a33233daa89140dd05c744a9ee8f09fe0e9f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c5f0229655d0713ff00a1fb77ca92f49aad460aa` · SHA-256 `8ddcd0b579593fe42acbd1c4ae89a33233daa89140dd05c744a9ee8f09fe0e9f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn, Jon Eugster
-/
import Mathlib.Lean.Meta
/-!
# Additions to `Lean.Elab.Tactic.Basic`
-/

open Lean Elab Tactic

namespace Lean.Elab.Tactic

/-- Return expected type for the main goal, cleaning up annotations, using `Lean.MVarId.getType''`.
Remark: note that `MVarId.getType'` uses `whnf` instead of `cleanupAnnotations`, and
`MVarId.getType''` also uses `cleanupAnnotations` -/
def getMainTarget'' : TacticM Expr := do
  (← getMainGoal).getType''

/--
Like `done` but takes a scope (e.g. a tactic name) as an argument
to produce more detailed error messages.
-/
def doneWithScope (scope : MessageData) : TacticM Unit := do
  let gs ← getUnsolvedGoals
  unless gs.isEmpty do
    logError m!"{scope} failed to solve some goals.\n"
    Term.reportUnsolvedGoals gs
    throwAbortTactic

/--
Like `focusAndDone` but takes a scope (e.g. tactic name) as an argument to
produce more detailed error messages.
-/
def focusAndDoneWithScope {α : Type} (scope : MessageData) (tactic : TacticM α) : TacticM α :=
  focus do
    let a ← try tactic catch e =>
      if isAbortTacticException e then throw e
      else throwError "{scope} failed.\n{← nestedExceptionToMessageData e}"
    doneWithScope scope
    pure a

end Lean.Elab.Tactic
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6353ed853d6060908c27eb6dd87a014c6491cae4532af222652d092ac1ece04e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant8ddcd0b579593fe42acbd1c4ae89a33233daa89140dd05c744a9ee8f09fe0e9f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
