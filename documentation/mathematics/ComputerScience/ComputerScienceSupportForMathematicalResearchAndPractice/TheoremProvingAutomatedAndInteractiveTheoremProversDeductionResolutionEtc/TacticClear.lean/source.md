# Tactic Clear — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0e2d325b31be1a6b592aedf92b92402a0c9cfa93` · SHA-256 `d2c015417aac57abbd07b9d9dc916618f12a6eedb8f50a14aa6aa4e36e810b0f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Joshua Clune. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joshua Clune
-/
import Mathlib.Init
import Lean.Meta.Tactic.Clear
import Lean.Elab.Tactic.Basic

/-! # `clear_` tactic -/

namespace Mathlib.Tactic
open Lean Meta Elab.Tactic

/-- Clear all hypotheses starting with `_`, like `_match` and `_let_match`. -/
elab (name := clear_) "clear_" : tactic =>
  liftMetaTactic1 fun goal ↦ do
    let mut toClear := #[]
    for decl in ← getLCtx do
      if let Name.str _ str := decl.userName then
        if !str.isEmpty && str.front == '_' then
          if let none ← isClass? decl.type then
            toClear := toClear.push decl.fvarId
    goal.tryClearMany toClear

end Mathlib.Tactic
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9fb7109300dc8303cdf99d8feab890912acd82339f53418b0a9750b43f9c494b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clear/Variantd2c015417aac57abbd07b9d9dc916618f12a6eedb8f50a14aa6aa4e36e810b0f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
