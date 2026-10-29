-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.GcUpperBoundsLowerBounds.Variant0b9f4b71ba9e2ce5dc839a1d9795c942c4635028c336af6d4cd97cde7a0f86db","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0b9f4b71ba9e2ce5dc839a1d9795c942c4635028c336af6d4cd97cde7a0f86db","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.GcUpperBoundsLowerBounds.Variant0b9f4b71ba9e2ce5dc839a1d9795c942c4635028c336af6d4cd97cde7a0f86db","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"0b9f4b71ba9e2ce5dc839a1d9795c942c4635028c336af6d4cd97cde7a0f86db","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/Bounds/Lattice.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Christopher Hoskin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christopher Hoskin
-/
import Mathlib.Data.Set.Lattice.Image

/-!
# Unions and intersections of bounds

Some results about upper and lower bounds over collections of sets.

## Implementation notes

In a separate file as we need to import `Mathlib/Data/Set/Lattice.lean`.

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.GcUpperBoundsLowerBounds.Variant0b9f4b71ba9e2ce5dc839a1d9795c942c4635028c336af6d4cd97cde7a0f86db

variable {α : Type*} [Preorder α] {ι : Sort*} {s : ι → Set α}

open Set

theorem gc_upperBounds_lowerBounds : GaloisConnection
    (OrderDual.toDual ∘ upperBounds : Set α → (Set α)ᵒᵈ)
    (lowerBounds ∘ OrderDual.ofDual : (Set α)ᵒᵈ → Set α) := by
  simpa [GaloisConnection, subset_def, mem_upperBounds, mem_lowerBounds]
    using fun S T ↦ forall₂_swap

@[simp]
theorem upperBounds_iUnion :
    upperBounds (⋃ i, s i) = ⋂ i, upperBounds (s i) :=
  gc_upperBounds_lowerBounds.l_iSup

@[simp]
theorem lowerBounds_iUnion :
    lowerBounds (⋃ i, s i) = ⋂ i, lowerBounds (s i) :=
  gc_upperBounds_lowerBounds.u_iInf

theorem isLUB_iUnion_iff_of_isLUB {u : ι → α} (hs : ∀ i, IsLUB (s i) (u i)) (c : α) :
    IsLUB (Set.range u) c ↔ IsLUB (⋃ i, s i) c := by
  refine isLUB_congr ?_
  simp_rw [range_eq_iUnion, upperBounds_iUnion, upperBounds_singleton, (hs _).upperBounds_eq]

theorem isGLB_iUnion_iff_of_isLUB {u : ι → α} (hs : ∀ i, IsGLB (s i) (u i)) (c : α) :
    IsGLB (Set.range u) c ↔ IsGLB (⋃ i, s i) c := by
  refine isGLB_congr ?_
  simp_rw [range_eq_iUnion, lowerBounds_iUnion, lowerBounds_singleton, (hs _).lowerBounds_eq]
