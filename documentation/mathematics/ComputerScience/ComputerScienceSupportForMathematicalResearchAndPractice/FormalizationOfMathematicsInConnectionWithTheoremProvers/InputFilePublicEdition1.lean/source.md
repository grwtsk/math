# Input File Public Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43c64dc42c50852a6316241aa2e96fde29e3a4af` · SHA-256 `66723f09d2cf656fa85aea5ea52cc293bdb1cee828e6c81384c5f4762e5d26bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Config.ConfigTarget

namespace Lake
open Lean System

/-- An input file -- its package plus its configuration. -/
public abbrev InputFile := ConfigTarget InputFile.configKind

/--
The full path to the input file.
That is, the package's `dir` joined with the file's `path`.
-/
@[inline] public def InputFile.path (self : InputFile) : FilePath :=
  self.pkg.dir / self.config.path

/-- Whether this is a text file. -/
@[inline] public def InputFile.text (self : InputFile) : Bool :=
  self.config.text

/-- An input directory -- its package plus its configuration. -/
public abbrev InputDir := ConfigTarget InputDir.configKind

/--
The full path to the input file.
That is, the package's `dir` joined with the file's `path`.
-/
@[inline] public def InputDir.path (self : InputDir) : FilePath :=
  self.pkg.dir / self.config.path

/-- Whether this directory contains text files. -/
@[inline] public def InputDir.text (self : InputDir) : Bool :=
  self.config.text

/-- The file inclusion filter function for the input directory. -/
@[inline] public def InputDir.filter (self : InputDir) : FilePath → Bool :=
  self.config.filter.matches
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=43eaa0e0c75a8e4622a4906cba36c67334d210e0bce73052c5cd9a62115aa832 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InputFile/Variant66723f09d2cf656fa85aea5ea52cc293bdb1cee828e6c81384c5f4762e5d26bc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
