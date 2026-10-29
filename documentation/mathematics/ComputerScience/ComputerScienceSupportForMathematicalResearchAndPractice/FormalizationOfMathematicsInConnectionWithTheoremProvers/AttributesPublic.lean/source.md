# Attributes Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `549797d21aef7093fdac20d303198c5410d5469e` · SHA-256 `412b93a6370b7b7f78f7936cd1780ce9d7feb16c7123ae47e050264de2d7f8b0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.DSL.AttributesCore

open Lean

namespace Lake

public builtin_initialize
  registerBuiltinAttribute {
    ref             := by exact decl_name%
    name            := `test_runner
    descr           := testDriverAttr.attr.descr
    add             := fun decl stx attrKind => do
      logWarningAt stx "@[test_runner] has been deprecated, use @[test_driver] instead"
      testDriverAttr.attr.add decl stx attrKind
    applicationTime := testDriverAttr.attr.applicationTime
    erase           := fun decl => testDriverAttr.attr.erase decl
 }
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=35e545e9024fad33eec19dfa1960e7ebafb8913c6f5d724d2ec584b8b5d14f0e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attributes/Variant412b93a6370b7b7f78f7936cd1780ce9d7feb16c7123ae47e050264de2d7f8b0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
