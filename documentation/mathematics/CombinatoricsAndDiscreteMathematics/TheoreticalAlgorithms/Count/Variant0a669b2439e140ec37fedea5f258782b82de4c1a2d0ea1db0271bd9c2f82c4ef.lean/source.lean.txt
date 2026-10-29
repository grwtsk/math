-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CountPLtLengthIff.Variantbf3cbd50105373e84007c296f339d379f7698d60e11c0533c70e62c93f445477","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bf3cbd50105373e84007c296f339d379f7698d60e11c0533c70e62c93f445477","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CountPLtLengthIff.Variantbf3cbd50105373e84007c296f339d379f7698d60e11c0533c70e62c93f445477","mathematical_subject":"Computation.DataStructures","original_sha256":"bf3cbd50105373e84007c296f339d379f7698d60e11c0533c70e62c93f445477","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/List/Count.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Parikshit Khanna. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Parikshit Khanna, Jeremy Avigad, Leonardo de Moura, Floris van Doorn, Mario Carneiro
-/
module

public import Batteries.Data.List.Perm
public import Mathlib.Tactic.Common
public import Batteries.Data.List.Lemmas
public import Mathlib.Tactic.Attr.Core

/-!
# Counting in lists

This file proves basic properties of `List.countP` and `List.count`, which count the number of
elements of a list satisfying a predicate and equal to a given element respectively.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CountPLtLengthIff.Variantbf3cbd50105373e84007c296f339d379f7698d60e11c0533c70e62c93f445477

public section

assert_not_exists Monoid Set.range

open Nat

variable {α β : Type*}

namespace List

@[simp]
theorem countP_lt_length_iff {l : List α} {p : α → Bool} :
    l.countP p < l.length ↔ ∃ a ∈ l, p a = false := by
  simp [Nat.lt_iff_le_and_ne, countP_le_length]

variable [BEq α] [LawfulBEq α] {l l₁ l₂ : List α}

@[simp]
theorem count_lt_length_iff {a : α} : l.count a < l.length ↔ ∃ b ∈ l, b ≠ a := by simp [count]

lemma countP_erase (p : α → Bool) (l : List α) (a : α) :
    countP p (l.erase a) = countP p l - if a ∈ l ∧ p a then 1 else 0 := by
  grind [countP_eq_length_filter]

lemma count_diff (a : α) (l₁ : List α) :
    ∀ l₂, count a (l₁.diff l₂) = count a l₁ - count a l₂
  | [] => rfl
  | b :: l₂ => by
    simp only [diff_cons, count_diff, count_erase, beq_iff_eq, Nat.sub_right_comm, count_cons,
      Nat.sub_add_eq]

lemma countP_diff (hl : l₂ <+~ l₁) (p : α → Bool) :
    countP p (l₁.diff l₂) = countP p l₁ - countP p l₂ := by
  refine (Nat.sub_eq_of_eq_add ?_).symm
  rw [← countP_append]
  exact ((subperm_append_diff_self_of_count_le <| subperm_ext_iff.1 hl).symm.trans
    perm_append_comm).countP_eq _

@[simp]
theorem count_map_of_injective [BEq β] [LawfulBEq β] (l : List α) (f : α → β)
    (hf : Function.Injective f) (x : α) : count (f x) (map f l) = count x l := by
  simp only [count, countP_map]
  unfold Function.comp
  simp only [hf.beq_eq]

end List
