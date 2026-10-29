-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.RankOne.Variant5ca8edf3c774016d56f65904de04bb4dd43e09a39b25938aebc8a823cca0fea7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5ca8edf3c774016d56f65904de04bb4dd43e09a39b25938aebc8a823cca0fea7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.RankOne.Variant5ca8edf3c774016d56f65904de04bb4dd43e09a39b25938aebc8a823cca0fea7","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"5ca8edf3c774016d56f65904de04bb4dd43e09a39b25938aebc8a823cca0fea7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Valuation/RankOne.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 María Inés de Frutos-Fernández. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: María Inés de Frutos-Fernández
-/
import Mathlib.Data.NNReal.Defs
import Mathlib.RingTheory.Valuation.Basic

/-!
# Rank one valuations

We define rank one valuations.

## Main Definitions
* `RankOne` : A valuation `v` has rank one if it is nontrivial and its image is contained in `ℝ≥0`.
  Note that this class contains the data of the inclusion of the codomain of `v` into `ℝ≥0`.

## Tags

valuation, rank one
-/


namespace GRWTSK.Algebra.RankOne.Variant5ca8edf3c774016d56f65904de04bb4dd43e09a39b25938aebc8a823cca0fea7

noncomputable section

open Function Multiplicative

open scoped NNReal

variable {R : Type*} [Ring R] {Γ₀ : Type*} [LinearOrderedCommGroupWithZero Γ₀]

namespace Valuation

/-- A valuation has rank one if it is nontrivial and its image is contained in `ℝ≥0`.
  Note that this class includes the data of an inclusion morphism `Γ₀ → ℝ≥0`. -/
class RankOne (v : Valuation R Γ₀) where
  /-- The inclusion morphism from `Γ₀` to `ℝ≥0`. -/
  hom : Γ₀ →*₀ ℝ≥0
  strictMono' : StrictMono hom
  nontrivial' : ∃ r : R, v r ≠ 0 ∧ v r ≠ 1

namespace RankOne

variable (v : Valuation R Γ₀) [RankOne v]

lemma strictMono : StrictMono (hom v) := strictMono'

lemma nontrivial : ∃ r : R, v r ≠ 0 ∧ v r ≠ 1 := nontrivial'

/-- If `v` is a rank one valuation and `x : Γ₀` has image `0` under `RankOne.hom v`, then
  `x = 0`. -/
theorem zero_of_hom_zero {x : Γ₀} (hx : hom v x = 0) : x = 0 := by
  refine (eq_of_le_of_not_lt (zero_le' (a := x)) fun h_lt ↦ ?_).symm
  have hs := strictMono v h_lt
  rw [map_zero, hx] at hs
  exact hs.false

/-- If `v` is a rank one valuation, then`x : Γ₀` has image `0` under `RankOne.hom v` if and
  only if `x = 0`. -/
theorem hom_eq_zero_iff {x : Γ₀} : RankOne.hom v x = 0 ↔ x = 0 :=
  ⟨fun h ↦ zero_of_hom_zero v h, fun h ↦ by rw [h, map_zero]⟩

/-- A nontrivial unit of `Γ₀`, given that there exists a rank one `v : Valuation R Γ₀`. -/
def unit : Γ₀ˣ :=
  Units.mk0 (v (nontrivial v).choose) ((nontrivial v).choose_spec).1

/-- A proof that `RankOne.unit v ≠ 1`. -/
theorem unit_ne_one : unit v ≠ 1 := by
  rw [Ne, ← Units.eq_iff, Units.val_one]
  exact ((nontrivial v).choose_spec ).2

end RankOne

end Valuation
