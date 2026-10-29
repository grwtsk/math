# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DischargerAsTactic.Variant0e5b5418556da24fe68af2d535a8fdf7a986eec3e959c896b6e51e0a13cb6677

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65ac7a35fd00b608c1e9e5713b11debb2ec0843a` · SHA-256 `0e5b5418556da24fe68af2d535a8fdf7a986eec3e959c896b6e51e0a13cb6677`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Alex J. Best. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Alex J. Best
-/
import Mathlib.Init
import Lean.Elab.Tactic.Basic
import Lean.Meta.Tactic.Simp.Rewrite
import Batteries.Tactic.Exact

/-!
## Dischargers for `simp` to tactics

This file defines a wrapper for `Simp.Discharger`s as regular tactics, that allows them to be
used via the tactic frontend of `simp` via `simp (discharger := wrapSimpDischarger my_discharger)`.
-/

open Lean Meta Elab Tactic

/-- Wrap an simp discharger (a function `Expr → SimpM (Option Expr)`) as a tactic,
so that it can be passed as an argument to `simp (discharger := foo)`.
This is inverse to `mkDischargeWrapper`. -/
def wrapSimpDischarger (dis : Simp.Discharge) : TacticM Unit := do
  let eS : Lean.Meta.Simp.State := {}
  let eC : Lean.Meta.Simp.Context := ← Simp.mkContext {}
  let eM : Lean.Meta.Simp.Methods := {}
  let (some a, _) ← liftM <| StateRefT'.run (ReaderT.run (ReaderT.run (dis <| ← getMainTarget)
    eM.toMethodsRef) eC) eS | failure
  (← getMainGoal).assignIfDefEq a
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=13499677542e616bd8430efa372e83dad8f62e521ea9223d0c59f2a73b8bf626 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DischargerAsTactic/Variant0e5b5418556da24fe68af2d535a8fdf7a986eec3e959c896b6e51e0a13cb6677.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
