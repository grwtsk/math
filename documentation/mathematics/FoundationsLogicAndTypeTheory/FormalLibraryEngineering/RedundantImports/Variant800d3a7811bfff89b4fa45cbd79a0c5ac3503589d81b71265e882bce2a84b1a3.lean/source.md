# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RedundantImports.Variant800d3a7811bfff89b4fa45cbd79a0c5ac3503589d81b71265e882bce2a84b1a3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8902ef928dba2c6277507ccff849edac2123cce0` · SHA-256 `800d3a7811bfff89b4fa45cbd79a0c5ac3503589d81b71265e882bce2a84b1a3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Paul Lezeau
-/
module

public meta import Lean.Elab.Command
public meta import Lean.Widget.UserWidget
public meta import ImportGraph.Imports.Redundant

public meta section

open Lean

/--
List the imports in this file which can be removed
because they are transitively implied by another import.
-/
elab "#redundant_imports" : command => do
  let redundant := (← Elab.Command.liftCoreM do redundantImports)
  if redundant.isEmpty then
    logInfo "No transitively redundant imports found."
  else
    logInfo <| "Found the following transitively redundant imports:\n" ++
      m!"{Format.joinSep redundant.toList "\n"}"
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5794610147366423f357e43c10d32038aecec39d3ab70a6ebe88887a32268355 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RedundantImports/Variant800d3a7811bfff89b4fa45cbd79a0c5ac3503589d81b71265e882bce2a84b1a3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
