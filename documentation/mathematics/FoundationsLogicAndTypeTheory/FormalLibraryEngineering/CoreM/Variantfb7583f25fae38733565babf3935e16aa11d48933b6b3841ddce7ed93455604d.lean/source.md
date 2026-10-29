# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CoreM.Variantfb7583f25fae38733565babf3935e16aa11d48933b6b3841ddce7ed93455604d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10b822e540bc2138ab75feaa7f2942855911e082` · SHA-256 `fb7583f25fae38733565babf3935e16aa11d48933b6b3841ddce7ed93455604d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Tactic.ToExpr

/-!
# Additional functions using `CoreM` state.
-/

open Lean Core

/--
Run a `CoreM α` in a fresh `Environment` with specified `modules : List Name` imported.
-/
def CoreM.withImportModules {α : Type} (modules : Array Name) (run : CoreM α)
    (searchPath : Option SearchPath := none) (options : Options := {})
    (trustLevel : UInt32 := 0) (fileName := "") :
    IO α := unsafe do
  if let some sp := searchPath then searchPathRef.set sp
  Lean.withImportModules (modules.map ({ module := · })) options (trustLevel := trustLevel)
    fun env =>
      let ctx := {fileName, options, fileMap := default}
      let state := {env}
      Prod.fst <$> (CoreM.toIO · ctx state) do
        run
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7069c0bc3aac7242c23c0a06794106b77e72ac543219790a0ce678ca45c435af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreM/Variantfb7583f25fae38733565babf3935e16aa11d48933b6b3841ddce7ed93455604d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
