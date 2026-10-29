# Ring Opposite — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `242447acda7f8e7a7e6bf5c8db0a3a6b80ba69fd` · SHA-256 `578ba53ff117f52130d9f2e5a9ea7ffe1873d97ea300c98edf21156bd0694c51`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Order.Group.Opposite
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Ring.Opposite

/-!
# Ordered ring instances for `MulOpposite`/`AddOpposite`

This files transfers ordered (semi)ring instances from `R` to `Rᵐᵒᵖ` and `Rᵃᵒᵖ`.
-/

variable {R : Type*}

namespace MulOpposite

instance [Semiring R] [PartialOrder R] [IsOrderedRing R] : IsOrderedRing Rᵐᵒᵖ where
  zero_le_one := zero_le_one (α := R)
  mul_le_mul_of_nonneg_left _ _ _ := mul_le_mul_of_nonneg_right (α := R)
  mul_le_mul_of_nonneg_right _ _ _ := mul_le_mul_of_nonneg_left (α := R)

end MulOpposite

namespace AddOpposite

instance [Semiring R] [PartialOrder R] [IsOrderedRing R] : IsOrderedRing Rᵃᵒᵖ where
  zero_le_one := zero_le_one (α := R)
  mul_le_mul_of_nonneg_left _ _ _ := mul_le_mul_of_nonneg_left (α := R)
  mul_le_mul_of_nonneg_right _ _ _ := mul_le_mul_of_nonneg_right (α := R)

end AddOpposite
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7a14920d85733307e0d97b6eb4c20668bc08a51dc688d606ba142b3bb9f50097 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Opposite/Variant578ba53ff117f52130d9f2e5a9ea7ffe1873d97ea300c98edf21156bd0694c51.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
