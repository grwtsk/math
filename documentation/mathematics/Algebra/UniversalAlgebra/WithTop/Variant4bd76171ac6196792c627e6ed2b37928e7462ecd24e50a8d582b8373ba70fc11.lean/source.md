# Complete source: GRWTSK.Algebra.UniversalAlgebra.WithTop.Variant4bd76171ac6196792c627e6ed2b37928e7462ecd24e50a8d582b8373ba70fc11

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `87ebd68826b99375d43d1359d1ed00717e9f5707` · SHA-256 `4bd76171ac6196792c627e6ed2b37928e7462ecd24e50a8d582b8373ba70fc11`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2014 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Algebra.Ring.Nat
import Mathlib.Algebra.Order.Monoid.Unbundled.WithTop

/-!
# Lemma about the coercion `ℕ → WithBot ℕ`.

An orphaned lemma about casting from `ℕ` to `WithBot ℕ`,
exiled here during the port to minimize imports of `Algebra.Order.Ring.Rat`.
-/

instance : WellFoundedRelation (WithTop ℕ) where
  rel := (· < ·)
  wf := IsWellFounded.wf

theorem Nat.cast_withTop (n : ℕ) : Nat.cast n = WithTop.some n :=
  rfl

theorem Nat.cast_withBot (n : ℕ) : Nat.cast n = WithBot.some n :=
  rfl
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=088a789ab4a7f467be41dcd812a0bf14ecdc1bd8561a0a8a2028736fa6eb89a0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/WithTop/Variant4bd76171ac6196792c627e6ed2b37928e7462ecd24e50a8d582b8373ba70fc11.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
