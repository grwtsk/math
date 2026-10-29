# Ring Prod — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4fec52da14838149316b8d824cbd077f313eee66` · SHA-256 `efacc0cb645d67c9076ca0d113adc560ba8b11494bbe5a56c19a11981d97247a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Order.Monoid.Prod
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Ring.Prod

/-!
# Products of ordered rings
-/

variable {α β : Type*}

instance [Semiring α] [PartialOrder α] [IsOrderedRing α]
    [Semiring β] [PartialOrder β] [IsOrderedRing β] : IsOrderedRing (α × β) :=
  { zero_le_one := ⟨zero_le_one, zero_le_one⟩
    mul_le_mul_of_nonneg_left := fun _ _ _ hab hc =>
      ⟨mul_le_mul_of_nonneg_left hab.1 hc.1, mul_le_mul_of_nonneg_left hab.2 hc.2⟩
    mul_le_mul_of_nonneg_right := fun _ _ _ hab hc =>
      ⟨mul_le_mul_of_nonneg_right hab.1 hc.1, mul_le_mul_of_nonneg_right hab.2 hc.2⟩ }
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=68728bba4adadd9d1e9cad80e43c9d631daeeb391daa9893ce9c29d8f0a96dad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Prod/Variantefacc0cb645d67c9076ca0d113adc560ba8b11494bbe5a56c19a11981d97247a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
