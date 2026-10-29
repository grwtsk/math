# Canonical Defs — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `22d738b38bd1c2c54748eb5f05509d403471789f` · SHA-256 `d3ca13271f431958dd21f3ba3d9e8f6674b9011669de6be08117beb230508ec6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2014 Robert Lewis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robert Lewis, Leonardo de Moura, Mario Carneiro, Floris van Doorn
-/
import Mathlib.Algebra.Order.Field.Defs
import Mathlib.Algebra.Order.Ring.Canonical
import Mathlib.Algebra.Order.WithZero

#align_import algebra.order.field.canonical.defs from "leanprover-community/mathlib"@"fc2ed6f838ce7c9b7c7171e58d78eaf7b438fb0e"

/-!
# Canonically ordered semifields
-/


variable {α : Type*}

/-- A canonically linear ordered field is a linear ordered field in which `a ≤ b` iff there exists
`c` with `b = a + c`. -/
class CanonicallyLinearOrderedSemifield (α : Type*) extends CanonicallyOrderedCommSemiring α,
  LinearOrderedSemifield α
#align canonically_linear_ordered_semifield CanonicallyLinearOrderedSemifield

-- See note [lower instance priority]
instance (priority := 100) CanonicallyLinearOrderedSemifield.toLinearOrderedCommGroupWithZero
    [CanonicallyLinearOrderedSemifield α] : LinearOrderedCommGroupWithZero α :=
  { ‹CanonicallyLinearOrderedSemifield α› with
    mul_le_mul_left := fun a b h c ↦ mul_le_mul_of_nonneg_left h <| zero_le _ }
#align canonically_linear_ordered_semifield.to_linear_ordered_comm_group_with_zero CanonicallyLinearOrderedSemifield.toLinearOrderedCommGroupWithZero

-- See note [lower instance priority]
instance (priority := 100) CanonicallyLinearOrderedSemifield.toCanonicallyLinearOrderedAddMonoid
    [CanonicallyLinearOrderedSemifield α] : CanonicallyLinearOrderedAddMonoid α :=
  { ‹CanonicallyLinearOrderedSemifield α› with }
#align canonically_linear_ordered_semifield.to_canonically_linear_ordered_add_monoid CanonicallyLinearOrderedSemifield.toCanonicallyLinearOrderedAddMonoid
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0d5f4d377b5870b23019a946bcf0c0fa7436ba4bfcb324451ee2a4783e1b9be2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Defs/Variantd3ca13271f431958dd21f3ba3d9e8f6674b9011669de6be08117beb230508ec6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
