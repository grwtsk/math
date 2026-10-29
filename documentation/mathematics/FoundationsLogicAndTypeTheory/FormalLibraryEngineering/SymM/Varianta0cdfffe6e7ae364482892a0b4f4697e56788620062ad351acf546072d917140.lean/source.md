# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Symm.Varianta0cdfffe6e7ae364482892a0b4f4697e56788620062ad351acf546072d917140

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aa240b55b3d280c575c18d9fdab4f30ee9e16592` · SHA-256 `a0cdfffe6e7ae364482892a0b4f4697e56788620062ad351acf546072d917140`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Init
import Lean.Meta.Tactic.Symm

/-!
# `relSidesIfSymm?`
-/

open Lean Meta Symm

namespace Mathlib.Tactic

open Lean.Elab.Tactic

/-- If `e` is the form `@R .. x y`, where `R` is a symmetric
relation, return `some (R, x, y)`.
As a special case, if `e` is `@HEq α a β b`, return ``some (`HEq, a, b)``. -/
def _root_.Lean.Expr.relSidesIfSymm? (e : Expr) : MetaM (Option (Name × Expr × Expr)) := do
  if let some (_, lhs, rhs) := e.eq? then
    return (``Eq, lhs, rhs)
  if let some (lhs, rhs) := e.iff? then
    return (``Iff, lhs, rhs)
  if let some (_, lhs, _, rhs) := e.heq? then
    return (``HEq, lhs, rhs)
  if let .app (.app rel lhs) rhs := e then
    unless (← (symmExt.getState (← getEnv)).getMatch rel).isEmpty do
      match rel.getAppFn.constName? with
      | some n => return some (n, lhs, rhs)
      | none => return none
  return none

end Mathlib.Tactic
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e7d8964abbd8b0cc705cd6fc4d4c66689721ef0ac938b25863556d8201459a1a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Varianta0cdfffe6e7ae364482892a0b4f4697e56788620062ad351acf546072d917140.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
