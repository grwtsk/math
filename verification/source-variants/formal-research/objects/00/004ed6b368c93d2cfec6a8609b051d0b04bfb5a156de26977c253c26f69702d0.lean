import SourceActualHalfNearMeanInterior

/-!
The retained actual period mean has a genuine long Mangoldt time readout.
Its positive first-jet source test is distinct from the lower Q trace test.
Both continuous and lower-error heads remain; no independent-main equality
or uniform signed near-interior estimate is assumed.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualPeriodMeanMangoldtReadout
open MeasureTheory Set ArithmeticFunction
open scoped Interval
open RootActualRetainedMeanTrace RootActualUpperTimeJets SourceActualAdjointAbelPrimitives
open SourceActualCovariantKernel SourcePairing SourceMangoldtAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateSourceMobiusKernel
noncomputable section

/-- The literal correlation test retains the true column weight. -/
def actualPeriodMeanCorrelationTest (A s t : ℝ) : ℝ :=
  Real.exp (t / 2) * Real.exp (-s / 2) *
    sourceCorrelation explicitSecondDerivative A (t + s)

/-- The genuine derivative has the positive half-correlation term. -/
def actualPeriodMeanTimeTest (A s t : ℝ) : ℝ :=
  Real.exp (t / 2) * Real.exp (-s / 2) *
    (iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) (t + s) +
      sourceCorrelation explicitSecondDerivative A (t + s) / 2)

private theorem jet_hasDerivAt {A : ℝ} (hA : 0 < A) (n : ℕ)
    (hn : n < 4) (z : ℝ) :
    HasDerivAt (iteratedDeriv n (sourceCorrelation explicitSecondDerivative A))
      (iteratedDeriv (n + 1) (sourceCorrelation explicitSecondDerivative A) z) z := by
  simpa only [iteratedDeriv_succ] using
    (((actual_correlation_contDiff_four A hA).differentiable_iteratedDeriv n
      (by exact_mod_cast hn)) z).hasDerivAt

private theorem jet_contDiff_one {A : ℝ} (hA : 0 < A) (n : ℕ) (hn : n ≤ 3) :
    ContDiff ℝ 1 (iteratedDeriv n (sourceCorrelation explicitSecondDerivative A)) := by
  rw [iteratedDeriv_eq_iterate]
  exact ContDiff.iterate_deriv' 1 n ((actual_correlation_contDiff_four A hA).of_le
    (by exact_mod_cast (by omega : 1 + n ≤ 4)))

/-- Ordinary source differentiation gives the actual positive-jet time test. -/
theorem actualPeriodMeanCorrelationTest_hasDerivAt {A : ℝ} (hA : 0 < A) (s t : ℝ) :
    HasDerivAt (actualPeriodMeanCorrelationTest A s)
      (actualPeriodMeanTimeTest A s t) t := by
  have h0 := (jet_hasDerivAt hA 0 (by norm_num) (t + s)).comp t
    ((hasDerivAt_id t).add_const s)
  have he := (((hasDerivAt_id t).div_const 2).exp).mul_const (Real.exp (-s / 2))
  convert he.mul h0 using 1 <;> try rfl
  simp only [actualPeriodMeanCorrelationTest, actualPeriodMeanTimeTest,
    Function.comp_apply, iteratedDeriv_zero, id_eq, mul_one]
  ring

/-- The stable time adjoint of this genuine test is the retained column-mean primitive. -/
theorem actualPeriodMeanTimeTest_covariant_deriv {A : ℝ} (hA : 0 < A) (s t : ℝ) :
    deriv (actualPeriodMeanTimeTest A s) t - actualPeriodMeanTimeTest A s t / 2 =
      actualRetainedMeanSourcePrimitive A t s := by
  have h0 := (jet_hasDerivAt hA 0 (by norm_num) (t + s)).comp t
    ((hasDerivAt_id t).add_const s)
  have h1 := (jet_hasDerivAt hA 1 (by norm_num) (t + s)).comp t
    ((hasDerivAt_id t).add_const s)
  have he := (((hasDerivAt_id t).div_const 2).exp).mul_const (Real.exp (-s / 2))
  have hd := he.mul (h1.add (h0.div_const 2))
  have hde : HasDerivAt (actualPeriodMeanTimeTest A s)
      (Real.exp (t / 2) * Real.exp (-s / 2) *
        (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (t + s) +
          iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) (t + s) +
            sourceCorrelation explicitSecondDerivative A (t + s) / 4)) t := by
    convert hd using 1 <;> try rfl
    simp only [actualPeriodMeanTimeTest, Function.comp_apply, iteratedDeriv_zero, id_eq,
      Pi.add_apply, mul_one]
    ring
  rw [hde.deriv]
  unfold actualPeriodMeanTimeTest actualRetainedMeanSourcePrimitive
  ring

private theorem correlation_test_contDiff {A : ℝ} (hA : 0 < A) (s : ℝ) :
    ContDiff ℝ 1 (actualPeriodMeanCorrelationTest A s) := by
  have h0 := jet_contDiff_one hA 0 (by norm_num)
  simp only [iteratedDeriv_zero] at h0
  unfold actualPeriodMeanCorrelationTest
  fun_prop

private theorem time_test_contDiff {A : ℝ} (hA : 0 < A) (s : ℝ) :
    ContDiff ℝ 1 (actualPeriodMeanTimeTest A s) := by
  have h0 := jet_contDiff_one hA 0 (by norm_num)
  have h1 := jet_contDiff_one hA 1 (by norm_num)
  simp only [iteratedDeriv_zero] at h0
  unfold actualPeriodMeanTimeTest
  fun_prop

/-- Both actual upper-time traces vanish at the proved source seam for every true column. -/
theorem actualPeriodMeanTests_at_upper {A s : ℝ} (hA : 1 ≤ A)
    (hs : Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ s) :
    actualPeriodMeanCorrelationTest A s (Real.log (sourceKernelCutoff A : ℝ)) = 0 ∧
      actualPeriodMeanTimeTest A s (Real.log (sourceKernelCutoff A : ℝ)) = 0 := by
  have h0 := actualUpperTimeJet_zero A hA ⟨0, by norm_num⟩ s hs
  have h1 := actualUpperTimeJet_zero A hA ⟨1, by norm_num⟩ s hs
  simp only [iteratedDeriv_zero] at h0
  simp only [actualPeriodMeanCorrelationTest, actualPeriodMeanTimeTest, h0, h1,
    zero_div, add_zero, mul_zero, and_self]

private theorem actual_orders {A : ℝ} (hA : 1 ≤ A) :
    0 ≤ actualTimeLower A ∧ actualTimeLower A ≤ Real.log (sourceKernelCutoff A : ℝ) := by
  have hU : 0 < (vaughanCutoff A : ℝ) := by exact_mod_cast vaughanCutoff_pos A hA
  have hUN : (vaughanCutoff A : ℝ) ≤ (sourceKernelCutoff A : ℝ) := by
    exact_mod_cast vaughanCutoff_le_sourceKernelCutoff A hA
  exact ⟨Real.log_nonneg (by exact_mod_cast vaughanCutoff_pos A hA),
    Real.log_le_log hU hUN⟩

private theorem actual_window_eq_half_row {A : ℝ} (hA : 1 ≤ A) (s : ℝ) :
    mangoldtLogWindow (actualTimeLower A) (Real.log (sourceKernelCutoff A : ℝ))
      (actualPeriodMeanCorrelationTest A s) =
      Real.exp (-s / 2) * ∑ n ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A),
        (vonMangoldt n : ℝ) / Real.sqrt (n : ℝ) *
          sourceCorrelation explicitSecondDerivative A (Real.log n + s) := by
  obtain ⟨hl, hb⟩ := actual_orders hA
  have hU : 0 < (vaughanCutoff A : ℝ) := by exact_mod_cast vaughanCutoff_pos A hA
  have hN : 0 < (sourceKernelCutoff A : ℝ) :=
    hU.trans_le (by exact_mod_cast vaughanCutoff_le_sourceKernelCutoff A hA)
  rw [mangoldtLogWindow_eq_interval_sum _ _ hl hb]
  simp only [actualTimeLower, Real.exp_log hU, Real.exp_log hN, Nat.floor_natCast]
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n hn
  have hn0 : 0 < (n : ℝ) := by
    have := (Finset.mem_Ioc.mp hn).1
    exact_mod_cast (show 0 < n by omega)
  have hs : Real.sqrt (n : ℝ) ≠ 0 := Real.sqrt_ne_zero'.mpr hn0
  simp only [actualPeriodMeanCorrelationTest, Real.exp_half, Real.exp_log hn0]
  field_simp
  rw [Real.sq_sqrt hn0.le]
  ring

/-- The genuine retained mean time factor keeps the full long row, baseline and lower error head. -/
theorem actualPeriodMeanTimeFactor_eq_closed_half_row {A s : ℝ} (hA : 1 ≤ A)
    (hs : Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ s) :
    (∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
      actualAdjointTimePrimitive A 0 t * actualRetainedMeanSourcePrimitive A t s) =
      Real.exp (-s / 2) * ∑ n ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A),
        (vonMangoldt n : ℝ) / Real.sqrt (n : ℝ) *
          sourceCorrelation explicitSecondDerivative A (Real.log n + s) -
      (∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
        actualPeriodMeanCorrelationTest A s t) +
      actualPeriodMeanCorrelationTest A s (actualTimeLower A) *
        mangoldtLogError (actualTimeLower A) := by
  obtain ⟨hl, hb⟩ := actual_orders hA
  have hp : 0 < A := by linarith
  have ht := actual_time_covariant_abel A 0 (Real.log (sourceKernelCutoff A : ℝ)) hb
    (actualPeriodMeanTimeTest A s) (time_test_contDiff hp s)
  have hu := actualPeriodMeanTests_at_upper hA hs
  simp only [sub_zero, hu.2, mul_zero, zero_sub, actualPeriodMeanTimeTest_covariant_deriv hp]
    at ht
  have hd : deriv (actualPeriodMeanCorrelationTest A s) = actualPeriodMeanTimeTest A s := by
    funext t
    exact (actualPeriodMeanCorrelationTest_hasDerivAt hp s t).deriv
  have ha := mangoldtLogWindow_sub_integral (actualTimeLower A)
    (Real.log (sourceKernelCutoff A : ℝ)) hl hb (actualPeriodMeanCorrelationTest A s)
      (correlation_test_contDiff hp s)
  rw [hu.1, zero_mul, zero_sub, hd, ht, actual_window_eq_half_row hA s] at ha
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualPeriodMeanMangoldtReadout
