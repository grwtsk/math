# Succ Pred With Bot — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bd3460556c4cc3884494e739bbcb3067c7c339cc` · SHA-256 `f67d167f3a27f40d54f3fadfd29245fd1bf012dd4c18233e6f3509108b764fcd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Yaël Dillies, Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies, Andrew Yang
-/
import Mathlib.Algebra.Order.Monoid.Unbundled.WithTop
import Mathlib.Algebra.Order.SuccPred
import Mathlib.Order.SuccPred.WithBot

/-!
# Algebraic properties of the successor function on `WithBot`
-/

namespace WithBot
variable {α : Type*} [Preorder α] [OrderBot α] [AddMonoidWithOne α] [SuccAddOrder α]

lemma succ_natCast (n : ℕ) : succ (n : WithBot α) = n + 1 := by
  rw [← WithBot.coe_natCast, succ_coe, Order.succ_eq_add_one]

@[simp] lemma succ_zero : succ (0 : WithBot α) = 1 := by simpa using succ_natCast 0

@[simp]
lemma succ_one : succ (1 : WithBot α) = 2 := by simpa [one_add_one_eq_two] using succ_natCast 1

@[simp]
lemma succ_ofNat (n : ℕ) [n.AtLeastTwo] :
    succ (ofNat(n) : WithBot α) = ofNat(n) + 1 := succ_natCast n

lemma one_le_iff_pos {α : Type*} [PartialOrder α] [AddMonoidWithOne α]
    [ZeroLEOneClass α] [NeZero (1 : α)] [SuccAddOrder α] (a : WithBot α) : 1 ≤ a ↔ 0 < a := by
  cases a <;> simp [Order.one_le_iff_pos]

end WithBot
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=27fb9fd6a5fed64db853d1ced9ae7ca7bbcd8019024d2f265c3267a52f55b617 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/WithBot/Variantf67d167f3a27f40d54f3fadfd29245fd1bf012dd4c18233e6f3509108b764fcd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
