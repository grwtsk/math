import SourceActualXiErrorConvolutionKernel
import SourceActualXiDampedTailReturn

/-!
Finite absolutely continuous Abel transport moves the two actual error
convolutions through the returned source test. Prime jumps remain in the
actual locally integrable E, and all lower/seven heads are retained.
No critical cancellation or ordinary error rate is assumed.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualXiErrorCriticalCovariance
open MeasureTheory Set
open scoped Interval
open SourceMangoldtAbel SourceActualXiErrorConvolution SourceActualXiErrorConvolutionKernel
open SourceActualXiDampedTailReturn ActualSupportEdgeMangoldtRow SourcePairing
open RH16IndependentChallengeNext
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
noncomputable section

private theorem centered_error_intervalIntegrable {b : ℝ} (hb : 0 ≤ b) :
    IntervalIntegrable actualCenteredMangoldtLogError volume 0 b := by
  have hi := mangoldtLogError_mul_deriv_intervalIntegrable 0 b hb id (by fun_prop)
  have he : IntervalIntegrable mangoldtLogError volume 0 b := by
    simpa only [deriv_id, mul_one] using hi
  exact he.add intervalIntegrable_const

private theorem weighted_error_intervalIntegrable (lam : ℝ) {b : ℝ} (hb : 0 ≤ b) :
    IntervalIntegrable (fun r => actualCenteredMangoldtLogError r * Real.exp (lam * r))
      volume 0 b :=
  (centered_error_intervalIntegrable hb).mul_continuousOn (by fun_prop)

private theorem convolution_eq_primitive (lam t : ℝ) :
    actualMangoldtErrorConvolution lam t = Real.exp (-lam * t) *
      ∫ r in 0..t, actualCenteredMangoldtLogError r * Real.exp (lam * r) := by
  unfold actualMangoldtErrorConvolution
  rw [← intervalIntegral.integral_const_mul]
  apply intervalIntegral.integral_congr
  intro r _
  dsimp only
  rw [← mul_assoc, mul_comm (Real.exp (-lam * t)), mul_assoc, ← Real.exp_add]
  congr 2
  ring

/-- Each literal finite error convolution is AC on its real time interval. -/
theorem actualMangoldtErrorConvolution_absolutelyContinuous (lam : ℝ) {b : ℝ} (hb : 0 ≤ b) :
    AbsolutelyContinuousOnInterval (actualMangoldtErrorConvolution lam) 0 b := by
  have hi := weighted_error_intervalIntegrable lam hb
  have he : ContDiff ℝ 1 (fun t : ℝ => Real.exp (-lam * t)) := by fun_prop
  have hf : actualMangoldtErrorConvolution lam = fun t => Real.exp (-lam * t) *
      ∫ r in 0..t, actualCenteredMangoldtLogError r * Real.exp (lam * r) :=
    funext (convolution_eq_primitive lam)
  rw [hf]
  exact he.contDiffOn.absolutelyContinuousOnInterval.fun_mul
    (hi.absolutelyContinuousOnInterval_intervalIntegral (by simp))

/-- The actual AE convolution ODE keeps every closed prime-power jump. -/
theorem actualMangoldtErrorConvolution_ae_hasDerivAt (lam : ℝ) {b : ℝ} (hb : 0 ≤ b) :
    ∀ᵐ t, t ∈ uIcc 0 b → HasDerivAt (actualMangoldtErrorConvolution lam)
      (actualCenteredMangoldtLogError t - lam * actualMangoldtErrorConvolution lam t) t := by
  have hi := weighted_error_intervalIntegrable lam hb
  have hf : actualMangoldtErrorConvolution lam = fun t => Real.exp (-lam * t) *
      ∫ r in 0..t, actualCenteredMangoldtLogError r * Real.exp (lam * r) :=
    funext (convolution_eq_primitive lam)
  rw [hf]
  filter_upwards [hi.ae_hasDerivAt_integral] with t ht hm
  have he := (((hasDerivAt_id t).const_mul (-lam)).exp).mul (ht hm 0 (by simp))
  apply he.congr_deriv
  simp only [id_eq]
  have hx : Real.exp (-lam * t) * Real.exp (lam * t) = 1 := by
    rw [← Real.exp_add, show -lam * t + lam * t = 0 by ring, Real.exp_zero]
  calc
    _ = actualCenteredMangoldtLogError t *
        (Real.exp (-lam * t) * Real.exp (lam * t)) -
          lam * (Real.exp (-lam * t) *
            ∫ r in 0..t, actualCenteredMangoldtLogError r * Real.exp (lam * r)) := by ring
    _ = _ := by rw [hx]; ring


/-- The actual half-convolution antiderivative retains the zeroth quarter jet. -/
def actualHalfConvolutionReturnTest (A t : ℝ) : ℝ :=
  Real.exp (t / 2) * (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) t -
    sourceCorrelation explicitSecondDerivative A t / 4)

/-- The actual one-convolution antiderivative retains the first half jet. -/
def actualOneConvolutionReturnTest (A t : ℝ) : ℝ :=
  Real.exp (t / 2) * (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) t +
    deriv (sourceCorrelation explicitSecondDerivative A) t / 2)

/-- The half test differentiates to half itself plus the original quarter return density. -/
theorem actualHalfConvolutionReturnTest_hasDerivAt {A : ℝ} (hA : 0 < A) (t : ℝ) :
    HasDerivAt (actualHalfConvolutionReturnTest A)
      ((1 / 2 : ℝ) * actualHalfConvolutionReturnTest A t + actualDampedXiReturnDensity A t) t := by
  have hc := actual_correlation_contDiff_four A hA
  have h2 : HasDerivAt (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A))
      (iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) t) t := by
    simpa only [iteratedDeriv_succ] using
      ((hc.differentiable_iteratedDeriv 2 (by norm_num)) t).hasDerivAt
  have h0 : HasDerivAt (sourceCorrelation explicitSecondDerivative A)
      (deriv (sourceCorrelation explicitSecondDerivative A) t) t :=
    (hc.differentiable (by norm_num) t).hasDerivAt
  have hd := (((hasDerivAt_id t).div_const (2 : ℝ)).exp).mul (h2.sub (h0.div_const 4))
  exact hd.congr_deriv (by
    unfold actualHalfConvolutionReturnTest actualDampedXiReturnDensity
    dsimp only [id_eq, Pi.sub_apply, Pi.add_apply]
    ring)

/-- The one test differentiates to itself plus the same original return density. -/
theorem actualOneConvolutionReturnTest_hasDerivAt {A : ℝ} (hA : 0 < A) (t : ℝ) :
    HasDerivAt (actualOneConvolutionReturnTest A)
      (actualOneConvolutionReturnTest A t + actualDampedXiReturnDensity A t) t := by
  have hc := actual_correlation_contDiff_four A hA
  have h2 : HasDerivAt (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A))
      (iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) t) t := by
    simpa only [iteratedDeriv_succ] using
      ((hc.differentiable_iteratedDeriv 2 (by norm_num)) t).hasDerivAt
  have h1 : HasDerivAt (deriv (sourceCorrelation explicitSecondDerivative A))
      (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) t) t := by
    simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using
      ((hc.differentiable_iteratedDeriv 1 (by norm_num)) t).hasDerivAt
  have hd := (((hasDerivAt_id t).div_const (2 : ℝ)).exp).mul (h2.add (h1.div_const 2))
  exact hd.congr_deriv (by
    unfold actualOneConvolutionReturnTest actualDampedXiReturnDensity
    dsimp only [id_eq, Pi.sub_apply, Pi.add_apply]
    ring)

private theorem returnDensity_continuous {A : ℝ} (hA : 0 < A) :
    Continuous (actualDampedXiReturnDensity A) := by
  have hc := actual_correlation_contDiff_four A hA
  have h1 : Continuous (deriv (sourceCorrelation explicitSecondDerivative A)) := by
    simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using
      hc.continuous_iteratedDeriv 1 (by norm_num)
  unfold actualDampedXiReturnDensity
  exact (by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).mul
    ((hc.continuous_iteratedDeriv 3 (by norm_num)).sub (h1.div_const 4))

private theorem halfTest_contDiff {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 1 (actualHalfConvolutionReturnTest A) := by
  have hc := actual_correlation_contDiff_four A hA
  have hB : Continuous (actualHalfConvolutionReturnTest A) := by
    unfold actualHalfConvolutionReturnTest
    exact (by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).mul
      ((hc.continuous_iteratedDeriv 2 (by norm_num)).sub (hc.continuous.div_const 4))
  apply contDiff_one_iff_deriv.mpr
  refine ⟨fun t => (actualHalfConvolutionReturnTest_hasDerivAt hA t).differentiableAt, ?_⟩
  rw [show deriv (actualHalfConvolutionReturnTest A) = fun t =>
      (1 / 2 : ℝ) * actualHalfConvolutionReturnTest A t + actualDampedXiReturnDensity A t from
    funext (fun t => (actualHalfConvolutionReturnTest_hasDerivAt hA t).deriv)]
  exact (hB.const_mul _).add (returnDensity_continuous hA)

private theorem oneTest_contDiff {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 1 (actualOneConvolutionReturnTest A) := by
  have hc := actual_correlation_contDiff_four A hA
  have h1 : Continuous (deriv (sourceCorrelation explicitSecondDerivative A)) := by
    simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using
      hc.continuous_iteratedDeriv 1 (by norm_num)
  have hB : Continuous (actualOneConvolutionReturnTest A) := by
    unfold actualOneConvolutionReturnTest
    exact (by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).mul
      ((hc.continuous_iteratedDeriv 2 (by norm_num)).add (h1.div_const 2))
  apply contDiff_one_iff_deriv.mpr
  refine ⟨fun t => (actualOneConvolutionReturnTest_hasDerivAt hA t).differentiableAt, ?_⟩
  rw [show deriv (actualOneConvolutionReturnTest A) = fun t =>
      actualOneConvolutionReturnTest A t + actualDampedXiReturnDensity A t from
    funext (fun t => (actualOneConvolutionReturnTest_hasDerivAt hA t).deriv)]
  exact hB.add (returnDensity_continuous hA)

private theorem halfTest_upper_zero {A : ℝ} (hA : 91 ≤ A) :
    actualHalfConvolutionReturnTest A (2 * A) = 0 := by
  have h2 := actual_correlation_second_edge_abs_le (z := 2 * A) hA
  have h0 := actual_correlation_edge_abs_le (z := 2 * A) hA
  norm_num only [sub_self, zero_pow, mul_zero, zero_div] at h2 h0
  simp [actualHalfConvolutionReturnTest, abs_nonpos_iff.mp h2, abs_nonpos_iff.mp h0]

private theorem oneTest_upper_zero {A : ℝ} (hA : 91 ≤ A) :
    actualOneConvolutionReturnTest A (2 * A) = 0 := by
  have h2 := actual_correlation_second_edge_abs_le (z := 2 * A) hA
  have h1 := actual_correlation_first_edge_abs_le (z := 2 * A) hA le_rfl
  norm_num only [sub_self, zero_pow, mul_zero, zero_div] at h2 h1
  simp only [iteratedDeriv_succ, iteratedDeriv_zero] at h1
  simp [actualOneConvolutionReturnTest, abs_nonpos_iff.mp h2, abs_nonpos_iff.mp h1]

private theorem convolution_abel {A lam : ℝ} (hA : 91 ≤ A) (B : ℝ → ℝ)
    (hB : ContDiff ℝ 1 B)
    (hd : ∀ t, HasDerivAt B (lam * B t + actualDampedXiReturnDensity A t) t)
    (hzero : B (2 * A) = 0) :
    (∫ t in Real.log 7..2 * A,
      actualMangoldtErrorConvolution lam t * actualDampedXiReturnDensity A t) =
        -actualMangoldtErrorConvolution lam (Real.log 7) * B (Real.log 7) -
          ∫ t in Real.log 7..2 * A, actualCenteredMangoldtLogError t * B t := by
  have hb : 0 ≤ 2 * A := by linarith
  have ha : 0 ≤ Real.log 7 := Real.log_nonneg (by norm_num)
  have hab : Real.log 7 ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)]
  have hsub : uIcc (Real.log 7) (2 * A) ⊆ uIcc 0 (2 * A) := by
    rw [uIcc_of_le hab, uIcc_of_le hb]
    exact Icc_subset_Icc ha le_rfl
  have hQ := (actualMangoldtErrorConvolution_absolutelyContinuous lam hb).mono hsub
  have hiF : IntervalIntegrable actualCenteredMangoldtLogError volume (Real.log 7) (2 * A) :=
    (centered_error_intervalIntegrable hb).mono_set hsub
  have hi1 := hiF.mul_continuousOn hB.continuous.continuousOn
  have hi2 : IntervalIntegrable (fun t => actualMangoldtErrorConvolution lam t *
      actualDampedXiReturnDensity A t) volume (Real.log 7) (2 * A) :=
    hQ.continuousOn.intervalIntegrable.mul_continuousOn
      (returnDensity_continuous (by linarith : 0 < A)).continuousOn
  have he : (∫ t in Real.log 7..2 * A,
      deriv (actualMangoldtErrorConvolution lam) t * B t +
        actualMangoldtErrorConvolution lam t * deriv B t) =
      (∫ t in Real.log 7..2 * A, actualCenteredMangoldtLogError t * B t) +
        ∫ t in Real.log 7..2 * A,
          actualMangoldtErrorConvolution lam t * actualDampedXiReturnDensity A t := by
    rw [← intervalIntegral.integral_add hi1 hi2]
    apply intervalIntegral.integral_congr_ae
    filter_upwards [actualMangoldtErrorConvolution_ae_hasDerivAt lam hb] with t ht hm
    rw [(ht (hsub (uIoc_subset_uIcc hm))).deriv, (hd t).deriv]
    ring
  have hh := hQ.integral_deriv_mul_eq_sub hB.contDiffOn.absolutelyContinuousOnInterval
  rw [he, hzero, mul_zero, zero_sub] at hh
  linarith

/-- The actual half convolution returns with its entire nonzero lower trace. -/
theorem actualHalfConvolution_return {A : ℝ} (hA : 91 ≤ A) :
    (∫ t in Real.log 7..2 * A,
      actualMangoldtErrorConvolution (1 / 2) t * actualDampedXiReturnDensity A t) =
        -actualMangoldtErrorConvolution (1 / 2) (Real.log 7) *
            actualHalfConvolutionReturnTest A (Real.log 7) -
          ∫ t in Real.log 7..2 * A,
            actualCenteredMangoldtLogError t * actualHalfConvolutionReturnTest A t :=
  convolution_abel hA _ (halfTest_contDiff (by linarith))
    (actualHalfConvolutionReturnTest_hasDerivAt (by linarith)) (halfTest_upper_zero hA)

/-- The actual one convolution returns with its entire nonzero lower trace. -/
theorem actualOneConvolution_return {A : ℝ} (hA : 91 ≤ A) :
    (∫ t in Real.log 7..2 * A,
      actualMangoldtErrorConvolution 1 t * actualDampedXiReturnDensity A t) =
        -actualMangoldtErrorConvolution 1 (Real.log 7) *
            actualOneConvolutionReturnTest A (Real.log 7) -
          ∫ t in Real.log 7..2 * A,
            actualCenteredMangoldtLogError t * actualOneConvolutionReturnTest A t := by
  simpa only [one_mul] using convolution_abel (lam := 1) hA _
    (oneTest_contDiff (by linarith))
    (fun t => by simpa only [one_mul] using
      actualOneConvolutionReturnTest_hasDerivAt (by linarith) t) (oneTest_upper_zero hA)


/-- The returned original convolution density is genuinely finite L1. -/
theorem actualErrorConvolutionReturn_intervalIntegrable (lam : ℝ) {A : ℝ} (hA : 91 ≤ A) :
    IntervalIntegrable (fun t => actualMangoldtErrorConvolution lam t *
      actualDampedXiReturnDensity A t) volume (Real.log 7) (2 * A) := by
  have hb : 0 ≤ 2 * A := by linarith
  have ha : 0 ≤ Real.log 7 := Real.log_nonneg (by norm_num)
  have hab : Real.log 7 ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)]
  have hsub : uIcc (Real.log 7) (2 * A) ⊆ uIcc 0 (2 * A) := by
    rw [uIcc_of_le hab, uIcc_of_le hb]
    exact Icc_subset_Icc ha le_rfl
  have hQ := (actualMangoldtErrorConvolution_absolutelyContinuous lam hb).mono hsub
  exact hQ.continuousOn.intervalIntegrable.mul_continuousOn
    (returnDensity_continuous (by linarith : 0 < A)).continuousOn

/-- The complete actual source convolution head below seven is independently literal. -/
def actualErrorConvolutionLowerHead (A : ℝ) : ℝ :=
  ∫ r in 0..Real.log 7, actualCenteredMangoldtLogError r *
    (Real.exp (r / 2) *
        (-iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (Real.log 7) +
          sourceCorrelation explicitSecondDerivative A (Real.log 7) / 4) +
      Real.exp (r - Real.log 7 / 2) *
        (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (Real.log 7) +
          deriv (sourceCorrelation explicitSecondDerivative A) (Real.log 7) / 2))

/-- Both actual lower traces equal the full zero-to-seven head; neither is deleted. -/
theorem actualErrorConvolutionLowerHead_eq_closed_traces (A : ℝ) :
    actualErrorConvolutionLowerHead A =
      -actualMangoldtErrorConvolution (1 / 2) (Real.log 7) *
          actualHalfConvolutionReturnTest A (Real.log 7) +
        actualMangoldtErrorConvolution 1 (Real.log 7) *
          actualOneConvolutionReturnTest A (Real.log 7) := by
  have ha : 0 ≤ Real.log 7 := Real.log_nonneg (by norm_num)
  have hi := actualMangoldtErrorConvolution_intervalIntegrable (1 / 2) ha
  have ho := actualMangoldtErrorConvolution_intervalIntegrable 1 ha
  unfold actualErrorConvolutionLowerHead
  calc
    _ = ∫ r in 0..Real.log 7,
        (actualCenteredMangoldtLogError r * Real.exp ((1 / 2 : ℝ) * (r - Real.log 7))) *
            (-actualHalfConvolutionReturnTest A (Real.log 7)) +
          (actualCenteredMangoldtLogError r * Real.exp (1 * (r - Real.log 7))) *
            actualOneConvolutionReturnTest A (Real.log 7) := by
      apply intervalIntegral.integral_congr
      intro r _
      dsimp only
      have he1 : Real.exp ((1 / 2 : ℝ) * (r - Real.log 7)) * Real.exp (Real.log 7 / 2) =
          Real.exp (r / 2) := by
        rw [← Real.exp_add]
        congr 1
        ring
      have he2 : Real.exp (1 * (r - Real.log 7)) * Real.exp (Real.log 7 / 2) =
          Real.exp (r - Real.log 7 / 2) := by
        rw [← Real.exp_add]
        congr 1
        ring
      unfold actualHalfConvolutionReturnTest actualOneConvolutionReturnTest
      symm
      calc
        _ = actualCenteredMangoldtLogError r *
            ((Real.exp ((1 / 2 : ℝ) * (r - Real.log 7)) * Real.exp (Real.log 7 / 2)) *
                (-iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (Real.log 7) +
                  sourceCorrelation explicitSecondDerivative A (Real.log 7) / 4) +
              (Real.exp (1 * (r - Real.log 7)) * Real.exp (Real.log 7 / 2)) *
                (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (Real.log 7) +
                  deriv (sourceCorrelation explicitSecondDerivative A) (Real.log 7) / 2)) := by ring
        _ = _ := by rw [he1, he2]
    _ = _ := by
      rw [intervalIntegral.integral_add (hi.mul_const _) (ho.mul_const _),
        intervalIntegral.integral_mul_const, intervalIntegral.integral_mul_const]
      unfold actualMangoldtErrorConvolution
      ring

/-- Exact signed cancellation of the second jets restores the critical zeroth/first test. -/
theorem actualErrorConvolution_difference_return {A : ℝ} (hA : 91 ≤ A) :
    (∫ t in Real.log 7..2 * A,
      (actualMangoldtErrorConvolution (1 / 2) t - actualMangoldtErrorConvolution 1 t) *
        actualDampedXiReturnDensity A t) =
      (∫ t in Real.log 7..2 * A, actualCenteredMangoldtLogError t * Real.exp (t / 2) *
        (sourceCorrelation explicitSecondDerivative A t / 4 +
          deriv (sourceCorrelation explicitSecondDerivative A) t / 2)) +
            actualErrorConvolutionLowerHead A := by
  have hb : 0 ≤ 2 * A := by linarith
  have ha : 0 ≤ Real.log 7 := Real.log_nonneg (by norm_num)
  have hab : Real.log 7 ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)]
  have hsub : uIcc (Real.log 7) (2 * A) ⊆ uIcc 0 (2 * A) := by
    rw [uIcc_of_le hab, uIcc_of_le hb]
    exact Icc_subset_Icc ha le_rfl
  have hiF := (centered_error_intervalIntegrable hb).mono_set hsub
  have hiHalf := hiF.mul_continuousOn (halfTest_contDiff (A := A) (by linarith)).continuous.continuousOn
  have hiOne := hiF.mul_continuousOn (oneTest_contDiff (A := A) (by linarith)).continuous.continuousOn
  have hdiff :
      (∫ t in Real.log 7..2 * A, actualCenteredMangoldtLogError t *
        actualOneConvolutionReturnTest A t) -
      (∫ t in Real.log 7..2 * A, actualCenteredMangoldtLogError t *
        actualHalfConvolutionReturnTest A t) =
      ∫ t in Real.log 7..2 * A, actualCenteredMangoldtLogError t * Real.exp (t / 2) *
        (sourceCorrelation explicitSecondDerivative A t / 4 +
          deriv (sourceCorrelation explicitSecondDerivative A) t / 2) := by
    rw [← intervalIntegral.integral_sub hiOne hiHalf]
    apply intervalIntegral.integral_congr
    intro t _
    unfold actualOneConvolutionReturnTest actualHalfConvolutionReturnTest
    dsimp only
    ring
  have hreturn :
      (∫ t in Real.log 7..2 * A,
        (actualMangoldtErrorConvolution (1 / 2) t - actualMangoldtErrorConvolution 1 t) *
          actualDampedXiReturnDensity A t) =
      (∫ t in Real.log 7..2 * A,
        actualMangoldtErrorConvolution (1 / 2) t * actualDampedXiReturnDensity A t) -
      (∫ t in Real.log 7..2 * A,
        actualMangoldtErrorConvolution 1 t * actualDampedXiReturnDensity A t) := by
    rw [← intervalIntegral.integral_sub
      (actualErrorConvolutionReturn_intervalIntegrable (1 / 2) hA)
      (actualErrorConvolutionReturn_intervalIntegrable 1 hA)]
    apply intervalIntegral.integral_congr
    intro t _
    dsimp only
    ring
  rw [hreturn, actualHalfConvolution_return hA, actualOneConvolution_return hA,
    actualErrorConvolutionLowerHead_eq_closed_traces]
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualXiErrorCriticalCovariance
