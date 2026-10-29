-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PairedSquareMainCorrection.Variantd9dbaa7ed02abccc59137c85b0c4ee620049154c81a9af3d856e5c17d43e8615","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d9dbaa7ed02abccc59137c85b0c4ee620049154c81a9af3d856e5c17d43e8615","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.PairedSquareMainCorrection.Variantd9dbaa7ed02abccc59137c85b0c4ee620049154c81a9af3d856e5c17d43e8615","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"d9dbaa7ed02abccc59137c85b0c4ee620049154c81a9af3d856e5c17d43e8615","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle13/root-square-mainterm/Prototype.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourcePairedSquareQuadrature

/-!
# Signed square readout and its independent source main term

This private candidate evaluates the complete paired square readout. Its
bounded correction uses the independent source normalization, genuine square
moment and full square-tail baseline. The full continuous drift remains in the
first-plus-square reconstruction. The square readout itself is not bounded.
No estimate for the complete signed covariance or RH is asserted.

AI attribution: developed with OpenAI Codex; proof checking is recorded outside
this private source and does not imply canonical or complete acceptance.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PairedSquareMainCorrection.Variantd9dbaa7ed02abccc59137c85b0c4ee620049154c81a9af3d856e5c17d43e8615

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourcePairedSquareMainTerm

open SourcePairedSquareQuadrature SourcePrimeSquareTailWork
open SourcePrimeSquareMainTerm SourceDiagonalMainTerm SourcePairing
open SourcePairedTailTest SourcePairedPrimeAverages SourceFirstPrimeAbel
open WeightedPrimeAbel

/-- Independent source/arithmetic data; this is not specified from a residual. -/
def pairedSquareMainCorrection (A : ℝ) : ℝ :=
  (diagonalMainCoefficient A * A - primeSquareMoment A) +
    (squarePrefixBaseline - squareTailNegativeMean A)

/-- The complete baseline and actual normalized mean retain their signs. -/
theorem pairedSquareReadout_eq {A : ℝ} (hA : 1 ≤ A) :
    pairedSquareReadout A = -primeSquareMoment A +
      (squarePrefixBaseline - squareTailNegativeMean A) := by
  have h := squareTailPairedWork_eq_neg_readout hA
  rw [squareTailPairedWork_eq_work_add_mean hA, squareTailWork_eq hA] at h
  linarith

/-- The normalization is the literal source main term, not a free-Jacobi identification. -/
theorem pairedSquareReadout_eq_main_correction {A : ℝ} (hA : 1 ≤ A) :
    pairedSquareReadout A = -diagonalMainCoefficient A * A +
      pairedSquareMainCorrection A := by
  rw [pairedSquareReadout_eq hA, pairedSquareMainCorrection]
  ring

/-- Absolute values are applied only after the exact signed correction is identified. -/
theorem pairedSquareMainCorrection_uniformly_bounded :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ A : ℝ, 1 ≤ A → |pairedSquareMainCorrection A| ≤ C := by
  obtain ⟨C, hC0, _, hC⟩ := primeSquareMoment_uniform_main_term_error
  refine ⟨11 * C + squarePrefixBaseline, ?_, ?_⟩
  · have hb := squarePrefixBaseline_nonneg
    linarith
  · intro A hA
    have hm0 : 0 ≤ squarePrefixBaseline - squareTailNegativeMean A :=
      sub_nonneg.mpr (squareTailNegativeMean_le_baseline hA)
    have hm : squarePrefixBaseline - squareTailNegativeMean A ≤ squarePrefixBaseline :=
      sub_le_self _ (squareTailNegativeMean_nonneg hA)
    have hs : |diagonalMainCoefficient A * A - primeSquareMoment A| ≤ 11 * C := by
      rw [abs_sub_comm]
      exact hC A hA
    unfold pairedSquareMainCorrection
    exact (abs_add_le _ _).trans (add_le_add hs (by rwa [abs_of_nonneg hm0]))

/-- No piece of the full time-mean minus continuous-half drift is absorbed into a budget. -/
theorem squareRemovedPairedWork_eq_first_main_correction {A : ℝ} (hA : 1 ≤ A) :
    squareRemovedPairedWork A =
      primeLogSum (2 * A) (pairedTailTest A) - diagonalMainCoefficient A * A +
        pairedSquareMainCorrection A -
          (negativeTimeMean A - criticalContinuousMoment A) := by
  rw [squareRemovedPairedWork_eq_first_square_quadrature hA,
    pairedSquareReadout_eq_main_correction hA]
  ring

/-- A coarse exact coefficient bound for the unchanged normalization at every admitted scale. -/
theorem sourceNormalization_le_forty_one {A : ℝ} (hA : 1 ≤ A) :
    sourceNormalization A ≤ 41 := by
  have h2 : 1 ≤ A ^ 2 := one_le_pow₀ hA
  have h4 : 1 ≤ A ^ 4 := one_le_pow₀ hA
  have ht2 : (131072 / 45045 : ℝ) / (2 * A ^ 2) ≤ (131072 / 45045 : ℝ) / 2 := by
    apply div_le_div_of_nonneg_left (by norm_num) (by norm_num)
    nlinarith
  have ht4 : (196608 / 5005 : ℝ) / A ^ 4 ≤ (196608 / 5005 : ℝ) := by
    simpa using div_le_div_of_nonneg_left (by norm_num : 0 ≤ (196608 / 5005 : ℝ))
      (by norm_num : (0 : ℝ) < 1) h4
  unfold sourceNormalization
  linarith

/-- Positive linear scale control uses the exact source and a coarse constant. -/
theorem diagonalMainCoefficient_ge_one_div_four_thousand {A : ℝ} (hA : 1 ≤ A) :
    (1 / 4000 : ℝ) ≤ diagonalMainCoefficient A := by
  have hn := source_normalization_pos A hA
  have hu := sourceNormalization_le_forty_one hA
  unfold diagonalMainCoefficient
  apply (le_div_iff₀ (by positivity : 0 < 99225 * sourceNormalization A)).mpr
  linarith

/-- Hostile actual-source fixture: omitting the signed square readout as O(1) is false. -/
theorem pairedSquareReadout_eventually_le_any_bound (B : ℝ) :
    ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A → pairedSquareReadout A ≤ B := by
  obtain ⟨C, hC0, hC⟩ := pairedSquareMainCorrection_uniformly_bounded
  refine ⟨max 1 (4000 * (C - B)), le_max_left _ _, ?_⟩
  intro A hRA
  have hA : 1 ≤ A := (le_max_left _ _).trans hRA
  have hcut : 4000 * (C - B) ≤ A := (le_max_right _ _).trans hRA
  have hk : (1 / 4000 : ℝ) * A ≤ diagonalMainCoefficient A * A :=
    mul_le_mul_of_nonneg_right (diagonalMainCoefficient_ge_one_div_four_thousand hA)
      (by linarith)
  have hc := (abs_le.mp (hC A hA)).2
  rw [pairedSquareReadout_eq_main_correction hA]
  linarith

/-- A lower budget for this square component fails; the full signed sum remains unresolved. -/
theorem pairedSquareReadout_not_eventually_lower_bounded :
    ¬ ∃ B R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A → B ≤ pairedSquareReadout A := by
  rintro ⟨B, R, hR, h⟩
  obtain ⟨S, hS, hupper⟩ := pairedSquareReadout_eventually_le_any_bound (B - 1)
  have hlo := h (max R S) (le_max_left _ _)
  have hhi := hupper (max R S) (le_max_right _ _)
  linarith

end FormalResearch.RiemannHypothesis.SourcePairedSquareMainTerm
