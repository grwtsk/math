# Omega Public Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3e87fb758c342867a204e050f7213ee89719a869` · SHA-256 `3cdc18c9c2d8f8d8754849bb7ed8db96fdcea115331ca42befddce3b60d52cee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Init.Omega.Int
public import Init.Omega.IntList
public import Init.Omega.LinearCombo
public import Init.Omega.Constraint
public import Init.Omega.Logic

public import Init.Data.Int.Lemmas  -- shake: keep (`omega` output dependency)
public import Init.Data.Int.Order  -- shake: keep (`omega` output dependency)
public import Init.Data.Nat.Order  -- shake: keep (`omega` output dependency)
public import Init.Data.Order.Lemmas  -- shake: keep (`omega` output dependency)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=48c86809bb357758b9ca566a30f20f81fe21cefab9d120b0da655306bd8f2579 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Omega/Variant3cdc18c9c2d8f8d8754849bb7ed8db96fdcea115331ca42befddce3b60d52cee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
