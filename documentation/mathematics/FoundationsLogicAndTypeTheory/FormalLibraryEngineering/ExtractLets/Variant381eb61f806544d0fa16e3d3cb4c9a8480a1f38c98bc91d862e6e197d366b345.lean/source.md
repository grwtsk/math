# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExtractLets.Variant381eb61f806544d0fa16e3d3cb4c9a8480a1f38c98bc91d862e6e197d366b345

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `472759c348e5256472bad80f26cabbeb7ca0cfb8` · SHA-256 `381eb61f806544d0fa16e3d3cb4c9a8480a1f38c98bc91d862e6e197d366b345`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Kyle Miller. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
import Mathlib.Lean.Expr.Basic
import Mathlib.Tactic.Basic
import Batteries.Tactic.Lint.Misc
import Mathlib.Tactic.Linter.DeprecatedModule

deprecated_module "The extract_let tactic was moved to Lean core; \
  you can probably just remove this import" (since := "2025-05-02")
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f6618804f82ac7067d62d3b857a19c119cd8ea32775bf44e940dff41253fd8e0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractLets/Variant381eb61f806544d0fa16e3d3cb4c9a8480a1f38c98bc91d862e6e197d366b345.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
