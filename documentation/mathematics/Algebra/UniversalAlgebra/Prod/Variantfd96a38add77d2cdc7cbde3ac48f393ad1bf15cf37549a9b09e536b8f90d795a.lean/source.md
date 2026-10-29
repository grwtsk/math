# Complete source: GRWTSK.Algebra.UniversalAlgebra.Prod.Variantfd96a38add77d2cdc7cbde3ac48f393ad1bf15cf37549a9b09e536b8f90d795a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `02000d152845c72f3f8701d3ddef7d0d752e726f` · SHA-256 `fd96a38add77d2cdc7cbde3ac48f393ad1bf15cf37549a9b09e536b8f90d795a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Mario Carneiro, Johannes Hölzl
-/
import Mathlib.Algebra.Order.Group.Instances
import Mathlib.Algebra.Order.Monoid.Prod

#align_import algebra.order.group.prod from "leanprover-community/mathlib"@"ee0c179cd3c8a45aa5bffbf1b41d8dbede452865"

/-!
# Products of ordered commutative groups.
-/


variable {α : Type*}

namespace Prod

variable {G H : Type*}

@[to_additive]
instance [OrderedCommGroup G] [OrderedCommGroup H] : OrderedCommGroup (G × H) :=
  { Prod.instCommGroup, Prod.instPartialOrder G H, Prod.instOrderedCancelCommMonoid
    with }

namespace Lex

@[to_additive]
instance orderedCommGroup [OrderedCommGroup G] [OrderedCommGroup H] :
    OrderedCommGroup (G ×ₗ H) where
  mul_le_mul_left _ _ := mul_le_mul_left'

@[to_additive]
instance linearOrderedCommGroup [LinearOrderedCommGroup G] [LinearOrderedCommGroup H] :
    LinearOrderedCommGroup (G ×ₗ H) where
  __ := (inferInstance : LinearOrder (G ×ₗ H))
  mul_le_mul_left _ _ := mul_le_mul_left'

end Lex

end Prod
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cba61a307c7765af8c1ecd7b5e3a3d747bd2d612a69fbbf483156f0831e04ad2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Prod/Variantfd96a38add77d2cdc7cbde3ac48f393ad1bf15cf37549a9b09e536b8f90d795a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
