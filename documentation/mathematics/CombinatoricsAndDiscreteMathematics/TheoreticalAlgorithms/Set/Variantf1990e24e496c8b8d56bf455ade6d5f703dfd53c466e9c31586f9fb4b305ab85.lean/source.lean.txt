-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.UnivEq.Variantf59eb3e5b3645125d7db91fad964003f22dfbe33c7111c5222b2556bd26a9870","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f59eb3e5b3645125d7db91fad964003f22dfbe33c7111c5222b2556bd26a9870","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.UnivEq.Variantf59eb3e5b3645125d7db91fad964003f22dfbe33c7111c5222b2556bd26a9870","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"f59eb3e5b3645125d7db91fad964003f22dfbe33c7111c5222b2556bd26a9870","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Bool/Set.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Data.Set.Image

/-!
# Booleans and set operations

This file contains two trivial lemmas about `Bool`, `Set.univ`, and `Set.range`.
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.UnivEq.Variantf59eb3e5b3645125d7db91fad964003f22dfbe33c7111c5222b2556bd26a9870

open Set

namespace Bool

@[simp]
theorem univ_eq : (univ : Set Bool) = {false, true} :=
  (eq_univ_of_forall Bool.dichotomy).symm

@[simp]
theorem range_eq {α : Type*} (f : Bool → α) : range f = {f false, f true} := by
  rw [← image_univ, univ_eq, image_pair]

@[simp] theorem compl_singleton (b : Bool) : ({b}ᶜ : Set Bool) = {!b} :=
  Set.ext fun _ => eq_not_iff.symm

end Bool
