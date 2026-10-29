# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Nat.Variant7449225ce0254c2b6b09d5518bec2368793746c10a234d340dff61e5f6ec56f9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e4fee53568486e2fd57cbe1bfeb33849bb425969` · SHA-256 `7449225ce0254c2b6b09d5518bec2368793746c10a234d340dff61e5f6ec56f9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
import Init.Data.Nat.Lemmas
public import Init.Data.Range.Polymorphic.Instances
import Init.Data.Nat.MinMax
import Init.Omega
import Init.RCases

set_option doc.verso true

public section

open Std PRange

namespace Std.PRange

instance : UpwardEnumerable Nat where
  succ? n := some (n + 1)
  succMany? k n := some (n + k)

instance : Least? Nat where
  least? := some 0

instance : LawfulUpwardEnumerableLeast? Nat where
  least?_le a := by
    simpa [Least?.least?] using ⟨a, by simp [UpwardEnumerable.succMany?]⟩

instance : LawfulUpwardEnumerableLE Nat where
  le_iff a b := by
    constructor
    · intro h
      exact ⟨b - a, by simp [UpwardEnumerable.succMany?, Nat.add_sub_cancel' h]⟩
    · rintro ⟨n, hn⟩
      simp only [UpwardEnumerable.succMany?, Option.some.injEq] at hn
      rw [← hn]
      exact Nat.le_add_right _ _

instance : LawfulUpwardEnumerable Nat where
  succMany?_zero := by simp [UpwardEnumerable.succMany?]
  succMany?_add_one := by simp [UpwardEnumerable.succMany?, UpwardEnumerable.succ?, Nat.add_assoc]
  ne_of_lt a b hlt := by
    have hn := hlt.choose_spec
    simp only [UpwardEnumerable.succMany?, Option.some.injEq] at hn
    omega

instance : LawfulUpwardEnumerableLT Nat := inferInstance

instance : InfinitelyUpwardEnumerable Nat where
  isSome_succ? a := by simp [UpwardEnumerable.succ?]

instance : Rxc.HasSize Nat where
  size lo hi := hi + 1 - lo

instance : Rxo.HasSize Nat := .ofClosed

instance : Rxc.LawfulHasSize Nat where
  size_eq_zero_of_not_le lo hi hu := by
    simp only [Rxc.HasSize.size] at hu ⊢
    omega
  size_eq_one_of_succ?_eq_none upperBound init hu h := by
    simp only [UpwardEnumerable.succ?] at h
    cases h
  size_eq_succ_of_succ?_eq_some upperBound init hu h := by
    simp only [Rxc.HasSize.size, UpwardEnumerable.succ?,
      Option.some.injEq] at hu h ⊢
    omega

instance : Rxc.IsAlwaysFinite Nat := inferInstance
instance : Rxo.LawfulHasSize Nat := inferInstance
instance : Rxo.IsAlwaysFinite Nat := inferInstance

instance : LinearlyUpwardEnumerable Nat := inferInstance

end PRange

/-!
The following instances are used for the implementation of array slices a.k.a.
{name (scope := "Init.Data.Array.Subarray")}`Subarray`.
See also {module -checked}`Init.Data.Slice.Array`.
-/

instance : Roo.HasRcoIntersection Nat where
  intersection r s := (max (r.lower + 1) s.lower)...(min r.upper s.upper)

example (h : b + 1 ≤ a) : b < a := by omega

instance : Roo.LawfulRcoIntersection Nat where
  mem_intersection_iff {a r s} := by
    simp only [Roo.HasRcoIntersection.intersection, Membership.mem, Nat.max_le, Nat.lt_min]
    omega

instance : Roc.HasRcoIntersection Nat where
  intersection r s := (max (r.lower + 1) s.lower)...(min (r.upper + 1) s.upper)

instance : Roc.LawfulRcoIntersection Nat where
  mem_intersection_iff {a r s} := by
    simp only [Roc.HasRcoIntersection.intersection, Membership.mem, Nat.max_le, Nat.lt_min]
    omega

instance : Roi.HasRcoIntersection Nat where
  intersection r s := (max (r.lower + 1) s.lower)...s.upper

instance : Roi.LawfulRcoIntersection Nat where
  mem_intersection_iff {a r s} := by
    simp only [Roi.HasRcoIntersection.intersection, Membership.mem, Nat.max_le]
    omega

instance : Rco.HasRcoIntersection Nat where
  intersection r s := (max r.lower s.lower)...(min r.upper s.upper)

instance : Rco.LawfulRcoIntersection Nat where
  mem_intersection_iff {a r s} := by
    simp only [Rco.HasRcoIntersection.intersection, Membership.mem, Nat.max_le, Nat.lt_min]
    omega

instance : Rcc.HasRcoIntersection Nat where
  intersection r s := (max r.lower s.lower)...(min (r.upper + 1) s.upper)

instance : Rcc.LawfulRcoIntersection Nat where
  mem_intersection_iff {a r s} := by
    simp only [Rcc.HasRcoIntersection.intersection, Membership.mem, Nat.max_le, Nat.lt_min]
    omega

instance : Rci.HasRcoIntersection Nat where
  intersection r s := (max r.lower s.lower)...s.upper

instance : Rci.LawfulRcoIntersection Nat where
  mem_intersection_iff {a r s} := by
    simp only [Rci.HasRcoIntersection.intersection, Membership.mem, Nat.max_le]
    omega

instance : Rio.HasRcoIntersection Nat where
  intersection r s := s.lower...(min r.upper s.upper)

instance : Rio.LawfulRcoIntersection Nat where
  mem_intersection_iff {a r s} := by
    simp only [Rio.HasRcoIntersection.intersection, Membership.mem]
    omega

instance : Ric.HasRcoIntersection Nat where
  intersection r s := s.lower...(min (r.upper + 1) s.upper)

instance : Ric.LawfulRcoIntersection Nat where
  mem_intersection_iff {a r s} := by
    simp only [Ric.HasRcoIntersection.intersection, Membership.mem]
    omega

end Std
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1f8bc4740e7665b2cdc375150415a78534a3977cd8e7549bab42161e6610b35b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variant7449225ce0254c2b6b09d5518bec2368793746c10a234d340dff61e5f6ec56f9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
