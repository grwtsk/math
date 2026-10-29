# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InfoTrees.Variant6e630d8565b5487bf719b5a228c7fbfe830645997e3a74a4417524a4f036f4cd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f2760b4570fa7ca8cf97f4924c7b06c5cdee94a` · SHA-256 `6e630d8565b5487bf719b5a228c7fbfe830645997e3a74a4417524a4f036f4cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Lean.Elab.Command

public section

open Lean Elab Command

namespace Lean.Elab.Tactic.InfoTrees

@[builtin_command_elab infoTreesCmd, inherit_doc guardMsgsCmd]
def elabInfoTrees : CommandElab
  | `(command| #info_trees%$tk in $cmd) => do
    if ! (← getInfoState).enabled then
      logError "Info trees are disabled, can not use `#info_trees`."
    else
      elabCommand cmd
      let infoTrees := (← getInfoState).substituteLazy.get.trees
      for t in infoTrees do
        logInfoAt tk (← t.format)
  | _ => throwUnsupportedSyntax

end Lean.Elab.Tactic.InfoTrees
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=63e2b305c1a152d311b4ede46381e4db75876132060ac96caf2a7bb081e630d5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoTrees/Variant6e630d8565b5487bf719b5a228c7fbfe830645997e3a74a4417524a4f036f4cd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
