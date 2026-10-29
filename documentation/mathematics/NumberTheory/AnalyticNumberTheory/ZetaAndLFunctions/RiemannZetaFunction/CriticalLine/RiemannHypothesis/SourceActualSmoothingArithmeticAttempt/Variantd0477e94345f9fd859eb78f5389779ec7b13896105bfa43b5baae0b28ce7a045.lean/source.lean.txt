import SourceActualClosedXiSignedMoment

/-!
Bounded smoothing attempt on the actual full closed signed arithmetic moment.
Only actual source baseline and fixed first-atom companions are controlled.
The joint signed full-Mangoldt arithmetic interaction remains unbounded here.
No uniform J witness, RH, LI, or pointwise square-root error is assumed.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualSmoothingArithmeticAttempt
open MeasureTheory SourceActualClosedXiSignedMoment SourceFirstAtomSignedWork
open SourceMangoldtAbel SourceFirstPrimeAbel SourceContinuousHalfEnergy
open SourcePairing SourceMangoldtNorm SourceCorrelationEnergy RH16ResumeBudget
open SourceOuterPsiFubini
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation EstimateMertensResidual

/-- Defined entirely from the actual fixed head, independent gamma boundary and smooth source. -/
def actualSmoothingCompanion (A : ℝ) : ℝ :=
  firstAtomHeadWork A + Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) -
    criticalContinuousMoment A

/-- The actual gamma boundary stays uniformly positive and bounded. -/
theorem actual_gamma_boundary_bounds (A : ℝ) (hA : 40 ≤ A) :
    (7 / 16 : ℝ) ≤ Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) ∧
      Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) ≤ 4 / 3 := by
  have hA1 : 1 ≤ A := by linarith
  have hp : 0 < A := by linarith
  have hL0 : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  have hL1 : Real.log (2 : ℝ) ≤ 1 := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  have hc := sourceCorrelation_sub_one_abs_le hA1 (Real.log 2)
  rw [abs_of_nonneg hL0] at hc
  have hs : 5 * Real.log 2 / A ≤ (1 / 8 : ℝ) :=
    (div_le_iff₀ hp).mpr (by linarith)
  have hcl : (7 / 8 : ℝ) ≤ sourceCorrelation explicitSecondDerivative A (Real.log 2) := by
    linarith [(abs_le.mp hc).1]
  have hch : sourceCorrelation explicitSecondDerivative A (Real.log 2) ≤ 1 :=
    (le_abs_self _).trans (actual_correlation_abs_le_one A _ hA1)
  have helo : 1 ≤ Real.exp (Real.log 2 / 2) := Real.one_le_exp (by linarith)
  have hehi : Real.exp (Real.log 2 / 2) ≤ 2 := by
    calc
      _ ≤ Real.exp (Real.log 2) := Real.exp_le_exp.mpr (by linarith)
      _ = 2 := Real.exp_log (by norm_num)
  have hqlo : (7 / 8 : ℝ) ≤ criticalPrimeTest A (Real.log 2) := by
    unfold criticalPrimeTest
    nlinarith
  have hqhi : criticalPrimeTest A (Real.log 2) ≤ 2 := by
    unfold criticalPrimeTest
    nlinarith [Real.exp_pos (Real.log 2 / 2)]
  have hglo := Real.one_half_lt_eulerMascheroniConstant
  have hghi := Real.eulerMascheroniConstant_lt_two_thirds
  constructor <;> nlinarith

/-- Exact cancellation retains the actual closed moment and the original Mangoldt sum. -/
theorem actual_moment_eq_residual_add_companion (A : ℝ) (hA : 1 ≤ A) :
    actualClosedXiSignedMoment A = mertensResidual A + actualSmoothingCompanion A := by
  have hr := mertensResidual_eq_continuous_sub_Mangoldt_work A hA
  have hw := criticalMangoldtWork_eq_head_add_remaining A hA
  have hb := remainingAtomWork_eq_actual_Xi_plain_pairing A hA
  rw [actual_contracted_pairing_eq_neg_closed_moment A hA] at hb
  unfold actualSmoothingCompanion
  linarith only [hr, hw, hb]

/-- The complete smooth baseline cancels; only the fixed first-atom data accompany the work. -/
theorem actual_moment_eq_boundary_sub_Mangoldt_work (A : ℝ) (hA : 1 ≤ A) :
    actualClosedXiSignedMoment A = firstAtomHeadWork A +
      Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) -
        criticalMangoldtWork A := by
  rw [actual_moment_eq_residual_add_companion A hA,
    mertensResidual_eq_continuous_sub_Mangoldt_work A hA]
  unfold actualSmoothingCompanion
  ring

/-- Uniform analytic control does not estimate the remaining signed arithmetic work. -/
theorem actual_smoothing_companion_bounds (A : ℝ) (hA : 40 ≤ A) :
    13 / 16 - criticalBaselineCorrection A ≤ actualSmoothingCompanion A ∧
      actualSmoothingCompanion A ≤ 10 / 3 := by
  have hA1 : 1 ≤ A := by linarith
  have hh := firstAtomHeadWork_signed_bounds A hA
  have hh0 := firstAtomHeadWork_nonpositive A hA
  have hg := actual_gamma_boundary_bounds A hA
  have hm := criticalContinuousMoment_strict_bounds hA1
  have hb := criticalBaselineCorrection_eq_actual A hA1
  unfold actualSmoothingCompanion
  constructor <;> linarith only [hh.1, hh0, hg.1, hg.2, hm.1, hb]

/-- Unconditional matched source inequalities; neither constructs an eventual J. -/
theorem actual_moment_residual_comparison (A : ℝ) (hA : 40 ≤ A) :
    mertensResidual A + 13 / 16 - criticalBaselineCorrection A ≤
        actualClosedXiSignedMoment A ∧
      actualClosedXiSignedMoment A ≤ mertensResidual A + 10 / 3 := by
  have he := actual_moment_eq_residual_add_companion A (by linarith)
  have hb := actual_smoothing_companion_bounds A hA
  constructor <;> linarith only [he, hb.1, hb.2]

end FormalResearch.RiemannHypothesis.SourceActualSmoothingArithmeticAttempt
