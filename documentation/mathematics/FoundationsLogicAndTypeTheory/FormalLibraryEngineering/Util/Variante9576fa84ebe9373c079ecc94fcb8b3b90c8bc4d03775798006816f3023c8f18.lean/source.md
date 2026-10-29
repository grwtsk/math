# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Util.Variante9576fa84ebe9373c079ecc94fcb8b3b90c8bc4d03775798006816f3023c8f18

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `90a06fd39827ad40106b857aba6eb892be02f3c7` · SHA-256 `e9576fa84ebe9373c079ecc94fcb8b3b90c8bc4d03775798006816f3023c8f18`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Util.Binder
public import Lake.Util.Casing
public import Lake.Util.Cli
public import Lake.Util.Cycle
public import Lake.Util.Date
public import Lake.Util.EquipT
public import Lake.Util.Error
public import Lake.Util.EStateT
public import Lake.Util.Exit
public import Lake.Util.Family
public import Lake.Util.FilePath
public import Lake.Util.Git
public import Lake.Util.IO
public import Lake.Util.JsonObject
public import Lake.Util.Lift
public import Lake.Util.Lock
public import Lake.Util.Log
public import Lake.Util.MainM
public import Lake.Util.Message
public import Lake.Util.Name
public import Lake.Util.NativeLib
public import Lake.Util.Opaque
public import Lake.Util.OrderedTagAttribute
public import Lake.Util.OrdHashSet
public import Lake.Util.Proc
public import Lake.Util.RBArray
public import Lake.Util.Reservoir
public import Lake.Util.Store
public import Lake.Util.StoreInsts
public import Lake.Util.String
public import Lake.Util.Task
public import Lake.Util.Url
public import Lake.Util.Version
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=029505fdf07716c71769b2b9468f41670a24b2f2f8c6546cbbe0d3bbfc5b5cd7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variante9576fa84ebe9373c079ecc94fcb8b3b90c8bc4d03775798006816f3023c8f18.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
