# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variantc28c84aab56832c5f719181f6ee1740cf6a54d5299fc4b9c3c21af3febadbe54

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a6f7d8f895bba52d08f637778b41d17efcf28b9c` · SHA-256 `c28c84aab56832c5f719181f6ee1740cf6a54d5299fc4b9c3c21af3febadbe54`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Lean.Elab.Tactic.Basic

namespace Lean.Elab.Tactic

/--
Like `evalTacticAt`, but without restoring the goal list or pruning solved goals.
Useful when these tasks are already being done in an outer loop.
-/
def evalTacticAtRaw (tac : Syntax) (mvarId : MVarId) : TacticM (List MVarId) := do
  setGoals [mvarId]
  evalTactic tac
  getGoals
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba51c665fbdc93b37f195c2bc7e775a56ff9db8ccd80e1f0f961e3dfb52c6b8a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variantc28c84aab56832c5f719181f6ee1740cf6a54d5299fc4b9c3c21af3febadbe54.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
