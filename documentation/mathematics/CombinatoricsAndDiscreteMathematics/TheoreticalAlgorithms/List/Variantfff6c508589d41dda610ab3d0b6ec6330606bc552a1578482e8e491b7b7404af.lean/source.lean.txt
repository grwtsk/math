-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NodupPairwiseOfSetPairwise.Variant881d7715957d0dd295b77557163b202f3a6325e700511acac9dec063b0638052","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"881d7715957d0dd295b77557163b202f3a6325e700511acac9dec063b0638052","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.NodupPairwiseOfSetPairwise.Variant881d7715957d0dd295b77557163b202f3a6325e700511acac9dec063b0638052","mathematical_subject":"Computation.DataStructures","original_sha256":"881d7715957d0dd295b77557163b202f3a6325e700511acac9dec063b0638052","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Set/Pairwise/List.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Kenny Lau
-/
import Mathlib.Data.List.Nodup
import Mathlib.Data.Set.Pairwise.Basic

/-!
# Translating pairwise relations on sets to lists

On a list with no duplicates, the condition of `Set.Pairwise` and `List.Pairwise` are equivalent.
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NodupPairwiseOfSetPairwise.Variant881d7715957d0dd295b77557163b202f3a6325e700511acac9dec063b0638052

variable {α : Type*} {r : α → α → Prop}

namespace List

variable {l : List α}

theorem Nodup.pairwise_of_set_pairwise {l : List α} {r : α → α → Prop} (hl : l.Nodup)
    (h : {x | x ∈ l}.Pairwise r) : l.Pairwise r :=
  hl.pairwise_of_forall_ne h

@[simp]
theorem Nodup.pairwise_coe [IsSymm α r] (hl : l.Nodup) :
    { a | a ∈ l }.Pairwise r ↔ l.Pairwise r := by
  induction l with | nil => simp | cons a l ih => ?_
  rw [List.nodup_cons] at hl
  have : ∀ b ∈ l, ¬a = b → r a b ↔ r a b := fun b hb =>
    imp_iff_right (ne_of_mem_of_not_mem hb hl.1).symm
  simp [Set.setOf_or, Set.pairwise_insert_of_symmetric fun _ _ ↦ symm_of r, ih hl.2, and_comm,
    forall₂_congr this]

end List
