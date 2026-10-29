-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.LeOfForallLtOneMulLe.Variantdd0bcc86b38b8c3cec4fc137849546b6424124606ef59c44106fe2ba4a54466e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dd0bcc86b38b8c3cec4fc137849546b6424124606ef59c44106fe2ba4a54466e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.LeOfForallLtOneMulLe.Variantdd0bcc86b38b8c3cec4fc137849546b6424124606ef59c44106fe2ba4a54466e","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"dd0bcc86b38b8c3cec4fc137849546b6424124606ef59c44106fe2ba4a54466e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Group/DenselyOrdered.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Mario Carneiro, Johannes Hölzl
-/
import Mathlib.Algebra.Order.Group.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Unbundled.OrderDual
import Mathlib.Algebra.Order.Monoid.Unbundled.ExistsOfLE

/-!
# Lemmas about densely linearly ordered groups.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.LeOfForallLtOneMulLe.Variantdd0bcc86b38b8c3cec4fc137849546b6424124606ef59c44106fe2ba4a54466e

variable {α : Type*}

section DenselyOrdered

variable [Group α] [LinearOrder α]
variable [MulLeftMono α]
variable [DenselyOrdered α] {a b : α}

@[to_additive]
theorem le_of_forall_lt_one_mul_le (h : ∀ ε < 1, a * ε ≤ b) : a ≤ b :=
  le_of_forall_one_lt_le_mul (α := αᵒᵈ) h

@[to_additive]
theorem le_of_forall_one_lt_div_le (h : ∀ ε : α, 1 < ε → a / ε ≤ b) : a ≤ b :=
  le_of_forall_lt_one_mul_le fun ε ε1 => by
    simpa only [div_eq_mul_inv, inv_inv] using h ε⁻¹ (Left.one_lt_inv_iff.2 ε1)

@[to_additive]
theorem le_iff_forall_lt_one_mul_le : a ≤ b ↔ ∀ ε < 1, a * ε ≤ b :=
  le_iff_forall_one_lt_le_mul (α := αᵒᵈ)

end DenselyOrdered

section DenselyOrdered

@[to_additive]
private lemma exists_lt_mul_left [Group α] [LT α] [DenselyOrdered α]
    [CovariantClass α α (Function.swap (· * ·)) (· < ·)] {a b c : α} (hc : c < a * b) :
    ∃ a' < a, c < a' * b := by
  obtain ⟨a', hc', ha'⟩ := exists_between (div_lt_iff_lt_mul.2 hc)
  exact ⟨a', ha', div_lt_iff_lt_mul.1 hc'⟩

@[to_additive]
private lemma exists_lt_mul_right [CommGroup α] [LT α] [DenselyOrdered α]
    [CovariantClass α α (· * ·) (· < ·)] {a b c : α} (hc : c < a * b) :
    ∃ b' < b, c < a * b' := by
  obtain ⟨a', hc', ha'⟩ := exists_between (div_lt_iff_lt_mul'.2 hc)
  exact ⟨a', ha', div_lt_iff_lt_mul'.1 hc'⟩

@[to_additive]
private lemma exists_mul_left_lt [Group α] [LT α] [DenselyOrdered α]
    [CovariantClass α α (Function.swap (· * ·)) (· < ·)] {a b c : α} (hc : a * b < c) :
    ∃ a' > a, a' * b < c := by
  obtain ⟨a', ha', hc'⟩ := exists_between (lt_div_iff_mul_lt.2 hc)
  exact ⟨a', ha', lt_div_iff_mul_lt.1 hc'⟩

@[to_additive]
private lemma exists_mul_right_lt [CommGroup α] [LT α] [DenselyOrdered α]
    [CovariantClass α α (· * ·) (· < ·)] {a b c : α} (hc : a * b < c) :
    ∃ b' > b, a * b' < c := by
  obtain ⟨a', ha', hc'⟩ := exists_between (lt_div_iff_mul_lt'.2 hc)
  exact ⟨a', ha', lt_div_iff_mul_lt'.1 hc'⟩

@[to_additive]
lemma le_mul_of_forall_lt [CommGroup α] [LinearOrder α] [CovariantClass α α (· * ·) (· ≤ ·)]
    [DenselyOrdered α] {a b c : α} (h : ∀ a' > a, ∀ b' > b, c ≤ a' * b') :
    c ≤ a * b := by
  refine le_of_forall_gt_imp_ge_of_dense fun d hd ↦ ?_
  obtain ⟨a', ha', hd⟩ := exists_mul_left_lt hd
  obtain ⟨b', hb', hd⟩ := exists_mul_right_lt hd
  exact (h a' ha' b' hb').trans hd.le

@[to_additive]
lemma mul_le_of_forall_lt [CommGroup α] [LinearOrder α] [CovariantClass α α (· * ·) (· ≤ ·)]
    [DenselyOrdered α] {a b c : α} (h : ∀ a' < a, ∀ b' < b, a' * b' ≤ c) :
    a * b ≤ c := by
  refine le_of_forall_lt_imp_le_of_dense fun d hd ↦ ?_
  obtain ⟨a', ha', hd⟩ := exists_lt_mul_left hd
  obtain ⟨b', hb', hd⟩ := exists_lt_mul_right hd
  exact hd.le.trans (h a' ha' b' hb')

end DenselyOrdered
