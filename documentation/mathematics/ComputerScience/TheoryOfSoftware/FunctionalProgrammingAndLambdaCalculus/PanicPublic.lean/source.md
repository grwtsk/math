# Panic Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de7ed79930046e39d16b6097e89a0d94dcb16601` · SHA-256 `5160533567103ad67ab7bb6a2e3b9b7f71e76086b082dbde268b11fb1629ecb9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 François G. Dorais. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: François G. Dorais
-/
module

@[expose] public section

namespace Batteries

/-- Panic with a specific default value `v`. -/
def panicWith (v : α) (msg : String) : α := @panic α ⟨v⟩ msg

@[simp] theorem panicWith_eq (v : α) (msg) : panicWith v msg = v := rfl
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a07c26ec41bd1f0fb221ed653acaaa67a73d36a4dce8c58242ac3ad304b36335 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Panic/Variant5160533567103ad67ab7bb6a2e3b9b7f71e76086b082dbde268b11fb1629ecb9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
