# To Mul Bot Aligned — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `93958eb969df31a08848584600bf6085bc1df029` · SHA-256 `1d7639f22147d591d670b3fb52ad29470a7c10641e60500c4aef3f22fa2c086a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Mario Carneiro, Johannes Hölzl
-/
import Mathlib.Algebra.Order.WithZero
import Mathlib.Algebra.Order.Monoid.WithTop
import Mathlib.Algebra.Order.Monoid.TypeTags

#align_import algebra.order.monoid.to_mul_bot from "leanprover-community/mathlib"@"ee0c179cd3c8a45aa5bffbf1b41d8dbede452865"

/-!
Making an additive monoid multiplicative then adding a zero is the same as adding a bottom
element then making it multiplicative.
-/


universe u

variable {α : Type u}

namespace WithZero

variable [Add α]

/-- Making an additive monoid multiplicative then adding a zero is the same as adding a bottom
element then making it multiplicative. -/
def toMulBot : WithZero (Multiplicative α) ≃* Multiplicative (WithBot α) :=
  MulEquiv.refl _
#align with_zero.to_mul_bot WithZero.toMulBot

@[simp]
theorem toMulBot_zero : toMulBot (0 : WithZero (Multiplicative α)) = Multiplicative.ofAdd ⊥ :=
  rfl
#align with_zero.to_mul_bot_zero WithZero.toMulBot_zero

@[simp]
theorem toMulBot_coe (x : Multiplicative α) :
    toMulBot ↑x = Multiplicative.ofAdd (Multiplicative.toAdd x : WithBot α) :=
  rfl
#align with_zero.to_mul_bot_coe WithZero.toMulBot_coe

@[simp]
theorem toMulBot_symm_bot : toMulBot.symm (Multiplicative.ofAdd (⊥ : WithBot α)) = 0 :=
  rfl
#align with_zero.to_mul_bot_symm_bot WithZero.toMulBot_symm_bot

@[simp]
theorem toMulBot_coe_ofAdd (x : α) :
    toMulBot.symm (Multiplicative.ofAdd (x : WithBot α)) = Multiplicative.ofAdd x :=
  rfl
#align with_zero.to_mul_bot_coe_of_add WithZero.toMulBot_coe_ofAdd

variable [Preorder α] (a b : WithZero (Multiplicative α))

theorem toMulBot_strictMono : StrictMono (@toMulBot α _) := fun _ _ => id
#align with_zero.to_mul_bot_strict_mono WithZero.toMulBot_strictMono

@[simp]
theorem toMulBot_le : toMulBot a ≤ toMulBot b ↔ a ≤ b :=
  Iff.rfl
#align with_zero.to_mul_bot_le WithZero.toMulBot_le

@[simp]
theorem toMulBot_lt : toMulBot a < toMulBot b ↔ a < b :=
  Iff.rfl
#align with_zero.to_mul_bot_lt WithZero.toMulBot_lt

end WithZero
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=84862d2e30451deb7d51ef9005f53ce398483250c80ead2ae746ebbedd241476 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/ToMulBot/Variant1d7639f22147d591d670b3fb52ad29470a7c10641e60500c4aef3f22fa2c086a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
