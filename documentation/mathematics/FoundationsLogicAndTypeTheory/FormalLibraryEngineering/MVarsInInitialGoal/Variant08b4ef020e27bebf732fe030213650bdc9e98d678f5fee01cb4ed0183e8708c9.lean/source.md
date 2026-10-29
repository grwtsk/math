# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MVarsInInitialGoal.Variant08b4ef020e27bebf732fe030213650bdc9e98d678f5fee01cb4ed0183e8708c9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2d54ecdd80e193682a4e46a35e0887c03e65472` · SHA-256 `08b4ef020e27bebf732fe030213650bdc9e98d678f5fee01cb4ed0183e8708c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true

example {n m k : Nat} (h : n < m) (h₂ : m < k) : n < k := by
  apply Nat.lt_trans <;> aesop
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d45652b2bca24af290921cfae730865a8cc823462e5a4e8e38adf8cdc264022e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MVarsInInitialGoal/Variant08b4ef020e27bebf732fe030213650bdc9e98d678f5fee01cb4ed0183e8708c9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
