-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CastNegNatCast.Variant4a7f6da3e80529b6f65dcb61e2df165d3a30b79b9bb80753fc05363f948b3291","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4a7f6da3e80529b6f65dcb61e2df165d3a30b79b9bb80753fc05363f948b3291","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.CastNegNatCast.Variant4a7f6da3e80529b6f65dcb61e2df165d3a30b79b9bb80753fc05363f948b3291","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"4a7f6da3e80529b6f65dcb61e2df165d3a30b79b9bb80753fc05363f948b3291","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Int/Cast/Field.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bhavik Mehta
-/
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Ring.Int.Defs

/-!
# Cast of integers into fields

This file concerns the canonical homomorphism `ℤ → F`, where `F` is a field.

## Main results

* `Int.cast_div`: if `n` divides `m`, then `↑(m / n) = ↑m / ↑n`
-/



namespace GRWTSK.Algebra.CastNegNatCast.Variant4a7f6da3e80529b6f65dcb61e2df165d3a30b79b9bb80753fc05363f948b3291

namespace Int

open Nat

variable {α : Type*}

/-- Auxiliary lemma for norm_cast to move the cast `-↑n` upwards to `↑-↑n`.

(The restriction to `DivisionRing` is necessary, otherwise this would also apply in the case where
`R = ℤ` and cause nontermination.)
-/
@[norm_cast]
theorem cast_neg_natCast {R} [DivisionRing R] (n : ℕ) : ((-n : ℤ) : R) = -n := by simp

@[simp]
theorem cast_div [DivisionRing α] {m n : ℤ} (n_dvd : n ∣ m) (hn : (n : α) ≠ 0) :
    ((m / n : ℤ) : α) = m / n := by
  rcases n_dvd with ⟨k, rfl⟩
  have : n ≠ 0 := by rintro rfl; simp at hn
  rw [Int.mul_ediv_cancel_left _ this, mul_comm n, Int.cast_mul, mul_div_cancel_right₀ _ hn]

end Int
