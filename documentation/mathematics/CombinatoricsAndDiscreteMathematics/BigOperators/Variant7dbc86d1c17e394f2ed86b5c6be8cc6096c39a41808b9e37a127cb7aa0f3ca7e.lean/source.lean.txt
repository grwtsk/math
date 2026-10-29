-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.CoeListSum.Variantd4523725500793ff3f3390f001c6855cf21c4dbdba44e7d6e35701f83881a510","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d4523725500793ff3f3390f001c6855cf21c4dbdba44e7d6e35701f83881a510","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.CoeListSum.Variantd4523725500793ff3f3390f001c6855cf21c4dbdba44e7d6e35701f83881a510","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"d4523725500793ff3f3390f001c6855cf21c4dbdba44e7d6e35701f83881a510","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/NNRat/BigOperators.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies, Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies, Bhavik Mehta
-/
import Mathlib.Algebra.Order.BigOperators.Ring.Finset
import Mathlib.Algebra.Order.Ring.Rat
import Mathlib.Data.NNRat.Defs

/-! # Casting lemmas for non-negative rational numbers involving sums and products
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CoeListSum.Variantd4523725500793ff3f3390f001c6855cf21c4dbdba44e7d6e35701f83881a510

variable {α : Type*}

namespace NNRat

@[norm_cast]
theorem coe_list_sum (l : List ℚ≥0) : (l.sum : ℚ) = (l.map (↑)).sum :=
  map_list_sum coeHom _

@[norm_cast]
theorem coe_list_prod (l : List ℚ≥0) : (l.prod : ℚ) = (l.map (↑)).prod :=
  map_list_prod coeHom _

@[norm_cast]
theorem coe_multiset_sum (s : Multiset ℚ≥0) : (s.sum : ℚ) = (s.map (↑)).sum :=
  map_multiset_sum coeHom _

@[norm_cast]
theorem coe_multiset_prod (s : Multiset ℚ≥0) : (s.prod : ℚ) = (s.map (↑)).prod :=
  map_multiset_prod coeHom _

@[norm_cast]
theorem coe_sum {s : Finset α} {f : α → ℚ≥0} : ↑(∑ a ∈ s, f a) = ∑ a ∈ s, (f a : ℚ) :=
  map_sum coeHom _ _

theorem toNNRat_sum_of_nonneg {s : Finset α} {f : α → ℚ} (hf : ∀ a, a ∈ s → 0 ≤ f a) :
    (∑ a ∈ s, f a).toNNRat = ∑ a ∈ s, (f a).toNNRat := by
  rw [← coe_inj, coe_sum, Rat.coe_toNNRat _ (Finset.sum_nonneg hf)]
  exact Finset.sum_congr rfl fun x hxs ↦ by rw [Rat.coe_toNNRat _ (hf x hxs)]

@[norm_cast]
theorem coe_prod {s : Finset α} {f : α → ℚ≥0} : ↑(∏ a ∈ s, f a) = ∏ a ∈ s, (f a : ℚ) :=
  map_prod coeHom _ _

theorem toNNRat_prod_of_nonneg {s : Finset α} {f : α → ℚ} (hf : ∀ a ∈ s, 0 ≤ f a) :
    (∏ a ∈ s, f a).toNNRat = ∏ a ∈ s, (f a).toNNRat := by
  rw [← coe_inj, coe_prod, Rat.coe_toNNRat _ (Finset.prod_nonneg hf)]
  exact Finset.prod_congr rfl fun x hxs ↦ by rw [Rat.coe_toNNRat _ (hf x hxs)]

end NNRat
