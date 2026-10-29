-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.P.Variant726fbcd21d99f134722fde0402776d7aceaf71fe409dc2d18943392b7deb4fec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"726fbcd21d99f134722fde0402776d7aceaf71fe409dc2d18943392b7deb4fec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.NormedSpaces.SourceCorpus.P.Variant726fbcd21d99f134722fde0402776d7aceaf71fe409dc2d18943392b7deb4fec","mathematical_subject":"Analysis.NormedSpaces","original_sha256":"726fbcd21d99f134722fde0402776d7aceaf71fe409dc2d18943392b7deb4fec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Counterexamples/SeminormLatticeNotDistrib.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Pierre-Alexandre Bazin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Pierre-Alexandre Bazin
-/
import Mathlib.Analysis.Seminorm

/-!
# The lattice of seminorms is not distributive

We provide an example of three seminorms over the ℝ-vector space ℝ×ℝ which don't satisfy the lattice
distributivity property `(p ⊔ q1) ⊓ (p ⊔ q2) ≤ p ⊔ (q1 ⊓ q2)`.

This proves the lattice `Seminorm ℝ (ℝ × ℝ)` is not distributive.

## References

* https://en.wikipedia.org/wiki/Seminorm#Examples
-/



namespace GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.P.Variant726fbcd21d99f134722fde0402776d7aceaf71fe409dc2d18943392b7deb4fec

open Seminorm

open scoped NNReal

namespace Counterexample

namespace SeminormNotDistrib

@[simps!]
noncomputable def p : Seminorm ℝ (ℝ × ℝ) :=
  (normSeminorm ℝ ℝ).comp (LinearMap.fst _ _ _) ⊔ (normSeminorm ℝ ℝ).comp (LinearMap.snd _ _ _)

@[simps!]
noncomputable def q1 : Seminorm ℝ (ℝ × ℝ) :=
  (4 : ℝ≥0) • (normSeminorm ℝ ℝ).comp (LinearMap.fst _ _ _)

@[simps!]
noncomputable def q2 : Seminorm ℝ (ℝ × ℝ) :=
  (4 : ℝ≥0) • (normSeminorm ℝ ℝ).comp (LinearMap.snd _ _ _)

theorem eq_one : (p ⊔ q1 ⊓ q2) (1, 1) = 1 := by
  suffices ⨅ x : ℝ × ℝ, q1 x + q2 (1 - x) ≤ 1 by simpa
  apply ciInf_le_of_le bddBelow_range_add ((0, 1) : ℝ × ℝ); dsimp [q1, q2]
  simp only [abs_zero, smul_zero, sub_self, add_zero, zero_le_one]

/-- This is a counterexample to the distributivity of the lattice `Seminorm ℝ (ℝ × ℝ)`. -/
theorem not_distrib : ¬(p ⊔ q1) ⊓ (p ⊔ q2) ≤ p ⊔ q1 ⊓ q2 := by
  intro le_sup_inf
  have c : ¬4 / 3 ≤ (1 : ℝ) := by norm_num
  apply c; nth_rw 1 [← eq_one]
  apply le_trans _ (le_sup_inf _)
  apply le_ciInf; intro x
  rcases le_or_lt x.fst (1 / 3) with h1 | h1
  · rcases le_or_lt x.snd (2 / 3) with h2 | h2
    · calc
        4 / 3 = 4 * (1 - 2 / 3) := by norm_num
        _ ≤ 4 * (1 - x.snd) := by gcongr
        _ ≤ 4 * |1 - x.snd| := by gcongr; apply le_abs_self
        _ = q2 ((1, 1) - x) := rfl
        _ ≤ (p ⊔ q2) ((1, 1) - x) := le_sup_right
        _ ≤ (p ⊔ q1) x + (p ⊔ q2) ((1, 1) - x) := le_add_of_nonneg_left (apply_nonneg _ _)
    · calc
        4 / 3 = 2 / 3 + (1 - 1 / 3) := by norm_num
        _ ≤ x.snd + (1 - x.fst) := by gcongr
        _ ≤ |x.snd| + |1 - x.fst| := add_le_add (le_abs_self _) (le_abs_self _)
        _ ≤ p x + p ((1, 1) - x) := add_le_add le_sup_right le_sup_left
        _ ≤ (p ⊔ q1) x + (p ⊔ q2) ((1, 1) - x) := add_le_add le_sup_left le_sup_left
  · calc
      4 / 3 = 4 * (1 / 3) := by norm_num
      _ ≤ 4 * x.fst := by gcongr
      _ ≤ 4 * |x.fst| := by gcongr; apply le_abs_self
      _ = q1 x := rfl
      _ ≤ (p ⊔ q1) x := le_sup_right
      _ ≤ (p ⊔ q1) x + (p ⊔ q2) ((1, 1) - x) := le_add_of_nonneg_right (apply_nonneg _ _)

end SeminormNotDistrib

end Counterexample
