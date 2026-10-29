import FormalResearch.RiemannHypothesis.SourceMangoldtInteraction
import FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy
import SourceFiveCancelledFactorialBudget

/-!
The literal closed Mangoldt ramp primitive reconstructs the original residual
by two finite integrations. Both support traces and every prime-power atom are
retained. The independently evaluated continuous moment fixes the linear
center; no uniform signed or absolute-area arithmetic bound is asserted.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualRieszCenteredReconstruction
open MeasureTheory Set
open scoped BigOperators
open SourcePairing SourceFirstPrimeAbel SourceMangoldtAbel SourceMangoldtInteraction
open SourceCorrelationCurvature SourceContinuousHalfEnergy SourceLeadingFullKappaReduction
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateMertensResidual EstimatePrimeSmoothDefect
open PrimePowerDescent EstimateSourceMobiusDerivative BridgeAdmissibility

/-- The genuine continuous ramp, with both lower traces zero. -/
def actualRieszContinuousRamp (t : ℝ) : ℝ := 4 * (Real.exp (t / 2) - 1 - t / 2)

/-- All closed actual Mangoldt atoms, without a prime-only filter or cutoff proxy. -/
def actualMangoldtRieszPrimitive (t : ℝ) : ℝ :=
  (∑ n ∈ primePowerInventory t,
    ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) * (t - Real.log n)) -
      actualRieszContinuousRamp t

/-- Independently prescribed positive rational continuous-moment magnitude. -/
def actualRieszContinuousMagnitude (A : ℝ) : ℝ :=
  (14 * A^4 + 272 * A^2) / (7 * A^4 + 272 * A^2 + 7344)

private theorem ramp_continuous (a : ℝ) : Continuous (fun t : ℝ => max 0 (t - a)) :=
  continuous_const.max (continuous_id.sub continuous_const)

/-- The moving closed inventory is a fixed finite ramp sum on every bounded interval. -/
theorem actualMangoldtRieszPrimitive_eq_fixed_ramps {b t : ℝ} (ht : t ≤ b) :
    actualMangoldtRieszPrimitive t =
      (∑ n ∈ primePowerInventory b,
        ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) * max 0 (t - Real.log n)) -
          actualRieszContinuousRamp t := by
  classical
  have heq : (∑ n ∈ primePowerInventory b,
      ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) * max 0 (t - Real.log n)) =
      ∑ n ∈ (primePowerInventory b).filter (fun n => Real.log n ≤ t),
        ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) * (t - Real.log n) := by
    rw [Finset.sum_filter]
    apply Finset.sum_congr rfl
    intro n hn
    by_cases hl : Real.log (n : ℝ) ≤ t
    · rw [if_pos hl, max_eq_right (by linarith)]
    · rw [if_neg hl, max_eq_left (by linarith), mul_zero]
  rw [primePowerInventory_filter_log b t ht] at heq
  unfold actualMangoldtRieszPrimitive
  rw [heq]

private theorem continuousRamp_contDiff : ContDiff ℝ 2 actualRieszContinuousRamp := by
  unfold actualRieszContinuousRamp
  fun_prop

private theorem continuousRamp_deriv (t : ℝ) :
    HasDerivAt actualRieszContinuousRamp (2 * Real.exp (t / 2) - 2) t := by
  convert (((Real.hasDerivAt_exp (t / 2)).comp t ((hasDerivAt_id t).div_const 2)).sub_const 1
    |>.sub ((hasDerivAt_id t).div_const 2) |>.const_mul 4) using 1 <;> dsimp <;> ring

private theorem continuousRamp_first_deriv (t : ℝ) :
    HasDerivAt (fun t : ℝ => 2 * Real.exp (t / 2) - 2) (Real.exp (t / 2)) t := by
  convert (((Real.hasDerivAt_exp (t / 2)).comp t
    ((hasDerivAt_id t).div_const 2)).const_mul 2).sub_const 2 using 1 <;> ring

/-- Genuine continuity includes newborn closed atoms, whose ramp value is zero. -/
theorem actualMangoldtRieszPrimitive_continuousOn (b : ℝ) :
    ContinuousOn actualMangoldtRieszPrimitive (Icc 0 b) := by
  have hc : Continuous (fun t : ℝ =>
      (∑ n ∈ primePowerInventory b,
        ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) * max 0 (t - Real.log n)) -
          actualRieszContinuousRamp t) := by
    apply Continuous.sub _ continuousRamp_contDiff.continuous
    exact continuous_finset_sum _ (fun n _ => (ramp_continuous (Real.log n)).const_mul _)
  apply hc.continuousOn.congr
  intro t ht
  exact (actualMangoldtRieszPrimitive_eq_fixed_ramps ht.2).symm

/-- The true lower anchor retains the zero Mangoldt unit and empty original inventory. -/
theorem actualMangoldtRieszPrimitive_zero : actualMangoldtRieszPrimitive 0 = 0 := by
  simp [actualMangoldtRieszPrimitive, primePowerInventory, actualRieszContinuousRamp]

/-- Every actual finite Riesz pairing has proved interval integrability. -/
theorem actualMangoldtRiesz_pairing_intervalIntegrable {A : ℝ} (hA : 0 < A) :
    IntervalIntegrable (fun t => deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
      actualMangoldtRieszPrimitive t) volume 0 (2 * A) := by
  apply ContinuousOn.intervalIntegrable
  rw [uIcc_of_le (by linarith : 0 ≤ 2 * A)]
  exact ((sourceCorrelation_deriv_contDiff hA).continuous_deriv_one.continuousOn).mul
    (actualMangoldtRieszPrimitive_continuousOn (2 * A))

private theorem ramp_integral {A a : ℝ} (hA : 0 < A) (ha : 0 ≤ a) (hab : a ≤ 2 * A) :
    (∫ t in 0..2 * A, deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
      max 0 (t - a)) = sourceCorrelation explicitSecondDerivative A a := by
  let C := sourceCorrelation explicitSecondDerivative A
  have hC : ContDiff ℝ 1 C := sourceCorrelation_contDiff A hA
  have hC' : ContDiff ℝ 1 (deriv C) := sourceCorrelation_deriv_contDiff hA
  have hi : ∀ x y, IntervalIntegrable (fun t => deriv (deriv C) t * max 0 (t - a))
      volume x y := fun x y =>
    (hC'.continuous_deriv_one.mul (ramp_continuous a)).intervalIntegrable x y
  have hleft : (∫ t in 0..a, deriv (deriv C) t * max 0 (t - a)) = 0 := by
    apply intervalIntegral.integral_eq_zero_of_ae
    filter_upwards [] with t ht
    rw [uIoc_of_le ha] at ht
    rw [max_eq_left (by linarith [ht.2]), mul_zero]
  have hright : (∫ t in a..2 * A, deriv (deriv C) t * max 0 (t - a)) =
      ∫ t in a..2 * A, (t - a) * deriv (deriv C) t := by
    apply intervalIntegral.integral_congr
    intro t ht
    rw [uIcc_of_le hab] at ht
    rw [max_eq_right (by linarith [ht.1]), mul_comm]
  have hp := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (u := fun t : ℝ => t - a) (u' := fun _ => (1 : ℝ)) (v := deriv C)
    (v' := deriv (deriv C)) (fun t _ => (hasDerivAt_id t).sub_const a)
    (fun t _ => (hC'.differentiable (by norm_num) t).hasDerivAt)
    (continuous_const.intervalIntegrable a (2 * A))
    (hC'.continuous_deriv_one.intervalIntegrable a (2 * A))
  have hf := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _ => (hC.differentiable (by norm_num) t).hasDerivAt)
    (hC'.continuous.intervalIntegrable a (2 * A))
  have hz : C (2 * A) = 0 := sourceCorrelation_eq_zero_of_two_mul_le_abs A _ hA
    (by rw [abs_of_nonneg (by linarith : 0 ≤ 2 * A)])
  have hz' : deriv C (2 * A) = 0 :=
    sourceCorrelation_deriv_zero_of_two_mul_le A _ hA le_rfl
  simp only [one_mul, sub_self, zero_mul, hz, hz', mul_zero, zero_sub] at hp hf
  rw [← intervalIntegral.integral_add_adjacent_intervals (hi 0 a) (hi a (2 * A)),
    hleft, hright, zero_add]
  linarith

private theorem continuousRamp_pairing {A : ℝ} (hA : 0 < A) :
    (∫ t in 0..2 * A, deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
      actualRieszContinuousRamp t) = criticalContinuousMoment A := by
  let C := sourceCorrelation explicitSecondDerivative A
  let Q' := fun t : ℝ => 2 * Real.exp (t / 2) - 2
  have hC : ContDiff ℝ 1 C := sourceCorrelation_contDiff A hA
  have hC' : ContDiff ℝ 1 (deriv C) := sourceCorrelation_deriv_contDiff hA
  have hQ' : Continuous Q' := by fun_prop
  have hp := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (u := actualRieszContinuousRamp) (u' := Q') (v := deriv C)
    (v' := deriv (deriv C)) (fun t _ => continuousRamp_deriv t)
    (fun t _ => (hC'.differentiable (by norm_num) t).hasDerivAt)
    (hQ'.intervalIntegrable 0 (2 * A)) (hC'.continuous_deriv_one.intervalIntegrable 0 (2 * A))
  have hq := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (u := Q') (u' := fun t => Real.exp (t / 2)) (v := C) (v' := deriv C)
    (fun t _ => continuousRamp_first_deriv t)
    (fun t _ => (hC.differentiable (by norm_num) t).hasDerivAt)
    ((Real.continuous_exp.comp (continuous_id.div_const 2)).intervalIntegrable 0 (2 * A))
    (hC'.continuous.intervalIntegrable 0 (2 * A))
  have hz : C (2 * A) = 0 := sourceCorrelation_eq_zero_of_two_mul_le_abs A _ hA
    (by rw [abs_of_nonneg (by linarith : 0 ≤ 2 * A)])
  have hz' : deriv C (2 * A) = 0 :=
    sourceCorrelation_deriv_zero_of_two_mul_le A _ hA le_rfl
  have hq0 : Q' 0 = 0 := by simp [Q']
  have hQ0 : actualRieszContinuousRamp 0 = 0 := by simp [actualRieszContinuousRamp]
  rw [hz', hQ0, mul_zero, zero_mul, zero_sub] at hp
  rw [hz, hq0, mul_zero, zero_mul, zero_sub] at hq
  have hc : (∫ t in 0..2 * A, deriv (deriv C) t * actualRieszContinuousRamp t) =
      ∫ t in 0..2 * A, actualRieszContinuousRamp t * deriv (deriv C) t := by
    apply intervalIntegral.integral_congr
    intro t _
    ring
  rw [hc]
  change _ = ∫ t in 0..2 * A, Real.exp (t / 2) * C t
  linarith

private theorem coefficient_transport {A : ℝ} {n : ℕ} (hn : 0 < n) :
    ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
        sourceCorrelation explicitSecondDerivative A (Real.log n) =
      ArithmeticFunction.vonMangoldt n * exponentialTest
        (sourceCorrelation explicitSecondDerivative A) (Real.log n) := by
  have hnR : 0 < (n : ℝ) := by exact_mod_cast hn
  unfold exponentialTest
  rw [neg_div, Real.exp_neg, Real.exp_half, Real.exp_log hnR]
  ring

/-- Exact reconstruction of the original residual from the literal closed Riesz primitive. -/
theorem actualMangoldtRiesz_reconstruction {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A = criticalContinuousMoment A +
      ∫ t in 0..2 * A, deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
        actualMangoldtRieszPrimitive t := by
  have hp : 0 < A := by linarith
  let C := sourceCorrelation explicitSecondDerivative A
  let S := fun t => ∑ n ∈ primePowerInventory (2 * A),
    ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) * max 0 (t - Real.log n)
  have hC'' := (sourceCorrelation_deriv_contDiff hp).continuous_deriv_one
  have hS : Continuous S := by
    exact continuous_finset_sum _ (fun n _ => (ramp_continuous (Real.log n)).const_mul _)
  have he : (∫ t in 0..2 * A, deriv (deriv C) t * actualMangoldtRieszPrimitive t) =
      (∫ t in 0..2 * A, deriv (deriv C) t * S t) -
        (∫ t in 0..2 * A, deriv (deriv C) t * actualRieszContinuousRamp t) := by
    rw [← intervalIntegral.integral_sub ((hC''.mul hS).intervalIntegrable 0 (2 * A))
      ((hC''.mul continuousRamp_contDiff.continuous).intervalIntegrable 0 (2 * A))]
    apply intervalIntegral.integral_congr
    intro t ht
    rw [uIcc_of_le (by linarith : 0 ≤ 2 * A)] at ht
    rw [actualMangoldtRieszPrimitive_eq_fixed_ramps ht.2]
    change _ = deriv (deriv C) t * S t - _
    ring
  have hs : (∫ t in 0..2 * A, deriv (deriv C) t * S t) = closedPrimeMoment A := by
    have heq : (fun t => deriv (deriv C) t * S t) =
        ∑ n ∈ primePowerInventory (2 * A), fun t =>
          (ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ)) *
            (deriv (deriv C) t * max 0 (t - Real.log n)) := by
      funext t
      simp only [S, Finset.sum_apply, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro n _
      ring
    rw [heq, intervalIntegral.integral_finset_sum]
    · unfold closedPrimeMoment
      apply Finset.sum_congr rfl
      intro n hn
      rw [intervalIntegral.integral_const_mul,
        ramp_integral hp (mangoldtInventory_log_bounds _ _ hn).1
          (mangoldtInventory_log_bounds _ _ hn).2]
      exact coefficient_transport (by have hn' := Finset.mem_Icc.mp hn; omega)
    · intro n _
      exact ((hC''.mul (ramp_continuous (Real.log n))).const_mul _).intervalIntegrable 0 (2 * A)
  rw [he, hs, continuousRamp_pairing hp, mertensResidual_eq_closedPrimeMoment A hA]
  ring

/-- The actual positive rational center is evaluated independently of the residual. -/
theorem actualRiesz_continuousMoment_eq_neg_magnitude {A : ℝ} (hA : 1 ≤ A) :
    criticalContinuousMoment A = -actualRieszContinuousMagnitude A := by
  rw [criticalContinuousMoment_eq_rational hA]
  unfold actualRieszContinuousMagnitude
  ring

end FormalResearch.RiemannHypothesis.SourceActualRieszCenteredReconstruction
