-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ExistsFinsuppOfMemClosureRange.Variant404fbca533ab5b93ce811d40ce8835a838f34e442805dc438e5410209994e826","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"404fbca533ab5b93ce811d40ce8835a838f34e442805dc438e5410209994e826","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ExistsFinsuppOfMemClosureRange.Variant404fbca533ab5b93ce811d40ce8835a838f34e442805dc438e5410209994e826","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"404fbca533ab5b93ce811d40ce8835a838f34e442805dc438e5410209994e826","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Group/Submonoid/Finsupp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.Algebra.BigOperators.Finsupp.Basic

/-! # Connection between `Submonoid.closure` and `Finsupp.prod` -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ExistsFinsuppOfMemClosureRange.Variant404fbca533ab5b93ce811d40ce8835a838f34e442805dc438e5410209994e826

assert_not_exists Field

namespace Submonoid

variable {M : Type*} [CommMonoid M] {ι : Type*} (f : ι → M) (x : M)

@[to_additive]
theorem exists_finsupp_of_mem_closure_range (hx : x ∈ closure (Set.range f)) :
    ∃ a : ι →₀ ℕ, x = a.prod (f · ^ ·) := by
  classical
  induction hx using closure_induction with
  | mem x h => obtain ⟨i, rfl⟩ := h; exact ⟨Finsupp.single i 1, by simp⟩
  | one => use 0; simp
  | mul x y hx hy hx' hy' =>
    obtain ⟨⟨v, rfl⟩, w, rfl⟩ := And.intro hx' hy'
    use v + w
    rw [Finsupp.prod_add_index]
    · simp
    · simp [pow_add]

variable {f x} in
@[to_additive]
theorem mem_closure_range_iff :
    x ∈ closure (Set.range f) ↔ ∃ a : ι →₀ ℕ, x = a.prod (f · ^ ·) := by
  refine ⟨exists_finsupp_of_mem_closure_range f x, ?_⟩
  rintro ⟨a, rfl⟩
  exact prod_mem _ fun i hi ↦ pow_mem (subset_closure (Set.mem_range_self i)) _

@[to_additive]
theorem exists_of_mem_closure_range [Fintype ι] (hx : x ∈ closure (Set.range f)) :
    ∃ a : ι → ℕ, x = ∏ i, f i ^ a i := by
  obtain ⟨a, rfl⟩ := exists_finsupp_of_mem_closure_range f x hx
  exact ⟨a, by simp⟩

variable {f x} in
@[to_additive]
theorem mem_closure_range_iff_of_fintype [Fintype ι] :
    x ∈ closure (Set.range f) ↔ ∃ a : ι → ℕ, x = ∏ i, f i ^ a i := by
  rw [Finsupp.equivFunOnFinite.symm.exists_congr_left, mem_closure_range_iff]
  simp

end Submonoid
