-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.RightLineMajorant.Variant9aed8d052448d34c8604f894fdc40c2c3ad6b72396c786c8b2b46f9bae5f98e1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9aed8d052448d34c8604f894fdc40c2c3ad6b72396c786c8b2b46f9bae5f98e1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.RightLineMajorant.Variant9aed8d052448d34c8604f894fdc40c2c3ad6b72396c786c8b2b46f9bae5f98e1","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"9aed8d052448d34c8604f894fdc40c2c3ad6b72396c786c8b2b46f9bae5f98e1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-signed-cycle-20261006/rational/preserved-inputs/scratch/rh16-followthrough-20261006-mellin/SourceNativeDirichlet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.NumberTheory.LSeries.Dirichlet
import Mathlib.Tactic

/-!
# Literal right-line Mangoldt multiplier

The majorant is the full positive prime-power Dirichlet series. The bound uses
absolute convergence only in Re(s) > 1 and never splits the combined multiplier.

AI attribution: developed with OpenAI Codex; checked locally by Lean.
-/


namespace GRWTSK.NumberTheory.RightLineMajorant.Variant9aed8d052448d34c8604f894fdc40c2c3ad6b72396c786c8b2b46f9bae5f98e1

namespace FormalResearch.RiemannHypothesis.SourceNativeDirichlet

open ArithmeticFunction

noncomputable section

/-- Literal positive series, indexed from two with every prime power retained. -/
def rightLineMajorant (c : ℝ) : ℝ :=
  ∑' n : ℕ, vonMangoldt (n + 2) / ((n + 2 : ℕ) : ℝ) ^ c

/-- The exact combined multiplier on the initial zero-free right line. -/
def combinedMultiplier (s : ℂ) : ℂ := -deriv riemannZeta s / riemannZeta s

private theorem term_norm (c : ℝ) (n : ℕ) :
    ‖LSeries.term (fun n ↦ (vonMangoldt n : ℂ)) (c : ℂ) n‖ =
      vonMangoldt n / (n : ℝ) ^ c := by
  rw [LSeries.norm_term_eq]
  by_cases hn : n = 0
  · simp [hn]
  · simp [hn, Complex.norm_real, Real.norm_eq_abs,
      abs_of_nonneg (vonMangoldt_nonneg (n := n))]

/-- The literal positive series is genuinely summable at every fixed c > 1. -/
theorem rightLineMajorant_summable (c : ℝ) (hc : 1 < c) :
    Summable (fun n : ℕ ↦ vonMangoldt (n + 2) / ((n + 2 : ℕ) : ℝ) ^ c) := by
  have h := (LSeriesSummable_vonMangoldt (s := (c : ℂ)) (by simpa using hc)).norm
  simp_rw [term_norm] at h
  exact (summable_nat_add_iff 2).2 h

private theorem norm_series_eq_majorant (c : ℝ) (hc : 1 < c) :
    (∑' n : ℕ, ‖LSeries.term (fun n ↦ (vonMangoldt n : ℂ)) (c : ℂ) n‖) =
      rightLineMajorant c := by
  have h := (LSeriesSummable_vonMangoldt (s := (c : ℂ)) (by simpa using hc)).norm
  have hp : (∑ n ∈ Finset.range 2,
      ‖LSeries.term (fun n ↦ (vonMangoldt n : ℂ)) (c : ℂ) n‖) = 0 := by
    simp only [Finset.sum_range_succ, Finset.sum_range_zero]
    norm_num [LSeries.term]
  rw [← h.sum_add_tsum_nat_add 2, hp, zero_add]
  exact tsum_congr (fun n ↦ term_norm c (n + 2))

/-- The combined logarithmic derivative has the literal fixed-line majorant. -/
theorem combinedMultiplier_norm_le (c : ℝ) (hc : 1 < c) (s : ℂ) (hs : s.re = c) :
    ‖combinedMultiplier s‖ ≤ rightLineMajorant c := by
  have hsone : 1 < s.re := by simpa [hs] using hc
  rw [combinedMultiplier, ← LSeries_vonMangoldt_eq_deriv_riemannZeta_div hsone]
  calc
    _ ≤ ∑' n : ℕ, ‖LSeries.term (fun n ↦ (vonMangoldt n : ℂ)) s n‖ :=
      norm_tsum_le_tsum_norm (LSeriesSummable_vonMangoldt hsone).norm
    _ = ∑' n : ℕ, ‖LSeries.term (fun n ↦ (vonMangoldt n : ℂ)) (c : ℂ) n‖ := by
      apply tsum_congr
      intro n
      simp only [LSeries.norm_term_eq, hs, Complex.ofReal_re]
    _ = rightLineMajorant c := norm_series_eq_majorant c hc

/-- The majorant is nonnegative; no totalized divergent series is used. -/
theorem rightLineMajorant_nonneg (c : ℝ) : 0 ≤ rightLineMajorant c := by
  apply tsum_nonneg
  intro n
  exact div_nonneg (vonMangoldt_nonneg (n := n + 2)) (Real.rpow_nonneg (Nat.cast_nonneg _) _)

end
end FormalResearch.RiemannHypothesis.SourceNativeDirichlet
