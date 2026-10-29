# Pairwise Public Edition4 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e37a247aef2fde0faf4c8f9c11959ec5ed624913` · SHA-256 `d4a6f9d7fdbd2df7948d607b9f6b539451249959965f3d7f69da9fdc04334704`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 François G. Dorais. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: François G. Dorais
-/
module

public import Batteries.Tactic.Alias

@[expose] public section

namespace Array

/--
`Pairwise R as` means that all the elements of the array `as` are `R`-related to all elements with
larger indices.

`Pairwise R #[1, 2, 3] ↔ R 1 2 ∧ R 1 3 ∧ R 2 3`

For example `as.Pairwise (· ≠ ·)` asserts that `as` has no duplicates, `as.Pairwise (· < ·)` asserts
that `as` is strictly sorted and `as.Pairwise (· ≤ ·)` asserts that `as` is weakly sorted.
-/
def Pairwise (R : α → α → Prop) (as : Array α) : Prop := as.toList.Pairwise R

theorem pairwise_iff_getElem {as : Array α} : as.Pairwise R ↔
    ∀ (i j : Nat) (_ : i < as.size) (_ : j < as.size), i < j → R as[i] as[j] := by
  unfold Pairwise; simp [List.pairwise_iff_getElem, length_toList]

@[deprecated (since := "2025-02-19")] alias pairwise_iff_get := pairwise_iff_getElem

instance (R : α → α → Prop) [DecidableRel R] (as) : Decidable (Pairwise R as) :=
  have : (∀ (j : Fin as.size) (i : Fin j.val), R as[i.val] (as[j.val])) ↔ Pairwise R as := by
    rw [pairwise_iff_getElem]
    constructor
    · intro h i j _ hj hlt; exact h ⟨j, hj⟩ ⟨i, hlt⟩
    · intro h ⟨j, hj⟩ ⟨i, hlt⟩; exact h i j (Nat.lt_trans hlt hj) hj hlt
  decidable_of_iff _ this

@[grind ←]
theorem pairwise_empty : #[].Pairwise R := by
  unfold Pairwise; exact List.Pairwise.nil

@[grind ←]
theorem pairwise_singleton (R : α → α → Prop) (a) : #[a].Pairwise R := by
  unfold Pairwise; exact List.pairwise_singleton ..

@[grind =]
theorem pairwise_pair : #[a, b].Pairwise R ↔ R a b := by
  unfold Pairwise; exact List.pairwise_pair

@[grind =]
theorem pairwise_append {as bs : Array α} :
    (as ++ bs).Pairwise R ↔ as.Pairwise R ∧ bs.Pairwise R ∧ (∀ x ∈ as, ∀ y ∈ bs, R x y) := by
  unfold Pairwise; simp [← mem_toList_iff, toList_append, ← List.pairwise_append]

@[grind =]
theorem pairwise_push {as : Array α} :
    (as.push a).Pairwise R ↔ as.Pairwise R ∧ (∀ x ∈ as, R x a) := by
  unfold Pairwise
  simp [← mem_toList_iff, toList_push, List.pairwise_append]

@[grind ←]
theorem pairwise_extract {as : Array α} (h : as.Pairwise R) (start stop) :
    (as.extract start stop).Pairwise R := by
  simp only [pairwise_iff_getElem, getElem_extract, size_extract] at h ⊢
  intro _ _ _ _ hlt
  apply h
  exact Nat.add_lt_add_left hlt start
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9dd9dd20ffc5b68bc85d96902e9a7868f4566c81d8bb4b47bad471515a2251bf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variantd4a6f9d7fdbd2df7948d607b9f6b539451249959965f3d7f69da9fdc04334704.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
