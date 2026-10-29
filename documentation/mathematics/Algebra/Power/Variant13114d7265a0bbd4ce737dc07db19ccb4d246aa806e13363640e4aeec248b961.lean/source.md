# Complete source: GRWTSK.Algebra.Power.Variant13114d7265a0bbd4ce737dc07db19ccb4d246aa806e13363640e4aeec248b961

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a295fde38a1ad90fad6fe602200ed4db989d41ae` · SHA-256 `13114d7265a0bbd4ce737dc07db19ccb4d246aa806e13363640e4aeec248b961`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2014 Robert Y. Lewis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robert Y. Lewis, Leonardo de Moura, Johannes Hölzl, Mario Carneiro
-/
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Ring.Int.Parity

/-!
# Results about powers in fields or division rings.

This file exists to ensure we can define `Field` with minimal imports,
so contains some lemmas about powers of elements which need imports
beyond those needed for the basic definition.
-/


variable {α : Type*}

section DivisionRing

variable [DivisionRing α] {n : ℤ}

theorem Odd.neg_zpow (h : Odd n) (a : α) : (-a) ^ n = -a ^ n := by
  have hn : n ≠ 0 := by rintro rfl; exact Int.not_even_iff_odd.2 h .zero
  obtain ⟨k, rfl⟩ := h
  simp_rw [zpow_add' (.inr (.inl hn)), zpow_one, zpow_mul, zpow_two, neg_mul_neg,
    neg_mul_eq_mul_neg]

theorem Odd.neg_one_zpow (h : Odd n) : (-1 : α) ^ n = -1 := by rw [h.neg_zpow, one_zpow]

end DivisionRing
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5e121c15499d91f0570e51612e49bcfb069b081980479b10738ee7f68daebee2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Power/Variant13114d7265a0bbd4ce737dc07db19ccb4d246aa806e13363640e4aeec248b961.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
