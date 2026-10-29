# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Preprocess.Variantdc3c0227bea44873acdb1bee024043a5fd699812232e355a08f67654f4f7905c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3bddc9d2a91d88d6250af189e318b3cc7bd27d0e` · SHA-256 `dc3c0227bea44873acdb1bee024043a5fd699812232e355a08f67654f4f7905c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.RuleTac.Basic
public import Aesop.Script.SpecificTactics

public section

open Lean Lean.Meta

namespace Aesop.RuleTac

/--
This `RuleTac` is applied once to the root goal, before any other rules are
tried.
-/
def preprocess : RuleTac := RuleTac.ofSingleRuleTac λ input => do
  let ((mvarId, _), steps) ← renameInaccessibleFVarsS input.goal |>.run
  let diff := {
    oldGoal := input.goal
    newGoal := mvarId
    addedFVars := ∅
    removedFVars := ∅
    targetChanged := false
  }
  return (#[{ diff }], steps, none)

end Aesop.RuleTac
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=293f2d1381354f2f753a6d8458a1358c36d867a837fabd48f4b9a124f2619c9d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Preprocess/Variantdc3c0227bea44873acdb1bee024043a5fd699812232e355a08f67654f4f7905c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
