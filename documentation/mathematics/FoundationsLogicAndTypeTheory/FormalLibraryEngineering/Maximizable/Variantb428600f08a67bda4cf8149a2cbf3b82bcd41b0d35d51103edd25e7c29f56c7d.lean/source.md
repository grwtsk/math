# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Maximizable.Variantb428600f08a67bda4cf8149a2cbf3b82bcd41b0d35d51103edd25e7c29f56c7d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1adff7e331f36f0f0f97717e2cb9b121e806c831` · SHA-256 `b428600f08a67bda4cf8149a2cbf3b82bcd41b0d35d51103edd25e7c29f56c7d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Nawrocki
-/

module

public import ProofWidgets.Component.Basic

open ProofWidgets

public meta section
open Lean

structure MaximizableProps where
  deriving ToJson, FromJson

/-- Wraps its children in a `<div>` that can be maximized to take up the whole viewport
by clicking a button in the top-right corner. -/
@[widget_module]
def Maximizable : Component MaximizableProps where
  javascript := include_str ".." / ".." / "widget" / "js" / "maximizable.js"
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f8c8def9b0889288f750b67ec208d441218aa11348f1972e97e18668a5037e2f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Maximizable/Variantb428600f08a67bda4cf8149a2cbf3b82bcd41b0d35d51103edd25e7c29f56c7d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
