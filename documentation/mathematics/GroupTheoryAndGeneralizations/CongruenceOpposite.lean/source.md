# Congruence Opposite — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `757c4b47b9e4a522cd852e112d84ea8173449b8c` · SHA-256 `46c70a48b52cca63a577c37ace8a4bc6e1ff886b8320c5a6e0fe4e5218b5f338`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Amelia Livingston. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Amelia Livingston
-/

import Mathlib.Algebra.Opposites
import Mathlib.GroupTheory.Congruence.Defs

/-!
# Congruences on the opposite of a group

This file defines the order isomorphism between the congruences on a group `G` and the congruences
on the opposite group `Gᵒᵖ`.
-/


variable {M : Type*} [Mul M]

namespace Con

/-- If `c` is a multiplicative congruence on `M`, then `(a, b) ↦ c b.unop a.unop` is a
multiplicative congruence on `Mᵐᵒᵖ`. -/
@[to_additive "If `c` is an additive congruence on `M`, then `(a, b) ↦ c b.unop a.unop` is an
additive congruence on `Mᵃᵒᵖ`"]
def op (c : Con M) : Con Mᵐᵒᵖ where
  r a b := c b.unop a.unop
  iseqv :=
  { refl := fun a ↦ c.refl a.unop
    symm := c.symm
    trans := fun h1 h2 ↦ c.trans h2 h1 }
  mul' h1 h2 := c.mul h2 h1

/-- If `c` is a multiplicative congruence on `Mᵐᵒᵖ`, then `(a, b) ↦ c bᵒᵖ aᵒᵖ` is a multiplicative
congruence on `M`. -/
@[to_additive "If `c` is an additive congruence on `Mᵃᵒᵖ`, then `(a, b) ↦ c bᵒᵖ aᵒᵖ` is an additive
congruence on `M`"]
def unop (c : Con Mᵐᵒᵖ) : Con M where
  r a b := c (.op b) (.op a)
  iseqv :=
  { refl := fun a ↦ c.refl (.op a)
    symm := c.symm
    trans := fun h1 h2 ↦ c.trans h2 h1 }
  mul' h1 h2 := c.mul h2 h1

/--
The multiplicative congruences on `M` bijects to the multiplicative congruences on `Mᵐᵒᵖ`
-/
@[to_additive (attr := simps) "The additive congruences on `M` bijects to the additive congruences
on `Mᵃᵒᵖ`"]
def orderIsoOp : Con M ≃o Con Mᵐᵒᵖ where
  toFun := op
  invFun := unop
  left_inv _ := rfl
  right_inv _ := rfl
  map_rel_iff' {c d} := by rw [le_def, le_def]; constructor <;> intro h _ _ h' <;> exact h h'

end Con
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fb36d98273294f45a171796698ac227d1d45290a5a7d2ace13c757e72773c996 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Opposite/Variant46c70a48b52cca63a577c37ace8a4bc6e1ff886b8320c5a6e0fe4e5218b5f338.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
