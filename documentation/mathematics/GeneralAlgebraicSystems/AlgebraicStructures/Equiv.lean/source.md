# Equiv — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b10a408153bdbb44d0f8a001ae18df9640dfdd6` · SHA-256 `17428a72e61175bb70df3b39e8350518006f6136b7caca8f0934f610e081dec4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Group.Equiv.Defs
import Mathlib.Algebra.GroupWithZero.Hom

/-! # Isomorphisms of monoids with zero -/

assert_not_exists Ring

namespace MulEquivClass
variable {F α β : Type*} [EquivLike F α β]

-- See note [lower instance priority]
instance (priority := 100) toZeroHomClass [MulZeroClass α] [MulZeroClass β] [MulEquivClass F α β] :
    ZeroHomClass F α β where
  map_zero f :=
    calc
      f 0 = f 0 * f (EquivLike.inv f 0) := by rw [← map_mul, zero_mul]
        _ = 0 := by simp

-- See note [lower instance priority]
instance (priority := 100) toMonoidWithZeroHomClass
    [MulZeroOneClass α] [MulZeroOneClass β] [MulEquivClass F α β] :
    MonoidWithZeroHomClass F α β :=
  { MulEquivClass.instMonoidHomClass F, MulEquivClass.toZeroHomClass with }

end MulEquivClass
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b6cfed19b3fe8a1c1546afb0c229fc399d1756d3aafd32b385fc5358ef58a0ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Equiv/Variant17428a72e61175bb70df3b39e8350518006f6136b7caca8f0934f610e081dec4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
