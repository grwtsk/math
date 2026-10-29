# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hints.Variantb179967eec799a45584ce8d518caf92d2d507b9a83aa54b9d700f40ee91baa46

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a6d63e81e60138dc57e1694a924b4e1178a8a495` · SHA-256 `b179967eec799a45584ce8d518caf92d2d507b9a83aa54b9d700f40ee91baa46`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Init.Grind.Tactics
import Init.NotationExtra
public section

/- Hint for making sure `Not p` is definitionally equal to `p → False` even when
   `TransparencyMode.reducible` -/
unif_hint (p : Prop) where
  ⊢ Not p =?= p → False

```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=56709842fba21ec7e3ee7b6871d44a46f7d49f21a378653812d9f6e35441d12f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hints/Variantb179967eec799a45584ce8d518caf92d2d507b9a83aa54b9d700f40ee91baa46.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
