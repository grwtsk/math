# Complete source: GRWTSK.Algebra.UniversalAlgebra.OrderDual.Variant9dda33ed3709580ce52d28826e02a7238c1344f298ec5543410cb8f0b2a276cf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0317b06f71475b14fa8463268fe3432654567c32` · SHA-256 `9dda33ed3709580ce52d28826e02a7238c1344f298ec5543410cb8f0b2a276cf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Mario Carneiro, Johannes Hölzl
-/
module

public import Mathlib.Algebra.Order.Group.Synonym
public import Mathlib.Algebra.Order.Monoid.Unbundled.OrderDual
public import Mathlib.Algebra.Order.Monoid.Defs

/-! # Ordered monoid structures on the order dual. -/

public section

universe u

variable {α : Type u}

namespace OrderDual

@[to_additive]
instance isOrderedMonoid [CommMonoid α] [Preorder α] [IsOrderedMonoid α] :
    IsOrderedMonoid αᵒᵈ where
  mul_le_mul_left _ _ h c := mul_le_mul_left h c

@[to_additive]
instance isOrderedCancelMonoid [CommMonoid α] [Preorder α] [IsOrderedCancelMonoid α] :
    IsOrderedCancelMonoid αᵒᵈ where
  le_of_mul_le_mul_left _ _ _ := le_of_mul_le_mul_left'

end OrderDual
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=760e412e8b1b578c7f958289e982bc06358b96abee2b621a83e53df57bdbc27d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/OrderDual/Variant9dda33ed3709580ce52d28826e02a7238c1344f298ec5543410cb8f0b2a276cf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
