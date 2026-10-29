# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BVDecide.Variantb88c5405620a5d2fc5d805f164ff47e05a905de901c9fe839baade4b20149b07

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d9ed7237ddbbd6b2907bc33c09318a93931cc4b5` · SHA-256 `b88c5405620a5d2fc5d805f164ff47e05a905de901c9fe839baade4b20149b07`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast
public import Std.Tactic.BVDecide.LRAT
public import Std.Tactic.BVDecide.Normalize
public import Std.Tactic.BVDecide.Reflect
public import Std.Tactic.BVDecide.Syntax

@[expose] public section

/-!
This directory contains the implementation of the bitblaster and LRAT checker for `bv_decide`,
as well as custom theorems used for reflection.
-/
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=868fe80ead8986b64aeb1025f42d5cb9e1f5369876652d5e134a671804a09891 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BVDecide/Variantb88c5405620a5d2fc5d805f164ff47e05a905de901c9fe839baade4b20149b07.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
