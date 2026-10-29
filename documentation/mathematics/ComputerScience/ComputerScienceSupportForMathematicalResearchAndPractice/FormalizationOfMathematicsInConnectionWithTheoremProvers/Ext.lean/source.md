# Ext — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d7a26e36b98b7aae78e385a6838062b2e4f29b3` · SHA-256 `e9f6701732955690e1700d6b0e87d7ca488f1600a30125b9f11d3487f8aa4c47`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

example (f g : α → β) (h : ∀ a, f a = g a) : f = g := by
  aesop

example (x y : α × β) (h₁ : x.1 = y.1) (h₂ : x.2 = y.2) : x = y := by
  aesop
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c68de7d520d88b220c0b4377e01b94660d9f53b8e2ff2dbe85125e7fd7ac34d1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variante9f6701732955690e1700d6b0e87d7ca488f1600a30125b9f11d3487f8aa4c47.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
