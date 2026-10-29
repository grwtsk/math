-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Sized.Variant0ce0e9452f8e9a099efc4f025af51a4c081ed5fb349f5e31333b30f2b0a67589","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0ce0e9452f8e9a099efc4f025af51a4c081ed5fb349f5e31333b30f2b0a67589","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Sized.Variant0ce0e9452f8e9a099efc4f025af51a4c081ed5fb349f5e31333b30f2b0a67589","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"0ce0e9452f8e9a099efc4f025af51a4c081ed5fb349f5e31333b30f2b0a67589","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/Finset/Slice.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Bhavik Mehta, Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bhavik Mehta, Alena Gusakov, Yaël Dillies
-/
import Mathlib.Algebra.BigOperators.Basic
import Mathlib.Data.Nat.Interval
import Mathlib.Order.Antichain


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Sized.Variant0ce0e9452f8e9a099efc4f025af51a4c081ed5fb349f5e31333b30f2b0a67589

#align_import data.finset.slice from "leanprover-community/mathlib"@"f7fc89d5d5ff1db2d1242c7bb0e9062ce47ef47c"

/-!
# `r`-sets and slice

This file defines the `r`-th slice of a set family and provides a way to say that a set family is
made of `r`-sets.

An `r`-set is a finset of cardinality `r` (aka of *size* `r`). The `r`-th slice of a set family is
the set family made of its `r`-sets.

## Main declarations

* `Set.Sized`: `A.Sized r` means that `A` only contains `r`-sets.
* `Finset.slice`: `A.slice r` is the set of `r`-sets in `A`.

## Notation

`A # r` is notation for `A.slice r` in locale `finset_family`.
-/


open Finset Nat

open BigOperators

variable {α : Type*} {ι : Sort*} {κ : ι → Sort*}

namespace Set

variable {A B : Set (Finset α)} {r : ℕ}

/-! ### Families of `r`-sets -/


/-- `Sized r A` means that every Finset in `A` has size `r`. -/
def Sized (r : ℕ) (A : Set (Finset α)) : Prop :=
  ∀ ⦃x⦄, x ∈ A → card x = r
#align set.sized Set.Sized

theorem Sized.mono (h : A ⊆ B) (hB : B.Sized r) : A.Sized r := fun _x hx => hB <| h hx
#align set.sized.mono Set.Sized.mono

theorem sized_union : (A ∪ B).Sized r ↔ A.Sized r ∧ B.Sized r :=
  ⟨fun hA => ⟨hA.mono <| subset_union_left _ _, hA.mono <| subset_union_right _ _⟩, fun hA _x hx =>
    hx.elim (fun h => hA.1 h) fun h => hA.2 h⟩
#align set.sized_union Set.sized_union

alias ⟨_, sized.union⟩ := sized_union
#align set.sized.union Set.sized.union

--TODO: A `forall_iUnion` lemma would be handy here.
@[simp]
theorem sized_iUnion {f : ι → Set (Finset α)} : (⋃ i, f i).Sized r ↔ ∀ i, (f i).Sized r := by
  simp_rw [Set.Sized, Set.mem_iUnion, forall_exists_index]
  exact forall_swap
#align set.sized_Union Set.sized_iUnion

-- @[simp] -- Porting note: left hand side is not simp-normal form.
theorem sized_iUnion₂ {f : ∀ i, κ i → Set (Finset α)} :
    (⋃ (i) (j), f i j).Sized r ↔ ∀ i j, (f i j).Sized r :=
 by simp only [Set.sized_iUnion]
#align set.sized_Union₂ Set.sized_iUnion₂

protected theorem Sized.isAntichain (hA : A.Sized r) : IsAntichain (· ⊆ ·) A :=
  fun _s hs _t ht h hst => h <| Finset.eq_of_subset_of_card_le hst ((hA ht).trans (hA hs).symm).le
#align set.sized.is_antichain Set.Sized.isAntichain

protected theorem Sized.subsingleton (hA : A.Sized 0) : A.Subsingleton :=
  subsingleton_of_forall_eq ∅ fun _s hs => card_eq_zero.1 <| hA hs
#align set.sized.subsingleton Set.Sized.subsingleton

theorem Sized.subsingleton' [Fintype α] (hA : A.Sized (Fintype.card α)) : A.Subsingleton :=
  subsingleton_of_forall_eq Finset.univ fun s hs => s.card_eq_iff_eq_univ.1 <| hA hs
#align set.sized.subsingleton' Set.Sized.subsingleton'

theorem Sized.empty_mem_iff (hA : A.Sized r) : ∅ ∈ A ↔ A = {∅} :=
  hA.isAntichain.bot_mem_iff
#align set.sized.empty_mem_iff Set.Sized.empty_mem_iff

theorem Sized.univ_mem_iff [Fintype α] (hA : A.Sized r) : Finset.univ ∈ A ↔ A = {Finset.univ} :=
  hA.isAntichain.top_mem_iff
#align set.sized.univ_mem_iff Set.Sized.univ_mem_iff

theorem sized_powersetLen (s : Finset α) (r : ℕ) : (powersetLen r s : Set (Finset α)).Sized r :=
  fun _t ht => (mem_powersetLen.1 ht).2
#align set.sized_powerset_len Set.sized_powersetLen

end Set

namespace Finset

section Sized

variable [Fintype α] {𝒜 : Finset (Finset α)} {s : Finset α} {r : ℕ}

theorem subset_powersetLen_univ_iff : 𝒜 ⊆ powersetLen r univ ↔ (𝒜 : Set (Finset α)).Sized r :=
  forall_congr' fun A => by rw [mem_powerset_len_univ_iff, mem_coe]
#align finset.subset_powerset_len_univ_iff Finset.subset_powersetLen_univ_iff

alias ⟨_, _root_.Set.Sized.subset_powersetLen_univ⟩ := subset_powersetLen_univ_iff
#align set.sized.subset_powerset_len_univ Set.Sized.subset_powersetLen_univ

theorem Set.Sized.card_le (h𝒜 : (𝒜 : Set (Finset α)).Sized r) :
    card 𝒜 ≤ (Fintype.card α).choose r := by
  rw [Fintype.card, ← card_powersetLen]
  exact card_le_of_subset (subset_powersetLen_univ_iff.mpr h𝒜)
#align set.sized.card_le Finset.Set.Sized.card_le

end Sized

/-! ### Slices -/


section Slice

variable {𝒜 : Finset (Finset α)} {A A₁ A₂ : Finset α} {r r₁ r₂ : ℕ}

/-- The `r`-th slice of a set family is the subset of its elements which have cardinality `r`. -/
def slice (𝒜 : Finset (Finset α)) (r : ℕ) : Finset (Finset α) :=
  𝒜.filter fun i => i.card = r
#align finset.slice Finset.slice

-- mathport name: finset.slice
-- Porting note: old code: scoped[FinsetFamily]
@[inherit_doc]
scoped[Finset] infixl:90 " # " => Finset.slice

/-- `A` is in the `r`-th slice of `𝒜` iff it's in `𝒜` and has cardinality `r`. -/
theorem mem_slice : A ∈ 𝒜 # r ↔ A ∈ 𝒜 ∧ A.card = r :=
  mem_filter
#align finset.mem_slice Finset.mem_slice

/-- The `r`-th slice of `𝒜` is a subset of `𝒜`. -/
theorem slice_subset : 𝒜 # r ⊆ 𝒜 :=
  filter_subset _ _
#align finset.slice_subset Finset.slice_subset

/-- Everything in the `r`-th slice of `𝒜` has size `r`. -/
theorem sized_slice : (𝒜 # r : Set (Finset α)).Sized r := fun _ => And.right ∘ mem_slice.mp
#align finset.sized_slice Finset.sized_slice

theorem eq_of_mem_slice (h₁ : A ∈ 𝒜 # r₁) (h₂ : A ∈ 𝒜 # r₂) : r₁ = r₂ :=
  (sized_slice h₁).symm.trans <| sized_slice h₂
#align finset.eq_of_mem_slice Finset.eq_of_mem_slice

/-- Elements in distinct slices must be distinct. -/
theorem ne_of_mem_slice (h₁ : A₁ ∈ 𝒜 # r₁) (h₂ : A₂ ∈ 𝒜 # r₂) : r₁ ≠ r₂ → A₁ ≠ A₂ :=
  mt fun h => (sized_slice h₁).symm.trans ((congr_arg card h).trans (sized_slice h₂))
#align finset.ne_of_mem_slice Finset.ne_of_mem_slice

theorem pairwiseDisjoint_slice : (Set.univ : Set ℕ).PairwiseDisjoint (slice 𝒜) := fun _ _ _ _ hmn =>
  disjoint_filter.2 fun _s _hs hm hn => hmn <| hm.symm.trans hn
#align finset.pairwise_disjoint_slice Finset.pairwiseDisjoint_slice

variable [Fintype α] (𝒜)

@[simp]
theorem biUnion_slice [DecidableEq α] : (Iic <| Fintype.card α).biUnion 𝒜.slice = 𝒜 :=
  Subset.antisymm (biUnion_subset.2 fun _r _ => slice_subset) fun s hs =>
    mem_biUnion.2 ⟨s.card, mem_Iic.2 <| s.card_le_univ, mem_slice.2 <| ⟨hs, rfl⟩⟩
#align finset.bUnion_slice Finset.biUnion_slice

@[simp]
theorem sum_card_slice : (∑ r in Iic (Fintype.card α), (𝒜 # r).card) = 𝒜.card := by
  letI := Classical.decEq α
  rw [← card_biUnion, biUnion_slice]
  exact Finset.pairwiseDisjoint_slice.subset (Set.subset_univ _)
#align finset.sum_card_slice Finset.sum_card_slice

end Slice

end Finset
