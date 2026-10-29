# Complete source: GRWTSK.Algebra.UniversalAlgebra.Idempotent.Variant02fdb3558ef64fa37739e01879e4e38331fd6514a31721eddd78555b548c2dd7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b7907ca9678728eb920531a9922fb691aa70eaf` · SHA-256 `02fdb3558ef64fa37739e01879e4e38331fd6514a31721eddd78555b548c2dd7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Christopher Hoskin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christopher Hoskin
-/
import Mathlib.Algebra.Group.Idempotent
import Mathlib.Algebra.GroupWithZero.Defs

/-!
# Idempotent elements of a group with zero
-/

assert_not_exists Ring

variable {M N S M₀ M₁ R G G₀ : Type*}
variable [MulOneClass M₁] [CancelMonoidWithZero G₀]

namespace IsIdempotentElem
section MulZeroClass
variable [MulZeroClass M₀]

lemma zero : IsIdempotentElem (0 : M₀) := mul_zero _

instance : Zero { p : M₀ // IsIdempotentElem p } where zero := ⟨0, zero⟩

@[simp] lemma coe_zero : ↑(0 : { p : M₀ // IsIdempotentElem p }) = (0 : M₀) := rfl

end MulZeroClass

section CancelMonoidWithZero
variable [CancelMonoidWithZero M₀]

@[simp]
lemma iff_eq_zero_or_one {p : G₀} : IsIdempotentElem p ↔ p = 0 ∨ p = 1 where
  mp h := or_iff_not_imp_left.mpr fun hp ↦ mul_left_cancel₀ hp (h.trans (mul_one p).symm)
  mpr h := h.elim (fun hp => hp.symm ▸ zero) fun hp => hp.symm ▸ one

end CancelMonoidWithZero
end IsIdempotentElem
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8635e95f5d3715a2ce91eae2619309b6ceab9a9c0aa76f2e5a607ca6291ae407 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Idempotent/Variant02fdb3558ef64fa37739e01879e4e38331fd6514a31721eddd78555b548c2dd7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
