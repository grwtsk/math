# Set List Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e31a4fa978f35d360a5a36242eadc2509f342a98` · SHA-256 `06e610296fa17c5f604d3a4292fa32adbbb74f636a102827b3c2f8c892c4300d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
module

public import Mathlib.Data.Set.Image
public import Mathlib.Data.List.Defs

/-!
# Lemmas about `List`s and `Set.range`

In this file we prove lemmas about range of some operations on lists.
-/

public section


open List

variable {α β : Type*} (l : List α)

namespace Set

theorem range_list_map (f : α → β) : range (map f) = { l | ∀ x ∈ l, x ∈ range f } := by
  refine antisymm (range_subset_iff.2 fun l => forall_mem_map.2 fun y _ => mem_range_self _)
      fun l hl => ?_
  induction l with
  | nil => exact ⟨[], rfl⟩
  | cons a l ihl =>
    rcases ihl fun x hx => hl x <| subset_cons_self _ _ hx with ⟨l, rfl⟩
    rcases hl a mem_cons_self with ⟨a, rfl⟩
    exact ⟨a :: l, map_cons⟩

theorem range_list_map_coe (s : Set α) : range (map ((↑) : s → α)) = { l | ∀ x ∈ l, x ∈ s } := by
  rw [range_list_map, Subtype.range_coe]

@[simp]
theorem range_list_get : range l.get = { x | x ∈ l } := by
  ext x
  rw [mem_ofPred_eq, mem_iff_get, mem_range]

theorem range_list_getElem? :
    range (l[·]? : ℕ → Option α) = insert none (some '' { x | x ∈ l }) := by
  rw [← range_list_get, ← range_comp]
  refine (range_subset_iff.2 fun n => ?_).antisymm (insert_subset_iff.2 ⟨?_, ?_⟩)
  · exact (le_or_gt l.length n).imp getElem?_eq_none_iff.mpr
      (fun hlt => ⟨⟨_, hlt⟩, (getElem?_eq_getElem hlt).symm⟩)
  · exact ⟨_, getElem?_eq_none_iff.mpr le_rfl⟩
  · exact range_subset_iff.2 fun k => ⟨_, getElem?_eq_getElem _⟩

@[simp]
theorem range_list_getD (d : α) : (range fun n : Nat => l[n]?.getD d) = insert d { x | x ∈ l } :=
  calc
    (range fun n => l[n]?.getD d) = (fun o : Option α => o.getD d) '' range (l[·]?) := by
      simp only [← range_comp, Function.comp_def]
      rfl
    _ = insert d { x | x ∈ l } := by simp [range_list_getElem?, image_image]

@[simp]
theorem range_list_getI [Inhabited α] (l : List α) :
    range l.getI = insert default { x | x ∈ l } := by
  unfold List.getI
  simp

end Set

/-- If each element of a list can be lifted to some type, then the whole list can be
lifted to this type. -/
instance List.canLift (c) (p) [CanLift α β c p] :
    CanLift (List α) (List β) (List.map c) fun l => ∀ x ∈ l, p x where
  prf l H := by
    rw [← Set.mem_range, Set.range_list_map]
    exact fun a ha => CanLift.prf a (H a ha)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a8a97e7dbf6a4b0cfc19b2f920a6c4bcfbe1c77a7e7c32e43d6e64c8c063db6d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant06e610296fa17c5f604d3a4292fa32adbbb74f636a102827b3c2f8c892c4300d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
