# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Exact.Variant5ddfd54d0668e7c3cb03706d4db55d5cc14ce1e0901dc9215941728526f5a169

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4631f18b521a4d85f67d92a3f17fb18b3a3ddfe2` · SHA-256 `5ddfd54d0668e7c3cb03706d4db55d5cc14ce1e0901dc9215941728526f5a169`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public meta import Batteries.Tactic.Alias

public meta section

/-! # `exact` tactic (`MetaM` version) -/

open Lean Meta

/--
`MetaM` version of `Lean.Elab.Tactic.evalExact`: add `mvarId := x` to the metavariable assignment.
This method wraps `Lean.MVarId.assign`, checking whether `mvarId` is already assigned, and whether
the expression has the right type. -/
def Lean.MVarId.assignIfDefEq (g : MVarId) (e : Expr) : MetaM Unit := do
  guard <| ← isDefEq (← g.getType) (← inferType e)
  g.checkNotAssigned `assignIfDefEq
  g.assign e

@[deprecated (since := "2025-04-09")]
alias Lean.MVarId.assignIfDefeq := Lean.MVarId.assignIfDefEq
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=71a6442da35ea5a272798ee7930bb2e08d971e49ce1723cf0d8ccdac17cce0af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Exact/Variant5ddfd54d0668e7c3cb03706d4db55d5cc14ce1e0901dc9215941728526f5a169.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
