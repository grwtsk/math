# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Context.Variant7517fc4680e67681dc045ba81f2b9fb5355aa25b9b7dd74cddbbf437a31faef6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `757cf43512eac073aad8b4ea11bdbbfb19d8a6ab` · SHA-256 `7517fc4680e67681dc045ba81f2b9fb5355aa25b9b7dd74cddbbf437a31faef6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.Control.Id
public import Lake.Config.Opaque

open System
namespace Lake

/-- A Lake configuration. -/
public structure Context where
  opaqueWs : OpaqueWorkspace

/-- A transformer to equip a monad with a `Lake.Context`. -/
public abbrev LakeT := ReaderT Context

@[inline] public def LakeT.run (ctx : Context) (self : LakeT m α) : m α :=
  ReaderT.run self ctx

/-- A monad equipped with a `Lake.Context`. -/
public abbrev LakeM := LakeT Id

@[inline] public def LakeM.run (ctx : Context) (self : LakeM α) : α :=
  ReaderT.run self ctx |>.run
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=12104c14f2cf1b1eb01a3ee659a6c0763141ab57bfb78ead8c222ece3a0655fa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Context/Variant7517fc4680e67681dc045ba81f2b9fb5355aa25b9b7dd74cddbbf437a31faef6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
