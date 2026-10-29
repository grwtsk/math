# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Generalize.Variant68e4ea738e81eda934912977fbeeb45fbaf18896193db564a9a26c3511f109cf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `20250ad5f6e41b9f20d473996d3b521200858772` · SHA-256 `68e4ea738e81eda934912977fbeeb45fbaf18896193db564a9a26c3511f109cf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Init
import Lean.Elab.Binders
import Lean.Elab.Tactic.ElabTerm
import Lean.Meta.Tactic.Generalize

/-!
# Backwards compatibility shim for `generalize`.

In https://github.com/leanprover/lean4/pull/3575 the transparency setting for `generalize` was
changed to `instances`. This file provides a shim for the old setting, so that users who
haven't updated their code yet can still use `generalize` with the old setting.

This file can be removed once all uses of the compatibility shim have been removed from Mathlib.

(Possibly we will instead add a `transparency` argument to `generalize`.
This would also allow removing this file.
-/

open Lean Elab Tactic Meta in
/-- Backwards compatibility shim for `generalize`. -/
elab "generalize'" h:ident " : " t:term:51 " = " x:ident : tactic => do
  withMainContext do
      let mut xIdents := #[]
      let mut hIdents := #[]
      let mut args := #[]
      hIdents := hIdents.push h
      let expr ← elabTerm t none
      xIdents := xIdents.push x
      args := args.push { hName? := h.getId, expr, xName? := x.getId : GeneralizeArg }
      let hyps := #[]
      let mvarId ← getMainGoal
      mvarId.withContext do
        let (_, newVars, mvarId) ← mvarId.generalizeHyp args hyps (transparency := default)
        mvarId.withContext do
          for v in newVars, id in xIdents ++ hIdents do
            Term.addLocalVarInfo id (.fvar v)
          replaceMainGoal [mvarId]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8d40eb1562cd82ec9f2edbed62edfc49f4de8895ab200982275b9030755b4820 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Generalize/Variant68e4ea738e81eda934912977fbeeb45fbaf18896193db564a9a26c3511f109cf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
