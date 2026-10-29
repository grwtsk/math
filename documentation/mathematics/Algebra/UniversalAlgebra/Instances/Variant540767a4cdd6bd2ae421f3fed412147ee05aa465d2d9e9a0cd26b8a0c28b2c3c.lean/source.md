# Complete source: GRWTSK.Algebra.UniversalAlgebra.Instances.Variant540767a4cdd6bd2ae421f3fed412147ee05aa465d2d9e9a0cd26b8a0c28b2c3c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b0f851b3c2849e8552edef14375fa140ef1ddab8` · SHA-256 `540767a4cdd6bd2ae421f3fed412147ee05aa465d2d9e9a0cd26b8a0c28b2c3c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Mario Carneiro, Johannes Hölzl
-/
import Mathlib.Algebra.Order.Group.Defs
import Mathlib.Algebra.Order.Monoid.OrderDual

#align_import algebra.order.group.instances from "leanprover-community/mathlib"@"55bbb8076236154a4f53939a62ad1e4fddbc14c8"

/-!
# Additional instances for ordered commutative groups.

-/


variable {α : Type*}

@[to_additive]
instance OrderDual.orderedCommGroup [OrderedCommGroup α] : OrderedCommGroup αᵒᵈ :=
  { OrderDual.orderedCommMonoid, instGroupOrderDual with }
#align order_dual.ordered_comm_group OrderDual.orderedCommGroup
#align order_dual.ordered_add_comm_group OrderDual.orderedAddCommGroup

@[to_additive]
instance OrderDual.linearOrderedCommGroup [LinearOrderedCommGroup α] : LinearOrderedCommGroup αᵒᵈ :=
  { OrderDual.orderedCommGroup, OrderDual.instLinearOrder α with }
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0dbde080131ddd82c442aee132bdb58c68703ee77695bea657b8e27548dbcd00 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Instances/Variant540767a4cdd6bd2ae421f3fed412147ee05aa465d2d9e9a0cd26b8a0c28b2c3c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
