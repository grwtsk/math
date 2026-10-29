# Chain Of Fn Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2e4822881283e9944592bff5799a050ebe67c62f` · SHA-256 `51b19aa33ff4137c0987586d12ffbc031738e940ad30bc63c240aa07254860fc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Joseph Myers. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joseph Myers
-/
module

public import Batteries.Data.List.Lemmas
public import Mathlib.Tactic.Common
public import Mathlib.Tactic.Finiteness.Attr
public import Mathlib.Tactic.ToDual

/-!
# Lemmas about `IsChain` and `ofFn`

This file provides lemmas involving both `List.IsChain` and `List.ofFn`.
-/

public section

open Nat

namespace List

lemma isChain_ofFn {α : Type*} {n : ℕ} {f : Fin n → α} {r : α → α → Prop} :
    (ofFn f).IsChain r ↔ ∀ (i) (hi : i + 1 < n), r (f ⟨i, lt_of_succ_lt hi⟩) (f ⟨i + 1, hi⟩) := by
  simp_rw [isChain_iff_getElem, List.getElem_ofFn, length_ofFn]

end List
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0979096ff8e80483a79e67c7445e5ec5be529e6d754e32606f160ea501366159 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChainOfFn/Variant51b19aa33ff4137c0987586d12ffbc031738e940ad30bc63c240aa07254860fc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
