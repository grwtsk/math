# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CancelParams.Variantb3dd1c5845282012bf477a88c6341ab62cd565f8633fc5d0476e4e265c53bed7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3cb8bbccb94a4fafb32c12b4f9066827127007e0` · SHA-256 `b3dd1c5845282012bf477a88c6341ab62cd565f8633fc5d0476e4e265c53bed7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Marc Huisinga. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.

Authors: Marc Huisinga, Wojciech Nawrocki
-/
module

prelude
public import Lean.Data.JsonRpc

public section

/-! # Defines `Lean.Lsp.CancelParams`.

This is separate from `Lean.Data.Lsp.Basic` to reduce transitive dependencies.
-/

namespace Lean
namespace Lsp

open Json

structure CancelParams where
  id : JsonRpc.RequestID
  deriving Inhabited, BEq, ToJson, FromJson

end Lsp
end Lean
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9c6eed8603126ce91b0f536b3c18e8eb16ab9e100d7b27c7ff48fa74af1eb8e8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancelParams/Variantb3dd1c5845282012bf477a88c6341ab62cd565f8633fc5d0476e4e265c53bed7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
