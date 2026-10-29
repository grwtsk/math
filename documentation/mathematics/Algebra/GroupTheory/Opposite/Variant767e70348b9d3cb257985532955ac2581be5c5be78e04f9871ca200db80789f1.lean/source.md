# Complete source: GRWTSK.Algebra.GroupTheory.Opposite.Variant767e70348b9d3cb257985532955ac2581be5c5be78e04f9871ca200db80789f1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `63018aadab33de8bcc38b68918cbc9fac9d28e30` · SHA-256 `767e70348b9d3cb257985532955ac2581be5c5be78e04f9871ca200db80789f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/

import Mathlib.RingTheory.Congruence.Basic
import Mathlib.GroupTheory.Congruence.Opposite

/-!
# Congruences on the opposite ring

This file defines the order isomorphism between the congruences on a ring `R` and the congruences on
the opposite ring `Rᵐᵒᵖ`.

-/

variable {R : Type*} [Add R] [Mul R]

namespace RingCon

/--
If `c` is a `RingCon R`, then `(a, b) ↦ c b.unop a.unop` is a `RingCon Rᵐᵒᵖ`.
-/
def op (c : RingCon R) : RingCon Rᵐᵒᵖ where
  __ := c.toCon.op
  mul' h1 h2 := c.toCon.op.mul h1 h2
  add' h1 h2 := c.add h1 h2

lemma op_iff {c : RingCon R} {x y : Rᵐᵒᵖ} : c.op x y ↔ c y.unop x.unop := Iff.rfl

/--
If `c` is a `RingCon Rᵐᵒᵖ`, then `(a, b) ↦ c b.op a.op` is a `RingCon R`.
-/
def unop (c : RingCon Rᵐᵒᵖ) : RingCon R where
  __ := c.toCon.unop
  mul' h1 h2 := c.toCon.unop.mul h1 h2
  add' h1 h2 := c.add h1 h2

lemma unop_iff {c : RingCon Rᵐᵒᵖ} {x y : R} : c.unop x y ↔ c (.op y) (.op x) := Iff.rfl

/--
The congruences of a ring `R` biject to the congruences of the opposite ring `Rᵐᵒᵖ`.
-/
@[simps]
def opOrderIso : RingCon R ≃o RingCon Rᵐᵒᵖ where
  toFun := op
  invFun := unop
  left_inv _ := rfl
  right_inv _ := rfl
  map_rel_iff' {c d} := by rw [le_def, le_def]; constructor <;> intro h _ _ h' <;> exact h h'

end RingCon
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=646bc58c6b83580a0997910f32b22115e3a08541ea00e31ee6e66b72937d4b6e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Opposite/Variant767e70348b9d3cb257985532955ac2581be5c5be78e04f9871ca200db80789f1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
