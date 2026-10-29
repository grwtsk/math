# Complete source: GRWTSK.Algebra.UniversalAlgebra.Canonical.Variantda4d082e1e9aebc8391b61eddb507a6581970c432c3f3fdf4e82d397a7c8326b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a2ec21da38579427cdcf8816c2dd8bf28744566d` · SHA-256 `da4d082e1e9aebc8391b61eddb507a6581970c432c3f3fdf4e82d397a7c8326b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2014 Robert Y. Lewis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robert Y. Lewis, Leonardo de Moura, Mario Carneiro, Floris van Doorn
-/
import Mathlib.Algebra.Order.Field.Defs
import Mathlib.Algebra.Order.GroupWithZero.Canonical
import Mathlib.Algebra.Order.Ring.Canonical

/-!
# Canonically ordered semifields
-/

set_option linter.deprecated false in
/-- A canonically linear ordered field is a linear ordered field in which `a ≤ b` iff there exists
`c` with `b = a + c`. -/
@[deprecated "Use `[LinearOrderedSemifield α] [CanonicallyOrderedAdd α]` instead."
  (since := "2025-01-13")]
structure CanonicallyLinearOrderedSemifield (α : Type*) extends CanonicallyOrderedCommSemiring α,
  LinearOrderedSemifield α

attribute [nolint docBlame] CanonicallyLinearOrderedSemifield.toLinearOrderedSemifield

variable {α : Type*} [Semifield α] [LinearOrder α] [CanonicallyOrderedAdd α]

-- See note [reducible non-instances]
/-- Construct a `LinearOrderedCommGroupWithZero` from a canonically linear ordered semifield. -/
abbrev CanonicallyOrderedAdd.toLinearOrderedCommGroupWithZero :
    LinearOrderedCommGroupWithZero α where
  __ := ‹Semifield α›
  __ := ‹LinearOrder α›
  bot := 0
  bot_le := zero_le
  zero_le_one := zero_le_one
  mul_le_mul_left := fun _ _ h _ ↦ mul_le_mul_of_nonneg_left h <| zero_le _

variable [IsStrictOrderedRing α] [Sub α] [OrderedSub α]

theorem tsub_div (a b c : α) : (a - b) / c = a / c - b / c := by simp_rw [div_eq_mul_inv, tsub_mul]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e8fe9181ca4ead2f9f8806764d52f5db5b22565587e405b1680b7abac59ee89e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Canonical/Variantda4d082e1e9aebc8391b61eddb507a6581970c432c3f3fdf4e82d397a7c8326b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
