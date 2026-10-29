# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NormNum.Variant4e5431a3bfbf0d009b012cf98f92ff8650c3c6e416c0b9a6b2190c8ed3fabd23

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b6aa32c95ebae8f84d5b37624f5a7b8d152debe3` · SHA-256 `4e5431a3bfbf0d009b012cf98f92ff8650c3c6e416c0b9a6b2190c8ed3fabd23`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: euprunin
-/

import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.OfScientific
import Mathlib.Tactic.NormNum.Eq
import Mathlib.Tactic.NormNum.Ineq
import Mathlib.Tactic.NormNum.Pow
import Mathlib.Tactic.NormNum.Inv
import Mathlib.Tactic.NormNum.DivMod
import Mathlib.Data.Rat.Cast.Order

/-!
We register `norm_num` with the `hint` tactic.
-/

register_hint norm_num
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=47271af611b6cd6b381e3d6d37387378c39bff40896ff74b0fc90e6165e2e6fe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormNum/Variant4e5431a3bfbf0d009b012cf98f92ff8650c3c6e416c0b9a6b2190c8ed3fabd23.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
