# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Debug.Variant8931b4c3dac0fc3a452d82063a9399eefe7e638c07e6132422ba2bb74d9b3f8f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de49e0db101d15bbcb5cc7d495a33074393a7923` · SHA-256 `8931b4c3dac0fc3a452d82063a9399eefe7e638c07e6132422ba2bb74d9b3f8f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Sym.Simp.Discharger
import Lean.Meta.Sym.Simp.Rewrite
import Lean.Meta.Sym.Simp.Goal
import Lean.Meta.Sym.Util
namespace Lean.Meta.Sym
open Lean.Meta.Sym.Simp
/-!
Helper functions for debugging purposes and creating tests.
-/

public def mkSimprocFor (declNames : Array Name) (d : Discharger := dischargeNone) : MetaM Simproc := do
  let mut thms : Theorems := {}
  for declName in declNames do
    thms := thms.insert (← mkTheoremFromDecl declName)
  return thms.rewrite d

public def mkMethods (declNames : Array Name) : MetaM Methods := do
  return { post := (← mkSimprocFor declNames) }

public def simpGoalUsing (declNames : Array Name) (mvarId : MVarId) : MetaM (Option MVarId) := SymM.run do
  let methods ← mkMethods declNames
  let mvarId ← preprocessMVar mvarId
  (← simpGoal mvarId methods).toOption

end Lean.Meta.Sym
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=429fdd3959c08713f06e9c63dace7de89be5c21df096c76b1af81c5c7f667148 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Debug/Variant8931b4c3dac0fc3a452d82063a9399eefe7e638c07e6132422ba2bb74d9b3f8f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
