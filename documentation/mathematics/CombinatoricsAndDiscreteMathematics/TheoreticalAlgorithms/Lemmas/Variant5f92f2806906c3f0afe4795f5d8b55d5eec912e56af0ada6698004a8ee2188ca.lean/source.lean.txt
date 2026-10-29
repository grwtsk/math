-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IdxOf.Variant0f9a4b249addd32909638fb4d33ec1f9fdec0a1de5578da567ba43496760be93","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0f9a4b249addd32909638fb4d33ec1f9fdec0a1de5578da567ba43496760be93","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.IdxOf.Variant0f9a4b249addd32909638fb4d33ec1f9fdec0a1de5578da567ba43496760be93","mathematical_subject":"Computation.DataStructures","original_sha256":"0f9a4b249addd32909638fb4d33ec1f9fdec0a1de5578da567ba43496760be93","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/batteries/Batteries/Data/Array/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.

Authors: Mario Carneiro, Gabriel Ebner
-/
module

public import Batteries.Data.List.Lemmas


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IdxOf.Variant0f9a4b249addd32909638fb4d33ec1f9fdec0a1de5578da567ba43496760be93

@[expose] public section

namespace Array

/-! ### idxOf? -/

@[grind =]
theorem idxOf?_toList [BEq α] {a : α} {l : Array α} :
    l.toList.idxOf? a = l.idxOf? a := by
  rcases l with ⟨l⟩
  simp

/-! ### erase -/

@[simp, grind =] theorem toList_erase [BEq α] (l : Array α) (a : α) :
    (l.erase a).toList = l.toList.erase a := by
  rcases l with ⟨l⟩
  simp

@[simp] theorem size_eraseIdxIfInBounds (a : Array α) (i : Nat) :
    (a.eraseIdxIfInBounds i).size = if i < a.size then a.size-1 else a.size := by
  grind

theorem toList_drop (as: Array α) (n : Nat) :
    (as.drop n).toList = as.toList.drop n := by
  simp only [drop, toList_extract, size_eq_length_toList, List.drop_eq_extract]

/-! ### set -/

/-! ### map -/

/-! ### mem -/

/-! ### insertAt -/

/-! ### extract -/

@[simp] theorem extract_empty_of_start_eq_stop {a : Array α} :
    a.extract i i = #[] := by grind

theorem extract_append_of_stop_le_size_left {a b : Array α} (h : j ≤ a.size) :
    (a ++ b).extract i j = a.extract i j := by grind

theorem extract_append_of_size_left_le_start {a b : Array α} (h : a.size ≤ i) :
    (a ++ b).extract i j = b.extract (i - a.size) (j - a.size) := by
  rw [extract_append]; grind

theorem extract_eq_of_size_le_stop {a : Array α} (h : a.size ≤ j) :
    a.extract i j = a.extract i := by grind

/-! ### swapIfInBounds -/
@[simp, grind =] theorem toList_swapIfInBounds {a : Array α} :
    (a.swapIfInBounds i j).toList = a.toList.swap i j := List.ext_getElem (by simp) (by grind)
