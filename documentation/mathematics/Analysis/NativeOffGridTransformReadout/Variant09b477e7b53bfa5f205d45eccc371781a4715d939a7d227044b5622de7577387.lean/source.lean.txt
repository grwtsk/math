import FormalResearch.RiemannHypothesis.Conversation.ActualComplexCorrelationMoment
import FormalResearch.RiemannHypothesis.Conversation.NativeOffGridPhase
import FormalResearch.RiemannHypothesis.Conversation.ActualCensusMoment
import Mathlib.Analysis.Complex.Trigonometric

/-!
# Retained half-moments and the logarithmic positive-density model readout

Both halves of the actual complex source correlation are retained. The
negative half at Re(z)=1/4 pays four, and the annihilated 1/2 source pole
pays two. Their exact full-moment identity bounds the logarithmic model
readout's difference from the phase-selected squared source moment by four.
The separate x-domain change of variables and the integer/half-integer
sign estimates are not asserted here. Human exact-source and off-grid
direction: grwtsk contributors. Local complex half-moment and error consumer:
OpenAI Codex. Qualified source definitions and upstream integrals retain
identity; this is not a von Mangoldt or RH counterexample.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.NativeOffGridTransformReadout
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation MeasureTheory Set
open ActualComplexSourceMoment ActualComplexCorrelationMoment ActualCensusMoment
open NativeOffGridDensity NativeOffGridPhase
noncomputable section
local notation "C" => sourceCorrelation explicitSecondDerivative

/-- The complex half moment in this module, with the following exact parameterization.

def complexHalfMoment (A : ℝ) (z : ℂ) : ℂ := ∫ t in (0 : ℝ)..2 * A, Complex.exp (z * (t : ℂ))
* (C A t : ℂ)
-/
def complexHalfMoment (A : ℝ) (z : ℂ) : ℂ :=
  ∫ t in (0 : ℝ)..2 * A, Complex.exp (z * (t : ℂ)) * (C A t : ℂ)
/-- The logarithmic model readout in this module, with the following exact parameterization.

def logarithmicModelReadout (A : ℝ) : ℝ := (complexHalfMoment A (1 / 2)).re + (phase *
exponent * complexHalfMoment A mode).re
-/
def logarithmicModelReadout (A : ℝ) : ℝ :=
  (complexHalfMoment A (1 / 2)).re + (phase * exponent * complexHalfMoment A mode).re

theorem complex_full_moment_retains_halves {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    complexTestMoment A z ^ 2 = complexHalfMoment A z + complexHalfMoment A (-z) := by
  have hpos : 0 < A := by linarith
  have hi := complex_weighted_actual_correlation_integrable hA z
  have hfull : (∫ t : ℝ, Complex.exp (z * (t : ℂ)) * (C A t : ℂ)) =
      ∫ t in -(2 * A)..2 * A, Complex.exp (z * (t : ℂ)) * (C A t : ℂ) := by
    calc
      _ = ∫ t : ℝ, (Icc (-(2 * A)) (2 * A)).indicator
          (fun t : ℝ ↦ Complex.exp (z * (t : ℂ)) * (C A t : ℂ)) t := by
        apply integral_congr_ae
        filter_upwards [] with t
        by_cases ht : t ∈ Icc (-(2 * A)) (2 * A)
        · rw [indicator_of_mem ht]
        · rw [indicator_of_notMem ht]
          have hz : C A t = 0 := by
            apply sourceCorrelation_eq_zero_of_two_mul_le_abs A t hpos
            by_contra hh
            exact ht (abs_le.mp (le_of_lt (lt_of_not_ge hh)))
          rw [hz, Complex.ofReal_zero, mul_zero]
      _ = _ := by
        rw [MeasureTheory.integral_indicator measurableSet_Icc, integral_Icc_eq_integral_Ioc,
          intervalIntegral.integral_of_le (by linarith : -(2 * A) ≤ 2 * A)]
  have hreflect : (∫ t in -(2 * A)..0, Complex.exp (z * (t : ℂ)) * (C A t : ℂ)) =
      complexHalfMoment A (-z) := by
    calc
      _ = ∫ t in (0 : ℝ)..2 * A, Complex.exp (z * ((-t : ℝ) : ℂ)) * (C A (-t) : ℂ) := by
        simpa only [neg_zero] using
          (intervalIntegral.integral_comp_neg
            (fun t : ℝ ↦ Complex.exp (z * (t : ℂ)) * (C A t : ℂ))
            (a := 0) (b := 2 * A)).symm
      _ = _ := by
        unfold complexHalfMoment
        apply intervalIntegral.integral_congr
        intro t _
        dsimp only
        rw [sourceCorrelation_even A t]
        congr 2
        push_cast
        ring
  have hs := intervalIntegral.integral_add_adjacent_intervals
    (a := -(2 * A)) (b := 0) (c := 2 * A) hi.intervalIntegrable hi.intervalIntegrable
  rw [hreflect, ← hfull, complex_actual_full_correlation_moment hA] at hs
  simpa only [complexHalfMoment, add_comm] using hs.symm

theorem complex_negative_half_price {A r : ℝ} (hA : 1 ≤ A) (hr : 0 < r)
    {z : ℂ} (hz : z.re = 1 / r) : ‖complexHalfMoment A (-z)‖ ≤ r := by
  have hc : Continuous (fun t : ℝ ↦ Real.exp (-t / r)) :=
    Real.continuous_exp.comp (continuous_id.neg.div_const r)
  have hb : ‖complexHalfMoment A (-z)‖ ≤ ∫ t in (0 : ℝ)..2 * A, Real.exp (-t / r) := by
    unfold complexHalfMoment
    apply intervalIntegral.norm_integral_le_of_norm_le (by linarith)
      (Filter.Eventually.of_forall (fun t _ ↦ ?_)) (hc.intervalIntegrable _ _)
    have he : ((-z) * (t : ℂ)).re = -t / r := by
      simp only [Complex.mul_re, Complex.neg_re, Complex.ofReal_re, Complex.ofReal_im,
        mul_zero, sub_zero, hz]
      ring
    rw [norm_mul, Complex.norm_exp, he, Complex.norm_real, Real.norm_eq_abs]
    exact mul_le_of_le_one_right (Real.exp_pos _).le (actual_correlation_abs_le_one A t hA)
  rw [exact_decaying_exponential_interval hr] at hb
  exact hb.trans (by nlinarith [Real.exp_pos (-(2 * A) / r)])

theorem complex_actual_pole_moment_annihilated {A : ℝ} (hA : 1 ≤ A) :
    complexTestMoment A (1 / 2) = 0 := by
  rw [complex_actual_normalized_laplace_multiplier hA]
  norm_num

theorem complex_positive_pole_half_price {A : ℝ} (hA : 1 ≤ A) :
    ‖complexHalfMoment A (1 / 2)‖ ≤ 2 := by
  have hs := complex_full_moment_retains_halves hA (1 / 2)
  rw [complex_actual_pole_moment_annihilated hA, zero_pow (by decide : (2 : ℕ) ≠ 0)] at hs
  have he : complexHalfMoment A (1 / 2) = -complexHalfMoment A (-(1 / 2)) := by
    calc
      _ = complexHalfMoment A (1 / 2) + complexHalfMoment A (-(1 / 2)) -
          complexHalfMoment A (-(1 / 2)) := by ring
      _ = _ := by rw [← hs]; ring
  rw [he, norm_neg]
  exact complex_negative_half_price hA (by norm_num : (0 : ℝ) < 2) (by norm_num)

theorem logarithmic_model_full_moment_error {A : ℝ} (hA : 1 ≤ A) :
    |logarithmicModelReadout A - (phase * exponent * complexTestMoment A mode ^ 2).re| ≤ 4 := by
  have hs := complex_full_moment_retains_halves hA mode
  have he : logarithmicModelReadout A - (phase * exponent * complexTestMoment A mode ^ 2).re =
      (complexHalfMoment A (1 / 2)).re - (phase * exponent * complexHalfMoment A (-mode)).re := by
    unfold logarithmicModelReadout
    rw [hs]
    simp only [mul_add, Complex.add_re]
    ring
  have hI := (Complex.abs_re_le_norm (complexHalfMoment A (1 / 2))).trans
    (complex_positive_pole_half_price hA)
  have hn : ‖complexHalfMoment A (-mode)‖ ≤ 4 :=
    complex_negative_half_price hA (by norm_num : (0 : ℝ) < 4) (by norm_num [mode])
  have hosc : |(phase * exponent * complexHalfMoment A (-mode)).re| ≤ 2 := by
    calc
      _ ≤ ‖phase * exponent * complexHalfMoment A (-mode)‖ := Complex.abs_re_le_norm _
      _ = (1 / 2) * ‖complexHalfMoment A (-mode)‖ := by rw [norm_mul, literal_phase_amplitude]
      _ ≤ 2 := by linarith
  rw [he]
  have ht := abs_sub_le (complexHalfMoment A (1 / 2)).re 0
    (phase * exponent * complexHalfMoment A (-mode)).re
  simp only [sub_zero, zero_sub, abs_neg] at ht
  linarith

end
end GRWTSK.RiemannHypothesis.Conversation.NativeOffGridTransformReadout
