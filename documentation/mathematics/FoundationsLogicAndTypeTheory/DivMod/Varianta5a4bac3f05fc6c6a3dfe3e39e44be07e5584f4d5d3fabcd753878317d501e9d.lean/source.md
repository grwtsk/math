# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.DivMod.Varianta5a4bac3f05fc6c6a3dfe3e39e44be07e5584f4d5d3fabcd753878317d501e9d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `69695b9e2aec6d1e8b5ab91b8fdd4374bfa2bc57` · SHA-256 `a5a4bac3f05fc6c6a3dfe3e39e44be07e5584f4d5d3fabcd753878317d501e9d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Mathlib.Init

/-!
# Basic lemmas about division and modulo for integers

-/

public section

namespace Int

/-! ### `ediv` and `fdiv` -/

theorem mul_ediv_le_mul_ediv_assoc {a : Int} (ha : 0 ≤ a) (b : Int) {c : Int} (hc : 0 ≤ c) :
    a * (b / c) ≤ a * b / c := by
  obtain rfl | hlt : c = 0 ∨ 0 < c := by lia
  · simp
  · rw [Int.le_ediv_iff_mul_le hlt, Int.mul_assoc]
    exact Int.mul_le_mul_of_nonneg_left (Int.ediv_mul_le b (Int.ne_of_gt hlt)) ha

theorem fdiv_fdiv_eq_fdiv_mul (m : Int) {n k : Int} (hn : 0 ≤ n) (hk : 0 ≤ k) :
    (m.fdiv n).fdiv k = m.fdiv (n * k) := by
  rw [Int.fdiv_eq_ediv_of_nonneg _ hn,
    Int.fdiv_eq_ediv_of_nonneg _ hk,
    Int.fdiv_eq_ediv_of_nonneg _ (Int.mul_nonneg hn hk),
    ediv_ediv_of_nonneg hn]

/-! ### `emod` -/

theorem emod_eq_sub_self_emod {a b : Int} : a % b = (a - b) % b :=
  (sub_emod_right a b).symm

end Int
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=56c4022b52f9268313c5dd97352e34b0297890ad80d12252c9f7a882d38eb2f1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/DivMod/Varianta5a4bac3f05fc6c6a3dfe3e39e44be07e5584f4d5d3fabcd753878317d501e9d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
