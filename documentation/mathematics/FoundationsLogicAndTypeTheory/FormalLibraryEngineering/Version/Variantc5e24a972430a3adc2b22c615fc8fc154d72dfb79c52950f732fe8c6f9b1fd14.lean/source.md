# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Version.Variantc5e24a972430a3adc2b22c615fc8fc154d72dfb79c52950f732fe8c6f9b1fd14

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d57aaa1527cca8910ab9de4976e44640976bcbcb` · SHA-256 `c5e24a972430a3adc2b22c615fc8fc154d72dfb79c52950f732fe8c6f9b1fd14`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.Prelude
import Init.Data.ToString
import Init.Data.String.TakeDrop

namespace Lake

public def version.major : Nat := 5
public def version.minor : Nat := 0
public def version.patch : Nat := 0

public def version.isRelease : Bool :=
  Lean.version.isRelease

public def version.specialDesc : String :=
  if isRelease && !Lean.githash.isEmpty then s!"src+{Lean.githash.take 7}" else "src"

public def versionStringCore : String :=
  s!"{version.major}.{version.minor}.{version.patch}"

public def versionString : String :=
  if version.specialDesc ≠ "" then
    s!"{versionStringCore}-{version.specialDesc}"
  else
    versionStringCore

public def uiVersionString : String :=
  s!"Lake version {versionString} (Lean version {Lean.versionString})"
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ad7680697fecebfb15af0656cdc0a97a67feb5113258a4a6d49471bdcccf5be8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Version/Variantc5e24a972430a3adc2b22c615fc8fc154d72dfb79c52950f732fe8c6f9b1fd14.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
