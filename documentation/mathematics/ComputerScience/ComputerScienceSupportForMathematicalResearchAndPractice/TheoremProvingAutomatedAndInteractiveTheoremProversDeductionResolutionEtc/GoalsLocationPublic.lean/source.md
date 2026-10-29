# Goals Location Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `874d62d8810fb7e96d04f0faa72f12e90e0b196c` · SHA-256 `18111b54d4591a3faf82c31ea66ee2d8800f040d4b85376e19d433c4d7120ce0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jovan Gerbscheid. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jovan Gerbscheid
-/
module

public import Mathlib.Init
public import Lean.Meta.Tactic.Util
public import Lean.SubExpr

/-!
# Utilities for `SubExpr.GoalsLocation`

This file defines some functions for dealing with `SubExpr.GoalsLocation`.
-/

@[expose] public section

namespace Lean.SubExpr.GoalsLocation
/-- The root expression of the position specified by the `GoalsLocation`. -/
def rootExpr : GoalsLocation → MetaM Expr
  | ⟨_, .hyp fvarId⟩        => do instantiateMVars (← fvarId.getType)
  | ⟨_, .hypType fvarId _⟩  => do instantiateMVars (← fvarId.getType)
  | ⟨_, .hypValue fvarId _⟩ => do instantiateMVars (← fvarId.getDecl).value
  | ⟨mvarId, .target _⟩     => do instantiateMVars (← mvarId.getType)

/-- The `SubExpr.Pos` specified by the `GoalsLocation`. -/
def pos : GoalsLocation → Pos
  | ⟨_, .hyp _⟩          => .root
  | ⟨_, .hypType _ pos⟩  => pos
  | ⟨_, .hypValue _ pos⟩ => pos
  | ⟨_, .target pos⟩     => pos

/-- The hypothesis specified by the `GoalsLocation`. -/
def fvarId? : GoalsLocation → Option FVarId
  | ⟨_, .hyp fvarId⟩        => fvarId
  | ⟨_, .hypType fvarId _⟩  => fvarId
  | ⟨_, .hypValue fvarId _⟩ => fvarId
  | ⟨_, .target _⟩          => none

end Lean.SubExpr.GoalsLocation
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4c7b3de009a9cee7d7284d5ffc82fc036f3add99d470dcac05a2be5f27bbdf0d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GoalsLocation/Variant18111b54d4591a3faf82c31ea66ee2d8800f040d4b85376e19d433c4d7120ce0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
