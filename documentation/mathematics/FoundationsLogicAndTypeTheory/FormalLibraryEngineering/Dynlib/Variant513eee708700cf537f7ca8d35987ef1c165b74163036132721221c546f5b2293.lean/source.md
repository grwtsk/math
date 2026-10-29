# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Dynlib.Variant513eee708700cf537f7ca8d35987ef1c165b74163036132721221c546f5b2293

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f753c9fb164c1ab7153cdff8c19b1c2ae4fb76c` · SHA-256 `513eee708700cf537f7ca8d35987ef1c165b74163036132721221c546f5b2293`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Config.OutFormat

open System Lean

namespace Lake

/-- A dynamic/shared library artifact for linking. -/
public structure Dynlib where
  /-- Library file path. -/
  path : FilePath
  /-- Library name without any platform-specific prefix/suffix (for `-l`). -/
  name : String
  /-- Whether this library can be loaded as a plugin. -/
  plugin := false
  /--
  Transitive dependencies of this library for situations that need them
  (e.g., linking on Windows, loading via `lean`).
  -/
  deps : Array Dynlib := #[]
  /--
  Non-link transitive dependencies of this library that are only required
  at runtime (e.g., libraries loaded dynamically via `dlopen`). Used by Lake
  to preload such dependencies for `lean` elaboration when precompiling.
  -/
  runtimeOnlyDeps : Array Dynlib := #[]
  deriving Inhabited, Repr

namespace Dynlib

/-- Optional library directory (for `-L`). -/
public def dir? (self : Dynlib) : Option FilePath :=
  self.path.parent

public instance : ToJson Dynlib := ⟨(·.path.toString)⟩
public instance : ToString Dynlib := ⟨(·.path.toString)⟩
public instance : Coe Dynlib FilePath := ⟨(·.path)⟩
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c3708ad176184508c26deaa3f531efa647be411fc938dcd0c092bdb7f5b544d1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dynlib/Variant513eee708700cf537f7ca8d35987ef1c165b74163036132721221c546f5b2293.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
