-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.DvdProd.Variant240d2d7c4cf9b0f9dcccdd2c95c4292deeef866f6284cb46b7aa1ca5178161e7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"240d2d7c4cf9b0f9dcccdd2c95c4292deeef866f6284cb46b7aa1ca5178161e7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.DvdProd.Variant240d2d7c4cf9b0f9dcccdd2c95c4292deeef866f6284cb46b7aa1ca5178161e7","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"240d2d7c4cf9b0f9dcccdd2c95c4292deeef866f6284cb46b7aa1ca5178161e7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/BigOperators/Multiset/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Bhavik Mehta, Eric Wieser
-/
import Mathlib.Data.List.BigOperators.Lemmas
import Mathlib.Algebra.BigOperators.Multiset.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DvdProd.Variant240d2d7c4cf9b0f9dcccdd2c95c4292deeef866f6284cb46b7aa1ca5178161e7

#align_import algebra.big_operators.multiset.lemmas from "leanprover-community/mathlib"@"0a0ec35061ed9960bf0e7ffb0335f44447b58977"

/-! # Lemmas about `Multiset.sum` and `Multiset.prod` requiring extra algebra imports -/


variable {α : Type*}

namespace Multiset

theorem dvd_prod [CommMonoid α] {s : Multiset α} {a : α} : a ∈ s → a ∣ s.prod :=
  Quotient.inductionOn s (fun l a h => by simpa using List.dvd_prod h) a
#align multiset.dvd_prod Multiset.dvd_prod

@[to_additive]
theorem prod_eq_one_iff [CanonicallyOrderedMonoid α] {m : Multiset α} :
    m.prod = 1 ↔ ∀ x ∈ m, x = (1 : α) :=
  Quotient.inductionOn m fun l => by simpa using List.prod_eq_one_iff l
#align multiset.prod_eq_one_iff Multiset.prod_eq_one_iff
#align multiset.sum_eq_zero_iff Multiset.sum_eq_zero_iff

end Multiset

@[simp]
lemma CanonicallyOrderedCommSemiring.multiset_prod_pos {R} [CanonicallyOrderedCommSemiring R]
    [Nontrivial R] {m : Multiset R} : 0 < m.prod ↔ (∀ x ∈ m, (0 : R) < x) := by
  rcases m with ⟨l⟩
  rw [Multiset.quot_mk_to_coe'', Multiset.coe_prod]
  exact CanonicallyOrderedCommSemiring.list_prod_pos

open Multiset

namespace Commute

variable [NonUnitalNonAssocSemiring α] (s : Multiset α)

theorem multiset_sum_right (a : α) (h : ∀ b ∈ s, Commute a b) : Commute a s.sum := by
  induction s using Quotient.inductionOn
  rw [quot_mk_to_coe, coe_sum]
  exact Commute.list_sum_right _ _ h
#align commute.multiset_sum_right Commute.multiset_sum_right

theorem multiset_sum_left (b : α) (h : ∀ a ∈ s, Commute a b) : Commute s.sum b :=
  ((Commute.multiset_sum_right _ _) fun _ ha => (h _ ha).symm).symm
#align commute.multiset_sum_left Commute.multiset_sum_left

end Commute
