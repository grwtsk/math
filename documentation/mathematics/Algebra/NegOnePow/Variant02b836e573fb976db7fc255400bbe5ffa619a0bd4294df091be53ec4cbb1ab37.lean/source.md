# Complete source: GRWTSK.Algebra.NegOnePow.Variant02b836e573fb976db7fc255400bbe5ffa619a0bd4294df091be53ec4cbb1ab37

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `959c51fd5d28ecaac6075b741dbeb3fd656c2427` · SHA-256 `02b836e573fb976db7fc255400bbe5ffa619a0bd4294df091be53ec4cbb1ab37`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou, Johan Commelin
-/
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Ring.NegOnePow
import Mathlib.Tactic.NormNum

/-! # Integer powers of `-1` in a field -/

namespace Int

lemma cast_negOnePow (K : Type*) (n : ℤ) [DivisionRing K] : n.negOnePow = (-1 : K) ^ n := by
  rcases even_or_odd' n with ⟨k, rfl | rfl⟩
  · simp [zpow_mul, zpow_ofNat]
  · rw [zpow_add_one₀ (by norm_num), zpow_mul, zpow_ofNat]
    simp

end Int
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b6b22e98a005c731d8577d2888b78343b5bbe7995657d087bd02b88aaa030a46 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/NegOnePow/Variant02b836e573fb976db7fc255400bbe5ffa619a0bd4294df091be53ec4cbb1ab37.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
