# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Ordered.Variant7c6945385c127f79f4557b696f4f00a4d07f1932a173adde76706b956b0cfb61

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e2b1c2cbcb8958c1dd10bc71564a7a20e099503b` · SHA-256 `7c6945385c127f79f4557b696f4f00a4d07f1932a173adde76706b956b0cfb61`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

prelude
public import Std.Data.DTreeMap.Internal.Def
public import Std.Data.Internal.Cut
import Init.Data.List.Pairwise
import Init.Data.List.Sublist

@[expose] public section

/-!
# `Ordered` predicate

This file defines what it means for a tree map to be ordered. This definition is encoded in the
`Ordered` predicate.
-/

set_option autoImplicit false
set_option linter.all true

universe u v w

variable {α : Type u} {β : α → Type v}

namespace Std.DTreeMap.Internal.Impl
open Std.Internal

/-- Implementation detail of the tree map -/
def Ordered [Ord α] (t : Impl α β) : Prop :=
  t.toListModel.Pairwise (fun a b => compare a.1 b.1 = .lt)

/-!
## Lemmas about the `Ordered` predicate
-/

theorem Ordered.left [Ord α] {sz k v l r} (h : (.inner sz k v l r : Impl α β).Ordered) :
    l.Ordered :=
  h.sublist (by simp)

theorem Ordered.right [Ord α] {sz k v l r} (h : (.inner sz k v l r : Impl α β).Ordered) :
    r.Ordered :=
  h.sublist (by simp)

theorem Ordered.compare_left [Ord α] {sz k v l r} (h : (.inner sz k v l r : Impl α β).Ordered)
    {k'} (hk' : k' ∈ l.toListModel) : compare k'.1 k = .lt :=
  h.rel_of_mem_append hk' List.mem_cons_self

theorem Ordered.compare_left_beq_gt [Ord α] [TransOrd α] {k : α → Ordering} [IsStrictCut compare k]
    {sz k' v' l r} (ho : (.inner sz k' v' l r : Impl α β).Ordered) (hcmp : (k k').isGE)
    (p) (hp : p ∈ l.toListModel) : k p.1 == .gt :=
 beq_iff_eq.2 (IsStrictCut.gt_of_isGE_of_gt hcmp (OrientedCmp.gt_of_lt (ho.compare_left hp)))

theorem Ordered.compare_left_not_beq_eq [Ord α] [TransOrd α] {k : α → Ordering}
    [IsStrictCut compare k] {sz k' v' l r}
    (ho : (.inner sz k' v' l r : Impl α β).Ordered) (hcmp : (k k').isGE)
    (p) (hp : p ∈ l.toListModel) : ¬(k p.1 == .eq) := by
  suffices k p.fst = .gt by simp [this]
  exact IsStrictCut.gt_of_isGE_of_gt hcmp (OrientedCmp.gt_of_lt (ho.compare_left hp))

theorem Ordered.compare_right [Ord α] {sz k v l r}
    (h : (.inner sz k v l r : Impl α β).Ordered) {k'} (hk' : k' ∈ r.toListModel) :
    compare k k'.1 = .lt := by
  exact List.rel_of_pairwise_cons (h.sublist (List.sublist_append_right _ _)) hk'

theorem Ordered.compare_right_not_beq_gt [Ord α] [TransOrd α] {k : α → Ordering}
    [IsStrictCut compare k] {sz k' v' l r}
    (ho : (.inner sz k' v' l r : Impl α β).Ordered) (hcmp : (k k').isLE)
    (p) (hp : p ∈ r.toListModel) : ¬(k p.1 == .gt) := by
  suffices k p.fst = .lt by simp [this]
  exact IsStrictCut.lt_of_isLE_of_lt hcmp (ho.compare_right hp)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4da80cfea2bd919f595c9b9c926e52fd4d03ebc5d92cbb128a80041c8340be75 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ordered/Variant7c6945385c127f79f4557b696f4f00a4d07f1932a173adde76706b956b0cfb61.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
