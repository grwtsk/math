-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePerronIntegrand.Variant78b8e3571b9a06ccfe81c1bc339b78a78307cd4ab2c763044186e63acad5e82f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"78b8e3571b9a06ccfe81c1bc339b78a78307cd4ab2c763044186e63acad5e82f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourcePerronIntegrand.Variant78b8e3571b9a06ccfe81c1bc339b78a78307cd4ab2c763044186e63acad5e82f","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"78b8e3571b9a06ccfe81c1bc339b78a78307cd4ab2c763044186e63acad5e82f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/78/78b8e3571b9a06ccfe81c1bc339b78a78307cd4ab2c763044186e63acad5e82f--PrimePowerPerronSourcePrototype.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceBoundaryArithmetic
import FormalResearch.RiemannHypothesis.PoleSourceDetection
import FormalResearch.RiemannHypothesis.PoleCorrelationRegularity
import Zeta23.WeilEF.FullLine


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePerronIntegrand.Variant78b8e3571b9a06ccfe81c1bc339b78a78307cd4ab2c763044186e63acad5e82f

namespace FormalResearch.RiemannHypothesis.PrimePowerPerron

open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateTailReduction Realization CorrelationRegularity
open SourceLaplaceDetection PoleCorrelationRegularity
open scoped BigOperators

noncomputable section

def sourcePerronIntegrand (A : ℝ) (z : ℂ) : ℂ :=
  (-deriv riemannZeta (z + 1 / 2) / riemannZeta (z + 1 / 2)) * sourceLaplace A z

theorem shifted_von_mangoldt_dirichlet (z : ℂ) (hz : 1 / 2 < z.re) :
    -deriv riemannZeta (z + 1 / 2) / riemannZeta (z + 1 / 2) =
      LSeries (fun n ↦ (ArithmeticFunction.vonMangoldt n : ℂ)) (z + 1 / 2) := by
  exact (ArithmeticFunction.LSeries_vonMangoldt_eq_deriv_riemannZeta_div
    (by simp only [Complex.add_re, Complex.div_re, Complex.one_re, Complex.one_im]
        norm_num; linarith)).symm

theorem shifted_von_mangoldt_summable (z : ℂ) (hz : 1 / 2 < z.re) :
    LSeriesSummable (fun n ↦ (ArithmeticFunction.vonMangoldt n : ℂ)) (z + 1 / 2) := by
  apply ArithmeticFunction.LSeriesSummable_vonMangoldt
  simp only [Complex.add_re]
  norm_num
  linarith

theorem source_hfn_eq_bilateral_laplace (A : ℝ) (z : ℂ) :
    Zeta23.WeilEF.Hfn (fun t ↦ (sourceCorrelation explicitSecondDerivative A t : ℂ))
      (z + 1 / 2) = sourceLaplace A z := by
  unfold Zeta23.WeilEF.Hfn Zeta23.paperFT sourceLaplace bilateralLaplace
  apply integral_congr_ae
  filter_upwards [] with t
  congr 2
  field_simp
  ring

theorem source_laplace_on_line_eq_tilted_fourier (A c t : ℝ) :
    sourceLaplace A ((c : ℂ) + (t : ℂ) * Complex.I) =
      Zeta23.paperFT (Zeta23.WeilEF.tilt
        (fun x ↦ (sourceCorrelation explicitSecondDerivative A x : ℂ)) c) t := by
  rw [← source_hfn_eq_bilateral_laplace]
  rw [show ((c : ℂ) + (t : ℂ) * Complex.I) + 1 / 2 =
    (((c + 1 / 2 : ℝ) : ℂ) + (t : ℂ) * Complex.I) by push_cast; ring]
  rw [Zeta23.WeilEF.Hfn_line]
  congr 2
  ring

theorem source_complex_kernel_cont_diff_two (A : ℝ) (hA : 1 ≤ A) :
    ContDiff ℝ 2 (fun t ↦ (sourceCorrelation explicitSecondDerivative A t : ℂ)) := by
  exact Complex.ofRealCLM.contDiff.comp
    ((source_correlation_cont_diff_four A hA).of_le (by norm_num))

theorem source_complex_kernel_has_compact_support (A : ℝ) (hA : 1 ≤ A) :
    HasCompactSupport (fun t ↦ (sourceCorrelation explicitSecondDerivative A t : ℂ)) :=
  (sourceCorrelation_hasCompactSupport A (by linarith)).comp_left (g := Complex.ofReal) rfl

theorem source_prime_sum_eq_strict (A : ℝ) (hA : 1 ≤ A) :
    (∑' n : ℕ, ((ArithmeticFunction.vonMangoldt n / Real.sqrt n : ℝ) : ℂ) *
      (sourceCorrelation explicitSecondDerivative A (Real.log n) : ℂ)) =
        (primePowerContribution explicitSecondDerivative A : ℂ) := by
  classical
  rw [tsum_eq_sum (s := primeIndices A) (fun n hn ↦ ?_)]
  · unfold primePowerContribution
    push_cast
    rfl
  · by_cases hn2 : 2 ≤ n
    · have hcut : Real.exp (2 * A) ≤ (n : ℝ) := by
        by_contra h
        exact hn ((mem_primeIndices_iff A n).mpr ⟨hn2, lt_of_not_ge h⟩)
      have hlog : 2 * A ≤ Real.log n := by
        simpa only [Real.log_exp] using Real.log_le_log (Real.exp_pos _) hcut
      rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A (Real.log n) (by linarith)
        (hlog.trans (le_abs_self _))]
      simp
    · have hs : n = 0 ∨ n = 1 := by omega
      rcases hs with rfl | rfl <;> simp

theorem source_perron_integral_exact (A : ℝ) (hA : 1 ≤ A) (c : ℝ) (hc : 1 / 2 < c) :
    (primePowerContribution explicitSecondDerivative A : ℂ) =
      (1 / (2 * Real.pi) : ℂ) *
        ∫ t : ℝ, sourcePerronIntegrand A ((c : ℂ) + (t : ℂ) * Complex.I) := by
  have hp := Zeta23.WeilEF.prime_side_line
    (source_complex_kernel_cont_diff_two A hA)
    (source_complex_kernel_has_compact_support A hA)
    (c := c + 1 / 2) (by linarith)
  rw [source_prime_sum_eq_strict A hA] at hp
  rw [← hp]
  congr 1
  apply integral_congr_ae
  filter_upwards [] with t
  have hs : ((c + 1 / 2 : ℝ) : ℂ) + (t : ℂ) * Complex.I =
      ((c : ℂ) + (t : ℂ) * Complex.I) + 1 / 2 := by push_cast; ring
  rw [hs, source_hfn_eq_bilateral_laplace]
  unfold sourcePerronIntegrand logDeriv
  simp only [Pi.div_apply]
  ring

theorem source_perron_integrable (A : ℝ) (hA : 1 ≤ A) (c : ℝ) (hc : 1 / 2 < c) :
    Integrable (fun t : ℝ ↦ sourcePerronIntegrand A
      ((c : ℂ) + (t : ℂ) * Complex.I)) := by
  let k : ℝ → ℂ := fun t ↦ (sourceCorrelation explicitSecondDerivative A t : ℂ)
  have hF := Zeta23.EF.integrable_fourier_of_contDiff_two
    (Zeta23.WeilEF.tilt_contDiff (source_complex_kernel_cont_diff_two A hA) c)
    (Zeta23.WeilEF.tilt_hasCompactSupport (source_complex_kernel_has_compact_support A hA) c)
  have hp := Zeta23.EF.integrable_paperFT_ofReal hF
  obtain ⟨M, hM, hbound⟩ := Zeta23.WeilEF.norm_logDeriv_zeta_le_of_one_lt_re
    (c := c + 1 / 2) (by linarith)
  have hi : Integrable (fun t : ℝ ↦ Zeta23.paperFT (Zeta23.WeilEF.tilt k c) t *
      (-logDeriv riemannZeta (((c + 1 / 2 : ℝ) : ℂ) + (t : ℂ) * Complex.I))) := by
    exact hp.mul_bdd (c := M)
      ((Zeta23.WeilEF.continuous_logDeriv_zeta_line (c := c + 1 / 2)
        (by linarith)).neg.aestronglyMeasurable)
      (Filter.Eventually.of_forall fun t ↦ by rw [norm_neg]; exact hbound t)
  apply hi.congr
  filter_upwards [] with t
  unfold sourcePerronIntegrand
  rw [source_laplace_on_line_eq_tilted_fourier]
  unfold logDeriv
  simp only [Pi.div_apply]
  rw [show ((c + 1 / 2 : ℝ) : ℂ) + (t : ℂ) * Complex.I =
    ((c : ℂ) + (t : ℂ) * Complex.I) + 1 / 2 by push_cast; ring]
  dsimp [k]
  ring

end
end FormalResearch.RiemannHypothesis.PrimePowerPerron
