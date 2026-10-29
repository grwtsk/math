# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Pisano.Variant7cff2afb3c301c6894c6e0111e5767b7028a8e21919157789ded98b7081a5681

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db8056497f0c10b372e99118d27cc0c4344b6aee` · SHA-256 `7cff2afb3c301c6894c6e0111e5767b7028a8e21919157789ded98b7081a5681`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 LeanCert contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import LeanCert.Engine.Pisano

/-! # Pisano Period Tests

Verify known Pisano periods and fixed points via `native_decide` and `#eval`. -/

open LeanCert.Engine.Pisano

/-! ### Known Fibonacci Pisano periods π(p) -/

-- π(2) = 3, π(3) = 8, π(5) = 20, π(7) = 16, π(11) = 10, π(13) = 28
#eval findPisanoPeriod 1 (-1) 2   -- expect 3
#eval findPisanoPeriod 1 (-1) 3   -- expect 8
#eval findPisanoPeriod 1 (-1) 5   -- expect 20
#eval findPisanoPeriod 1 (-1) 7   -- expect 16
#eval findPisanoPeriod 1 (-1) 11  -- expect 10
#eval findPisanoPeriod 1 (-1) 13  -- expect 28

/-! ### Pell Pisano periods -/

-- Pell: U_n(2, -1)
#eval findPisanoPeriod 2 (-1) 2   -- expect 2
#eval findPisanoPeriod 2 (-1) 3   -- expect 8
#eval findPisanoPeriod 2 (-1) 5   -- expect 12
#eval findPisanoPeriod 2 (-1) 7   -- expect 6

/-! ### Lucas(3, -1) Pisano periods -/

#eval findPisanoPeriod 3 (-1) 2   -- expect 3
#eval findPisanoPeriod 3 (-1) 3   -- expect 2
#eval findPisanoPeriod 3 (-1) 13  -- expect 52

/-! ### Lucas(3, 1) Pisano periods -/

#eval findPisanoPeriod 3 1 2      -- expect 3
#eval findPisanoPeriod 3 1 3      -- expect 4
#eval findPisanoPeriod 3 1 5      -- expect 10

/-! ### Pisano fixed points -/

-- Fibonacci fixed points ≤ 200: should find 24, 120
#eval findPisanoFixedPoints 1 (-1) 200

-- Pell fixed points ≤ 200: should find 2
#eval findPisanoFixedPoints 2 (-1) 200

-- Lucas(3, -1) fixed points ≤ 200: should find 6, 156
#eval findPisanoFixedPoints 3 (-1) 200

-- Lucas(3, 1) fixed points ≤ 200: should find 12, 60
#eval findPisanoFixedPoints 3 1 200

-- Lucas(4, 1) fixed points ≤ 200: should find 2, 6
#eval findPisanoFixedPoints 4 1 200
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=01ec901203ebdebf48cfb98577d689dd4f606dbb9b4d1095539236b4af1fda07 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pisano/Variant7cff2afb3c301c6894c6e0111e5767b7028a8e21919157789ded98b7081a5681.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
