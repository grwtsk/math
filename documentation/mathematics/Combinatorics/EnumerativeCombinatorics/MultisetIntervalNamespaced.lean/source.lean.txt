-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.IccEq.Variant22a6243e690fb5922f52332822e7050a25e487a206de563be616d8ab588a1501","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"22a6243e690fb5922f52332822e7050a25e487a206de563be616d8ab588a1501","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.IccEq.Variant22a6243e690fb5922f52332822e7050a25e487a206de563be616d8ab588a1501","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"22a6243e690fb5922f52332822e7050a25e487a206de563be616d8ab588a1501","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Multiset/Interval.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Data.DFinsupp.Interval
import Mathlib.Data.DFinsupp.Multiset
import Mathlib.Order.Interval.Finset.Nat
import Mathlib.Data.Nat.Lattice

/-!
# Finite intervals of multisets

This file provides the `LocallyFiniteOrder` instance for `Multiset α` and calculates the
cardinality of its finite intervals.

## Implementation notes

We implement the intervals via the intervals on `DFinsupp`, rather than via filtering
`Multiset.Powerset`; this is because `(Multiset.replicate n x).Powerset` has `2^n` entries not `n+1`
entries as it contains duplicates. We do not go via `Finsupp` as this would be noncomputable, and
multisets are typically used computationally.

-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.IccEq.Variant22a6243e690fb5922f52332822e7050a25e487a206de563be616d8ab588a1501

open Finset DFinsupp Function

open Pointwise

variable {α : Type*}

namespace Multiset

variable [DecidableEq α] (s t : Multiset α)

instance instLocallyFiniteOrder : LocallyFiniteOrder (Multiset α) :=
  LocallyFiniteOrder.ofIcc (Multiset α)
    (fun s t => (Finset.Icc (toDFinsupp s) (toDFinsupp t)).map
      Multiset.equivDFinsupp.toEquiv.symm.toEmbedding)
    fun s t x => by simp

theorem Icc_eq :
    Finset.Icc s t = (Finset.Icc (toDFinsupp s) (toDFinsupp t)).map
      Multiset.equivDFinsupp.toEquiv.symm.toEmbedding :=
  rfl

theorem uIcc_eq :
    uIcc s t =
      (uIcc (toDFinsupp s) (toDFinsupp t)).map Multiset.equivDFinsupp.toEquiv.symm.toEmbedding :=
  (Icc_eq _ _).trans <| by simp [uIcc]

theorem card_Icc :
    #(Finset.Icc s t) = ∏ i ∈ s.toFinset ∪ t.toFinset, (t.count i + 1 - s.count i) := by
  simp_rw [Icc_eq, Finset.card_map, DFinsupp.card_Icc, Nat.card_Icc, Multiset.toDFinsupp_apply,
    toDFinsupp_support]

theorem card_Ico :
    #(Finset.Ico s t) = ∏ i ∈ s.toFinset ∪ t.toFinset, (t.count i + 1 - s.count i) - 1 := by
  rw [Finset.card_Ico_eq_card_Icc_sub_one, card_Icc]

theorem card_Ioc :
    #(Finset.Ioc s t) = ∏ i ∈ s.toFinset ∪ t.toFinset, (t.count i + 1 - s.count i) - 1 := by
  rw [Finset.card_Ioc_eq_card_Icc_sub_one, card_Icc]

theorem card_Ioo :
    #(Finset.Ioo s t) = ∏ i ∈ s.toFinset ∪ t.toFinset, (t.count i + 1 - s.count i) - 2 := by
  rw [Finset.card_Ioo_eq_card_Icc_sub_two, card_Icc]

theorem card_uIcc :
    (uIcc s t).card = ∏ i ∈ s.toFinset ∪ t.toFinset, ((t.count i - s.count i : ℤ).natAbs + 1) := by
  simp_rw [uIcc_eq, Finset.card_map, DFinsupp.card_uIcc, Nat.card_uIcc, Multiset.toDFinsupp_apply,
    toDFinsupp_support]

theorem card_Iic : (Finset.Iic s).card = ∏ i ∈ s.toFinset, (s.count i + 1) := by
  simp_rw [Iic_eq_Icc, card_Icc, bot_eq_zero, toFinset_zero, empty_union, count_zero, tsub_zero]

end Multiset
