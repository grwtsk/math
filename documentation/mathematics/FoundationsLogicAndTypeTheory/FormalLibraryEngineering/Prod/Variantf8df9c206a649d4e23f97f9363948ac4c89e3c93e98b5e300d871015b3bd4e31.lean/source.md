# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Prod.Variantf8df9c206a649d4e23f97f9363948ac4c89e3c93e98b5e300d871015b3bd4e31

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b14a70f7eae5118c933456ee334a2616f3411f4b` · SHA-256 `f8df9c206a649d4e23f97f9363948ac4c89e3c93e98b5e300d871015b3bd4e31`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2014 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Jeremy Avigad
-/
import Mathlib.Init.Logic
import Mathlib.Util.CompileInductive

/-! ### alignments from lean 3 `init.data.prod` -/

set_option autoImplicit true

compile_inductive% Prod

@[simp]
theorem Prod.mk.eta : ∀ {p : α × β}, (p.1, p.2) = p
  | (_, _) => rfl
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b609bd141ac9ed9c53f7d3cb1237c18ab20c7d25843484a568eac93225d74494 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prod/Variantf8df9c206a649d4e23f97f9363948ac4c89e3c93e98b5e300d871015b3bd4e31.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
