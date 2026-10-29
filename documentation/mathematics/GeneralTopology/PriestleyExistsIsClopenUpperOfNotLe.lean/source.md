# Priestley Exists Is Clopen Upper Of Not Le — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e20e89838f85af0db8be84bb30cfde6db31f646c` · SHA-256 `c9022f5446118f78086e9a14323949b9ae191f620f6d3f31433ba5bbeba0700c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Topology.Separation.Hausdorff
import Mathlib.Topology.Clopen

/-!
# Priestley spaces

This file defines Priestley spaces. A Priestley space is an ordered compact topological space such
that any two distinct points can be separated by a clopen upper set.

## Main declarations

* `PriestleySpace`: Prop-valued mixin stating the Priestley separation axiom: Any two distinct
  points can be separated by a clopen upper set.

## Implementation notes

We do not include compactness in the definition, so a Priestley space is to be declared as follows:
`[Preorder α] [TopologicalSpace α] [CompactSpace α] [PriestleySpace α]`

## References

* [Wikipedia, *Priestley space*](https://en.wikipedia.org/wiki/Priestley_space)
* [Davey, Priestley *Introduction to Lattices and Order*][davey_priestley]
-/


open Set

variable {α : Type*}

/-- A Priestley space is an ordered topological space such that any two distinct points can be
separated by a clopen upper set. Compactness is often assumed, but we do not include it here. -/
class PriestleySpace (α : Type*) [Preorder α] [TopologicalSpace α] : Prop where
  priestley {x y : α} : ¬x ≤ y → ∃ U : Set α, IsClopen U ∧ IsUpperSet U ∧ x ∈ U ∧ y ∉ U

variable [TopologicalSpace α]

section Preorder

variable [Preorder α] [PriestleySpace α] {x y : α}

theorem exists_isClopen_upper_of_not_le :
    ¬x ≤ y → ∃ U : Set α, IsClopen U ∧ IsUpperSet U ∧ x ∈ U ∧ y ∉ U :=
  PriestleySpace.priestley

theorem exists_isClopen_lower_of_not_le (h : ¬x ≤ y) :
    ∃ U : Set α, IsClopen U ∧ IsLowerSet U ∧ x ∉ U ∧ y ∈ U :=
  let ⟨U, hU, hU', hx, hy⟩ := exists_isClopen_upper_of_not_le h
  ⟨Uᶜ, hU.compl, hU'.compl, Classical.not_not.2 hx, hy⟩

end Preorder

section PartialOrder

variable [PartialOrder α] [PriestleySpace α] {x y : α}

theorem exists_isClopen_upper_or_lower_of_ne (h : x ≠ y) :
    ∃ U : Set α, IsClopen U ∧ (IsUpperSet U ∨ IsLowerSet U) ∧ x ∈ U ∧ y ∉ U := by
  obtain h | h := h.not_le_or_not_le
  · exact (exists_isClopen_upper_of_not_le h).imp fun _ ↦ And.imp_right <| And.imp_left Or.inl
  · obtain ⟨U, hU, hU', hy, hx⟩ := exists_isClopen_lower_of_not_le h
    exact ⟨U, hU, Or.inr hU', hx, hy⟩

-- See note [lower instance priority]
instance (priority := 100) PriestleySpace.toT2Space : T2Space α :=
  ⟨fun _ _ h ↦
    let ⟨U, hU, _, hx, hy⟩ := exists_isClopen_upper_or_lower_of_ne h
    ⟨U, Uᶜ, hU.isOpen, hU.compl.isOpen, hx, hy, disjoint_compl_right⟩⟩

end PartialOrder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c697f943f68f9ce294dc5b166e50a9b2b4a42da2778b62db0752c17bba68c54 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Priestley/Variantc9022f5446118f78086e9a14323949b9ae191f620f6d3f31433ba5bbeba0700c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
