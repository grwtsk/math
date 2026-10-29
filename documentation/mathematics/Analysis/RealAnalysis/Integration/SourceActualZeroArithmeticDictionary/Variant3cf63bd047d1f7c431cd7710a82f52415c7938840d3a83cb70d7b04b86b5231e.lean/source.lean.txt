import SourceActualFullZeroContour
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourcePlancherel

/-!
The full original source gamma and zero dictionary, with genuine unsmoothed C2 correlation.
The angular Fourier conversion is exact, and the actual autocorrelation has a squared-modulus
Fourier transform on real frequencies. The all-zero weights remain ordinary complex weights
away from the critical line. No source arithmetic form is defined by the zero contribution,
and no uniform arithmetic upper bound or zero exclusion is supplied.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualZeroArithmeticDictionary
open MeasureTheory Set Zeta23
open SourcePairing SourceActualInitialPrimeContour SourceActualInitialPrimeLineL1
open SourceActualPrimeContourResidual SourceActualFullZeroContour
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual EstimatePrimeSmoothDefect PrimePowerDescent
open BridgeFourier SourcePlancherel
noncomputable section

/-- Exact angular Fourier conversion for the genuine original autocorrelation. -/
theorem actualCorrelation_paperFT_eq_sourceSquare (A t : ℝ) (hA : 1 ≤ A) :
    paperFT (fun u => (sourceCorrelation explicitSecondDerivative A u : ℂ)) (t : ℂ) =
      (Complex.normSq (sourceFourier (normalizedTest explicitSecondDerivative A) t) : ℂ) := by
  change sourceFourier (sourceCorrelation explicitSecondDerivative A) t = _
  rw [sourceFourier_eq_fourier, fourier_correlation A hA,
    standardFourier_eq_sourceFourier]
  congr 2
  field_simp

/-- The actual centered Mellin transform is the literal angular Fourier transform. -/
theorem actualInitialPrimeMellin_on_half (A t : ℝ) :
    actualInitialPrimeMellin A ((1 / 2 : ℂ) + (t : ℂ) * Complex.I) =
      paperFT (fun u => (sourceCorrelation explicitSecondDerivative A u : ℂ)) (t : ℂ) := by
  rw [actualInitialPrimeMellin_eq_Hfn]
  unfold WeilEF.Hfn
  congr 1
  field_simp
  ring

private theorem gammaBracket_eq_source (t : ℝ) :
    EF.gammaBracket t = archimedeanMultiplier t := by
  unfold EF.gammaBracket archimedeanMultiplier
  congr 2

/-- Genuine L1 of the whole critical gamma bracket before any arithmetic identification. -/
theorem actualGammaBracket_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun t : ℝ =>
      paperFT (fun u => (sourceCorrelation explicitSecondDerivative A u : ℂ)) (t : ℂ) *
        ((EF.gammaBracket t : ℝ) : ℂ)) := by
  have hi : Integrable (fun t : ℝ =>
      actualInitialPrimeMellin A ((1 / 2 : ℂ) + (t : ℂ) * Complex.I) *
        logDeriv Complex.Gammaℝ ((1 / 2 : ℂ) + (t : ℂ) * Complex.I)) := by
    simpa [actualInitialPrimeMellin_eq_Hfn] using
      WeilEF.integrable_Hfn_mul_logDeriv_Gammaℝ
        (actualInitialPrimeKernel_contDiff A hA)
        (actualInitialPrimeKernel_hasCompactSupport A hA)
        (σ := 1 / 2) (by norm_num) (by norm_num)
  have hj := hi.comp_neg
  refine (hi.add hj).congr (Filter.Eventually.of_forall fun t => ?_)
  simp only [Pi.add_apply]
  rw [show (1 / 2 : ℂ) + ((-t : ℝ) : ℂ) * Complex.I =
    1 - ((1 / 2 : ℂ) + (t : ℂ) * Complex.I) by push_cast; ring,
    actualInitialPrimeMellin_one_sub A hA,
    actualInitialPrimeMellin_on_half]
  rw [← mul_add]
  rw [show (1 : ℂ) - (1 / 2 + (t : ℂ) * Complex.I) =
      1 / 2 - (t : ℂ) * Complex.I by ring, WeilEF.gammaR_bracket]
  unfold EF.gammaBracket
  congr 2
  ring

/-- The independently defined original real archimedean integrand is genuinely L1. -/
theorem actual_original_archimedean_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (archimedeanIntegrand explicitSecondDerivative A) := by
  have h := actualGammaBracket_integrable A hA
  have heq : (fun t : ℝ =>
      paperFT (fun u => (sourceCorrelation explicitSecondDerivative A u : ℂ)) (t : ℂ) *
        ((EF.gammaBracket t : ℝ) : ℂ)) =
      (fun t : ℝ => (archimedeanIntegrand explicitSecondDerivative A t : ℂ)) := by
    funext t
    rw [actualCorrelation_paperFT_eq_sourceSquare A t hA]
    rw [gammaBracket_eq_source]
    simp only [archimedeanIntegrand, Complex.ofReal_mul, mul_comm]
  rw [heq] at h
  exact h.re

/-- The full initial gamma line is exactly half the original real archimedean value. -/
theorem actualArchimedeanLine_eq_half_original (A c : ℝ) (hA : 1 ≤ A)
    (hc : 1 < c) (hc2 : c ≤ 3 / 2) :
    actualArchimedeanLine A c = (archimedeanValue explicitSecondDerivative A : ℂ) / 2 := by
  have hshift := WeilEF.gamma_line_shift
    (actualInitialPrimeKernel_contDiff A hA)
    (actualInitialPrimeKernel_hasCompactSupport A hA) hc hc2
  simp_rw [← actualInitialPrimeMellin_eq_Hfn A] at hshift
  have hl : (∫ t : ℝ,
      (actualInitialPrimeMellin A ((c : ℂ) + (t : ℂ) * Complex.I) +
        actualInitialPrimeMellin A (1 - c - (t : ℂ) * Complex.I)) *
          logDeriv Complex.Gammaℝ ((c : ℂ) + (t : ℂ) * Complex.I)) =
      2 * ∫ t : ℝ, actualInitialPrimeMellin A ((c : ℂ) + (t : ℂ) * Complex.I) *
        logDeriv Complex.Gammaℝ ((c : ℂ) + (t : ℂ) * Complex.I) := by
    rw [← integral_const_mul]
    apply integral_congr_ae
    filter_upwards [] with t
    rw [show (1 : ℂ) - c - (t : ℂ) * Complex.I =
      1 - ((c : ℂ) + (t : ℂ) * Complex.I) by ring,
      actualInitialPrimeMellin_one_sub A hA]
    ring
  rw [hl] at hshift
  have hr : (∫ t : ℝ,
      paperFT (fun u => (sourceCorrelation explicitSecondDerivative A u : ℂ)) (t : ℂ) *
        (logDeriv Complex.Gammaℝ (1 / 2 + (t : ℂ) * Complex.I) +
          logDeriv Complex.Gammaℝ (1 / 2 - (t : ℂ) * Complex.I))) =
      ((∫ t : ℝ, archimedeanIntegrand explicitSecondDerivative A t : ℝ) : ℂ) := by
    rw [← integral_complex_ofReal]
    apply integral_congr_ae
    filter_upwards [] with t
    rw [WeilEF.gammaR_bracket, actualCorrelation_paperFT_eq_sourceSquare A t hA]
    have hb : (Complex.digamma (1 / 4 + (t : ℂ) / 2 * Complex.I)).re -
        Real.log Real.pi = archimedeanMultiplier t := by
      unfold archimedeanMultiplier
      congr 2
      ring
    rw [hb]
    simp only [archimedeanIntegrand, Complex.ofReal_mul, mul_comm]
  rw [hr] at hshift
  unfold actualArchimedeanLine archimedeanValue
  push_cast
  have hp : (Real.pi : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr Real.pi_ne_zero
  field_simp
  linear_combination hshift

/-- Exact unsmoothed source arithmetic form on the all-zero carrier, with every multiplicity. -/
theorem actualFullZeroContribution_eq_original_sourceQuadraticValue (A : ℝ) (hA : 1 ≤ A) :
    actualFullZeroContribution A = (sourceQuadraticValue explicitSecondDerivative A : ℂ) := by
  have h := actualFullZeroContribution_eq_arch_sub_residual A (5 / 4) hA
    (by norm_num) (by norm_num)
  rw [actualArchimedeanLine_eq_half_original A (5 / 4) hA (by norm_num) (by norm_num)] at h
  rw [mertensResidual_eq_closedPrimeMoment A hA,
    ← actual_strictPrime_eq_closedPrimeMoment A hA] at h
  unfold sourceQuadraticValue
  push_cast
  linear_combination h

end
end FormalResearch.RiemannHypothesis.SourceActualZeroArithmeticDictionary
