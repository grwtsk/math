-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Find.Variant70460cc9a62e05dbcbb08fa3513d3d1a63bdd3198a48a71109b6d9b0bfd2ae33","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"70460cc9a62e05dbcbb08fa3513d3d1a63bdd3198a48a71109b6d9b0bfd2ae33","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Find.Variant70460cc9a62e05dbcbb08fa3513d3d1a63bdd3198a48a71109b6d9b0bfd2ae33","mathematical_subject":"Computation.DataStructures","original_sha256":"70460cc9a62e05dbcbb08fa3513d3d1a63bdd3198a48a71109b6d9b0bfd2ae33","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/List/Find.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
module

public import Mathlib.Data.Set.Subsingleton
import Batteries.Data.List.Lemmas

/-!
# Lemmas about `List.find?`
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Find.Variant70460cc9a62e05dbcbb08fa3513d3d1a63bdd3198a48a71109b6d9b0bfd2ae33

public section

namespace List
variable {α : Type*}

/-- If there is at most one element satisfying `p`, then `find?` agrees on permuted lists. -/
theorem find?_eq_find?_of_perm {p : α → Bool} {l₁ l₂ : List α}
    (h : l₁.Perm l₂) (hp : {x ∈ l₁ | p x}.Subsingleton) :
    l₁.find? p = l₂.find? p := by
  induction h with
  | nil => rfl
  | cons x _ ih =>
    grind
  | swap x y l =>
    dsimp [Set.Subsingleton] at hp
    by_cases p x <;> by_cases p y <;> grind
  | trans _ _ ih1 ih2 =>
    refine (ih1 ?_).trans (ih2 ?_) <;> grind

/-- If two predicates agree on all the elements, so does `find?`. -/
@[congr]
theorem find?_congr {p₁ p₂ : α → Bool} {l : List α} (h : ∀ x ∈ l, p₁ x = p₂ x) :
    l.find? p₁ = l.find? p₂ := by
  induction l with grind

end List
