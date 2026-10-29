# Input File Config Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab63d5dbbedb65df13da7dea7f51a1e7ea4fb846` · SHA-256 `e8807cf4566654a436facb93b1bef56bca4a76a5b41ee45646c15425c762607f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Config.Pattern
public import Lake.Config.MetaClasses
public import Init.Data.ToString.Name
meta import all Lake.Config.Meta
import Lake.Config.Meta

open Lean System

namespace Lake

/-- The declarative configuration for a single input file. -/
public configuration InputFileConfig (name : Name) where
  /--
  The path to the input file (relative to the package root).

  Defaults to the name of the target.
  -/
  path : FilePath := name.toString (escape := false)
  /--
  Whether this is a text file.
  If so, Lake normalize line endings for its trace.
  This avoids rebuilds across platforms with different line endings.

  Defaults to `false`.
  -/
  text : Bool := false

/-- The declarative configuration for an input directory. -/
public configuration InputDirConfig (name : Name) where
  /--
  The path to the input directory (relative to the package root).

  Defaults to the name of the target.
  -/
  path : FilePath := name.toString (escape := false)
  /--
  Whether the directory is composed of text files.
  If so, Lake normalize line endings for their traces.
  This avoids rebuilds across platforms with different line endings.

  Defaults to `false`.
  -/
  text : Bool := false
  /-
  Includes only the files from the directory
  whose paths satisfy the pattern.

  Defaults to including every file.
  -/
  filter : PathPat := .star
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=50712fb3c9e0f92ce2db3da8759a1f8f0b969d0e5fa5d13040ab77438611cd9f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InputFileConfig/Variante8807cf4566654a436facb93b1bef56bca4a76a5b41ee45646c15425c762607f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
