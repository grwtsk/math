# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BitVec.Variant9e3e8c70877aae9c83e4ddf50926661c5eec377803d4a9a6bce870ab2d926118

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aff142b875fb317f7f8d1f7ca25f7c74ca093c4e` · SHA-256 `9e3e8c70877aae9c83e4ddf50926661c5eec377803d4a9a6bce870ab2d926118`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel, Paul Reichert, Robin Arnez
-/
module

prelude
public import Init.Data.Order.Ord
import Init.Data.BitVec.Lemmas

public section

/-!
# Instances for strings.

-/

set_option autoImplicit false
set_option linter.missingDocs true

open Std

namespace BitVec

variable {n : Nat}

instance : TransOrd (BitVec n) :=
  TransOrd.compareOfLessAndEq_of_antisymm_of_trans_of_total_of_not_le
    BitVec.le_antisymm BitVec.le_trans BitVec.le_total BitVec.not_le

instance : LawfulEqOrd (BitVec n) where
  eq_of_compare h := compareOfLessAndEq_eq_eq BitVec.le_refl BitVec.not_le |>.mp h

end BitVec
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=da39f004a167018df51cac660f8dc3e202e12aa43f8b75e0b684013cc431c9ad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant9e3e8c70877aae9c83e4ddf50926661c5eec377803d4a9a6bce870ab2d926118.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
