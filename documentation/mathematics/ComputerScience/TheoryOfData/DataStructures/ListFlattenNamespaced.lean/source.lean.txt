-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SublistFlatten.Variantd7ac190fca23701ad49a171f7552f5cc1ab87e7a82a0fd681dc73024298384bb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d7ac190fca23701ad49a171f7552f5cc1ab87e7a82a0fd681dc73024298384bb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.SublistFlatten.Variantd7ac190fca23701ad49a171f7552f5cc1ab87e7a82a0fd681dc73024298384bb","mathematical_subject":"Computation.DataStructures","original_sha256":"d7ac190fca23701ad49a171f7552f5cc1ab87e7a82a0fd681dc73024298384bb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/List/Flatten.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel, Floris van Doorn, Mario Carneiro, Martin Dvorak
-/
import Mathlib.Tactic.GCongr.Core
import Mathlib.Util.AssertExists

/-!
# Join of a list of lists

This file proves basic properties of `List.flatten`, which concatenates a list of lists. It is
defined in `Init.Data.List.Basic`.
-/

-- Make sure we don't import algebra

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SublistFlatten.Variantd7ac190fca23701ad49a171f7552f5cc1ab87e7a82a0fd681dc73024298384bb

assert_not_exists Monoid

variable {α β : Type*}

namespace List

@[gcongr]
protected theorem Sublist.flatten {l₁ l₂ : List (List α)} (h : l₁ <+ l₂) :
    l₁.flatten <+ l₂.flatten := by
  induction h with
  | slnil => simp
  | cons _ _ ih =>
    rw [flatten_cons]
    exact ih.trans (sublist_append_right _ _)
  | cons₂ _ _ ih => simpa

@[gcongr]
protected theorem Sublist.flatMap {l₁ l₂ : List α} (h : l₁ <+ l₂) (f : α → List β) :
    l₁.flatMap f <+ l₂.flatMap f :=
  (h.map f).flatten

@[deprecated (since := "2024-10-25")] alias length_join' := length_flatten
@[deprecated (since := "2024-10-25")] alias countP_join' := countP_flatten
@[deprecated (since := "2024-10-25")] alias count_join' := count_flatten

/-- Taking only the first `i+1` elements in a list, and then dropping the first `i` ones, one is
left with a list of length `1` made of the `i`-th element of the original list. -/
theorem drop_take_succ_eq_cons_getElem (L : List α) (i : Nat) (h : i < L.length) :
    (L.take (i + 1)).drop i = [L[i]] := by
  induction L generalizing i with
  | nil => exact (Nat.not_succ_le_zero i h).elim
  | cons head tail ih =>
    rcases i with _ | i
    · simp
    · simpa using ih _ (by simpa using h)

/-- We can rebracket `x ++ (l₁ ++ x) ++ (l₂ ++ x) ++ ... ++ (lₙ ++ x)` to
`(x ++ l₁) ++ (x ++ l₂) ++ ... ++ (x ++ lₙ) ++ x` where `L = [l₁, l₂, ..., lₙ]`. -/
theorem append_flatten_map_append (L : List (List α)) (x : List α) :
    x ++ (L.map (· ++ x)).flatten = (L.map (x ++ ·)).flatten ++ x := by
  induction L with
  | nil => rw [map_nil, flatten, append_nil, map_nil, flatten, nil_append]
  | cons _ _ ih =>
    rw [map_cons, flatten, map_cons, flatten, append_assoc, ih, append_assoc, append_assoc]

end List
