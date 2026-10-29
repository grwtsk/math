# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Varianta79ebc168f55150896777674f4708d35785c490d3659f9c951c7b407f2b67e4a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `235884c4c57dd44ce28334b1d857a1075cf2fff6` · SHA-256 `a79ebc168f55150896777674f4708d35785c490d3659f9c951c7b407f2b67e4a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/

module

prelude
public import Lean.Elab.Tactic.Basic

public section

namespace Lean.Elab.WF

register_builtin_option debug.rawDecreasingByGoal : Bool := {
  defValue := false
  descr    := "Shows the raw `decreasing_by` goal including internal implementation detail \
               instead of cleaning it up with the `clean_wf` tactic. Can be enabled for debugging \
               purposes. Please report an issue if you have to use this option for other reasons."
}

open Lean Elab Tactic

def applyCleanWfTactic : TacticM Unit := do
  unless debug.rawDecreasingByGoal.get (← getOptions) do
    Tactic.evalTactic (← `(tactic| all_goals clean_wf))

end Lean.Elab.WF
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e8959bf41e3f2564a08d1d8e11fe5c03c616a77e5a7d3a67c8a0f10c2ed27cd1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta79ebc168f55150896777674f4708d35785c490d3659f9c951c7b407f2b67e4a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
