# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Union.Variant22c9961f9bcfa26055572378b2649bc0ef7e1feeb6e89d3a830dabf9437f08b7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce88c92a1d4471beb359c614607189ea99f9b5a4` · SHA-256 `22c9961f9bcfa26055572378b2649bc0ef7e1feeb6e89d3a830dabf9437f08b7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Oliver Butterley. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Oliver Butterley
-/
import Mathlib.Data.Finset.Range
import Mathlib.Data.Set.Lattice
import Mathlib.Order.Interval.Set.LinearOrder

/-!
# Extra lemmas about unions of intervals

This file contains lemmas about finite unions of intervals which can't be included with the lemmas
concerning infinite unions in `Mathlib/Order/Interval/Set/Disjoint.lean` because we use
`Finset.range`.
-/

open Set

/-- Union of consecutive intervals contains the interval defined by the initial and final points. -/
theorem Ioc_subset_biUnion_Ioc {X : Type*} [LinearOrder X] (N : ℕ) (a : ℕ → X) :
    Ioc (a 0) (a N) ⊆ ⋃ i ∈ Finset.range N, Ioc (a i) (a (i + 1)) := by
  induction N with
  | zero => simp
  | succ N ih => calc
    _ ⊆ Ioc (a 0) (a N) ∪ Ioc (a N) (a (N + 1)) := Ioc_subset_Ioc_union_Ioc
    _ ⊆ _ := by simpa [Finset.range_succ] using union_subset_union_right (Ioc (a N) (a (N + 1))) ih

/-- Union of consecutive intervals contains the interval defined by the initial and final points. -/
theorem Ico_subset_biUnion_Ico {X : Type*} [LinearOrder X] (N : ℕ) (a : ℕ → X) :
    Ico (a 0) (a N) ⊆ ⋃ i ∈ Finset.range N, Ico (a i) (a (i + 1)) := by
  induction N with
  | zero => simp
  | succ N ih => calc
    _ ⊆ Ico (a 0) (a N) ∪ Ico (a N) (a (N + 1)) := Ico_subset_Ico_union_Ico
    _ ⊆ _ := by simpa [Finset.range_succ] using union_subset_union_right (Ico (a N) (a (N + 1))) ih
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f3f64319452019ab6dfe937dd7382274c4f1995176c4415b4700f5fa5a7b4f2b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Union/Variant22c9961f9bcfa26055572378b2649bc0ef7e1feeb6e89d3a830dabf9437f08b7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
