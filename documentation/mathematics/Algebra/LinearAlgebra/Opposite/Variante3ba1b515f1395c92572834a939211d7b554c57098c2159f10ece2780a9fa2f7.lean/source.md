# Complete source: GRWTSK.Algebra.LinearAlgebra.Opposite.Variante3ba1b515f1395c92572834a939211d7b554c57098c2159f10ece2780a9fa2f7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6671b194e4c9cfaf8e4829854d997a0e37053897` · SHA-256 `e3ba1b515f1395c92572834a939211d7b554c57098c2159f10ece2780a9fa2f7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.GroupWithZero.Action.Opposite
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Ring.Opposite

/-!
# Module operations on `Mᵐᵒᵖ`

This file contains definitions that build on top of the group action definitions in
`Mathlib/Algebra/GroupWithZero/Action/Opposite.lean`.
-/

assert_not_exists LinearMap

section

variable {R M : Type*} [Semiring R] [AddCommMonoid M]

-- see Note [lower instance priority]
/-- Like `Semiring.toModule`, but multiplies on the right. -/
instance (priority := 910) Semiring.toOppositeModule [Semiring R] : Module Rᵐᵒᵖ R :=
  { MonoidWithZero.toOppositeMulActionWithZero R with
    smul_add := fun _ _ _ => add_mul _ _ _
    add_smul := fun _ _ _ => mul_add _ _ _ }

end

namespace MulOpposite

universe u v

variable (R : Type u) {M : Type v} [Semiring R] [AddCommMonoid M] [Module R M]

/-- `MulOpposite.distribMulAction` extends to a `Module` -/
instance instModule : Module R Mᵐᵒᵖ where
  add_smul _ _ _ := unop_injective <| add_smul _ _ _
  zero_smul _ := unop_injective <| zero_smul _ _

end MulOpposite
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=73f70b00496a3dd337d87c2a29bab791a1225502a4eeb1e145570be66b033293 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Opposite/Variante3ba1b515f1395c92572834a939211d7b554c57098c2159f10ece2780a9fa2f7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
