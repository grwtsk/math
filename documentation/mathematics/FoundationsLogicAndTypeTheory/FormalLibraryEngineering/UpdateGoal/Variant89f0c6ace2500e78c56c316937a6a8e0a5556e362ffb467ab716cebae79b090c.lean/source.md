# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UpdateGoal.Variant89f0c6ace2500e78c56c316937a6a8e0a5556e362ffb467ab716cebae79b090c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c735277d334b9f9651aa6a62e149511c76fed471` · SHA-256 `89f0c6ace2500e78c56c316937a6a8e0a5556e362ffb467ab716cebae79b090c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Tree.TreeM
import Aesop.Tree.RunMetaM

public section

open Lean

namespace Aesop.GoalRef

def updateForwardState (phase : PhaseName) (gref : GoalRef) : TreeM Unit := do
  let g ← gref.get
  if phase == .norm then
    throwError "aesop: internal error: {decl_name%}: at goal {g.id}: norm phase not supported"
  if ! g.isNormal then
    throwError "aesop: internal error: {decl_name%}: attempt to update forward state of non-normal goal {g.id} to phase {phase}"
  let (fs, ms) ← g.runMetaMInPostNormState' fun goal =>
    g.forwardState.update goal phase
  let ms := g.forwardRuleMatches.update ms ∅ ∅
  gref.set <| g.setForwardState fs |>.setForwardRuleMatches ms

end Aesop.GoalRef
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=99001208d0c5a3e65b71be8ea683700e06b24a7d1b69d2703754a1d576ddb42a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UpdateGoal/Variant89f0c6ace2500e78c56c316937a6a8e0a5556e362ffb467ab716cebae79b090c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
