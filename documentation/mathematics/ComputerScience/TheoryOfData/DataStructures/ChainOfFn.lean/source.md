# Chain Of Fn — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c870cf05bb7560c47bc31b0629e8ab5209b7fcb9` · SHA-256 `cb0766ac2fb1bf680063de8f2bed3371b86f1a8ddd2196be1323db5c4203938e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Joseph Myers. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joseph Myers
-/
import Mathlib.Data.List.Chain
import Mathlib.Data.List.OfFn

/-!
# Lemmas about `Chain'` and `OfFn`

This file provides lemmas involving both `List.Chain'` and `List.OfFn`.
-/

open Nat

namespace List

lemma chain'_ofFn {α : Type*} {n : ℕ} {f : Fin n → α} {r : α → α → Prop} :
    (ofFn f).Chain' r ↔ ∀ (i) (hi : i + 1 < n), r (f ⟨i, lt_of_succ_lt hi⟩) (f ⟨i + 1, hi⟩) := by
  simp_rw [chain'_iff_get, get_ofFn, length_ofFn]
  exact ⟨fun h i hi ↦ h i (by omega), fun h i hi ↦ h i (by omega)⟩

end List
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a21d6732a78a2397629ac22cbacc0fa368d69a2ab05d6162954297c8aa9c3705 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChainOfFn/Variantcb0766ac2fb1bf680063de8f2bed3371b86f1a8ddd2196be1323db5c4203938e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
