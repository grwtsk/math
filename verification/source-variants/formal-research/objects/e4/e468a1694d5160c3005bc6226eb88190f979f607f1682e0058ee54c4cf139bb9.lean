import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingL2Core
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeAdmissibility

open MeasureTheory Set Filter
open scoped Topology

namespace ZeroSmoothingMomentsProbe

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ZeroSmoothing ZeroSideTargets ZeroTestRegularity

noncomputable section

/-- A single bound controls the original unnormalized source test and every positive smoothing. -/
theorem exists_common_bound (A : ℝ) (hA : 1 ≤ A) :
    ∃ M : ℝ, 0 ≤ M ∧ (∀ x, ‖actualTest A x‖ ≤ M) ∧
      ∀ ε : ℝ, ∀ hε : 0 < ε, ∀ x, ‖smoothedTest A ε hε x‖ ≤ M := by
  have hf := (actualTest_contDiff A hA).continuous
  obtain ⟨C, hC⟩ := (actualTest_hasCompactSupport A hA).exists_bound_of_continuous hf
  let M := max C 0
  have hbound : ∀ x, ‖actualTest A x‖ ≤ M :=
    fun x ↦ (hC x).trans (le_max_left C 0)
  refine ⟨M, le_max_right C 0, hbound, ?_⟩
  intro ε hε x
  exact ZeroSmoothingL2Core.mollify_norm_le hf hbound ε hε x

theorem smoothedTest_zero_outside_common (A ε : ℝ) (hA : 1 ≤ A)
    (hε : 0 < ε) (hε1 : ε ≤ 1) (x : ℝ) (hx : x ∉ Icc (-A - 1) (A + 1)) :
    smoothedTest A ε hε x = 0 := by
  by_contra hne
  have hs := smoothedTest_support_subset A ε hA hε hne
  exact hx ⟨by linarith [hs.1], by linarith [hs.2]⟩

/-- Continuous weights give genuine integrals for the source test. -/
theorem actual_weighted_integrable (A : ℝ) (hA : 1 ≤ A)
    {w : ℝ → ℝ} (hw : Continuous w) :
    Integrable (fun x ↦ w x * actualTest A x) volume :=
  (hw.mul (actualTest_contDiff A hA).continuous).integrable_of_hasCompactSupport
    (actualTest_hasCompactSupport A hA).mul_left

/-- Continuous weights give genuine integrals for every positive-radius source smoothing. -/
theorem smoothed_weighted_integrable (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε)
    {w : ℝ → ℝ} (hw : Continuous w) :
    Integrable (fun x ↦ w x * smoothedTest A ε hε x) volume :=
  (hw.mul (smoothedTest_contDiff A ε hA hε).continuous).integrable_of_hasCompactSupport
    (smoothedTest_hasCompactSupport A ε hA hε).mul_left

/-- Fixed continuous weights pass through the actual smoothing limit, using the source common
support and a bound independent of the positive smoothing radius. -/
theorem weighted_integral_tendsto {ι : Type*} {l : Filter ι} [l.IsCountablyGenerated]
    (A : ℝ) (hA : 1 ≤ A) {w : ℝ → ℝ} (hw : Continuous w)
    (ε : ι → ℝ) (hε : ∀ i, 0 < ε i) (hlim : Tendsto ε l (𝓝 0)) :
    Tendsto (fun i ↦ ∫ x, w x * smoothedTest A (ε i) (hε i) x) l
      (𝓝 (∫ x, w x * actualTest A x)) := by
  obtain ⟨M, hM, _, hsm⟩ := exists_common_bound A hA
  obtain ⟨C, hC⟩ := isCompact_Icc.exists_bound_of_continuousOn
    (hw.continuousOn : ContinuousOn w (Icc (-A - 1) (A + 1)))
  let W := max C 0
  let bound : ℝ → ℝ := (Icc (-A - 1) (A + 1)).indicator (fun _ ↦ W * M)
  have hb : Integrable bound volume :=
    (continuous_const.integrableOn_Icc).integrable_indicator measurableSet_Icc
  have hsmall : ∀ᶠ i in l, ε i ≤ 1 :=
    ((tendsto_order.1 hlim).2 1 (by norm_num)).mono fun _ h ↦ h.le
  have hmeas : ∀ᶠ i in l,
      AEStronglyMeasurable (fun x ↦ w x * smoothedTest A (ε i) (hε i) x) volume :=
    Eventually.of_forall fun i ↦ (smoothed_weighted_integrable A (ε i) hA (hε i) hw).1
  have hdom : ∀ᶠ i in l, ∀ᵐ x ∂volume,
      ‖w x * smoothedTest A (ε i) (hε i) x‖ ≤ bound x := by
    filter_upwards [hsmall] with i hi
    exact Eventually.of_forall fun x ↦ by
      by_cases hx : x ∈ Icc (-A - 1) (A + 1)
      · simp only [bound, indicator_of_mem hx, norm_mul]
        exact mul_le_mul ((hC x hx).trans (le_max_left C 0))
          (hsm (ε i) (hε i) x) (norm_nonneg _) (le_max_right C 0)
      · rw [smoothedTest_zero_outside_common A (ε i) hA (hε i) hi x hx,
          mul_zero, norm_zero]
        simp only [bound, indicator_of_notMem hx, le_refl]
  have hpoint : ∀ᵐ x ∂volume,
      Tendsto (fun i ↦ w x * smoothedTest A (ε i) (hε i) x) l
        (𝓝 (w x * actualTest A x)) :=
    Eventually.of_forall fun x ↦
      tendsto_const_nhds.mul (smoothedTest_tendsto A hA ε hε hlim x)
  exact tendsto_integral_filter_of_dominated_convergence bound hmeas hdom hb hpoint

/-- Both signs of the source pole moments, with genuine integrability before the limit. -/
theorem exponential_moment_tendsto {ι : Type*} {l : Filter ι} [l.IsCountablyGenerated]
    (A σ : ℝ) (hA : 1 ≤ A) (ε : ι → ℝ) (hε : ∀ i, 0 < ε i)
    (hlim : Tendsto ε l (𝓝 0)) :
    Integrable (fun x ↦ Real.exp (σ * x) * actualTest A x) volume ∧
    (∀ i, Integrable (fun x ↦ Real.exp (σ * x) * smoothedTest A (ε i) (hε i) x) volume) ∧
    Tendsto (fun i ↦ ∫ x, Real.exp (σ * x) * smoothedTest A (ε i) (hε i) x) l
      (𝓝 (∫ x, Real.exp (σ * x) * actualTest A x)) := by
  have hw : Continuous (fun x : ℝ ↦ Real.exp (σ * x)) :=
    (continuous_const.mul continuous_id).rexp
  exact ⟨actual_weighted_integrable A hA hw,
    fun i ↦ smoothed_weighted_integrable A (ε i) hA (hε i) hw,
    weighted_integral_tendsto A hA hw ε hε hlim⟩

/-- Every translate of the original test gives a genuinely integrable real correlation. -/
theorem actual_correlation_integrable (A t : ℝ) (hA : 1 ≤ A) :
    Integrable (fun x ↦ actualTest A x * actualTest A (x - t)) volume := by
  have hf := (actualTest_contDiff A hA).continuous
  exact (hf.mul (hf.comp (continuous_id.sub continuous_const))).integrable_of_hasCompactSupport
    (actualTest_hasCompactSupport A hA).mul_right

/-- Every translated smoothed correlation is genuine at every positive scale. -/
theorem smoothed_correlation_integrable (A ε t : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) :
    Integrable (fun x ↦ smoothedTest A ε hε x * smoothedTest A ε hε (x - t)) volume := by
  have hf := (smoothedTest_contDiff A ε hA hε).continuous
  exact (hf.mul (hf.comp (continuous_id.sub continuous_const))).integrable_of_hasCompactSupport
    (smoothedTest_hasCompactSupport A ε hA hε).mul_right

/-- Correlation convergence keeps the original x-t orientation, for every real displacement.
The first factor alone confines the dominating function to the common source interval. -/
theorem correlation_tendsto {ι : Type*} {l : Filter ι} [l.IsCountablyGenerated]
    (A t : ℝ) (hA : 1 ≤ A) (ε : ι → ℝ) (hε : ∀ i, 0 < ε i)
    (hlim : Tendsto ε l (𝓝 0)) :
    Tendsto (fun i ↦ ∫ x, smoothedTest A (ε i) (hε i) x *
      smoothedTest A (ε i) (hε i) (x - t)) l
      (𝓝 (∫ x, actualTest A x * actualTest A (x - t))) := by
  obtain ⟨M, hM, _, hsm⟩ := exists_common_bound A hA
  let bound : ℝ → ℝ := (Icc (-A - 1) (A + 1)).indicator (fun _ ↦ M * M)
  have hb : Integrable bound volume :=
    (continuous_const.integrableOn_Icc).integrable_indicator measurableSet_Icc
  have hsmall : ∀ᶠ i in l, ε i ≤ 1 :=
    ((tendsto_order.1 hlim).2 1 (by norm_num)).mono fun _ h ↦ h.le
  have hmeas : ∀ᶠ i in l, AEStronglyMeasurable (fun x ↦
      smoothedTest A (ε i) (hε i) x * smoothedTest A (ε i) (hε i) (x - t)) volume :=
    Eventually.of_forall fun i ↦ (smoothed_correlation_integrable A (ε i) t hA (hε i)).1
  have hdom : ∀ᶠ i in l, ∀ᵐ x ∂volume,
      ‖smoothedTest A (ε i) (hε i) x * smoothedTest A (ε i) (hε i) (x - t)‖ ≤ bound x := by
    filter_upwards [hsmall] with i hi
    exact Eventually.of_forall fun x ↦ by
      by_cases hx : x ∈ Icc (-A - 1) (A + 1)
      · simp only [bound, indicator_of_mem hx, norm_mul]
        exact mul_le_mul (hsm (ε i) (hε i) x) (hsm (ε i) (hε i) (x - t))
          (norm_nonneg _) hM
      · rw [smoothedTest_zero_outside_common A (ε i) hA (hε i) hi x hx,
          zero_mul, norm_zero]
        simp only [bound, indicator_of_notMem hx, le_refl]
  have hpoint : ∀ᵐ x ∂volume,
      Tendsto (fun i ↦ smoothedTest A (ε i) (hε i) x *
        smoothedTest A (ε i) (hε i) (x - t)) l
        (𝓝 (actualTest A x * actualTest A (x - t))) :=
    Eventually.of_forall fun x ↦
      (smoothedTest_tendsto A hA ε hε hlim x).mul
        (smoothedTest_tendsto A hA ε hε hlim (x - t))
  exact tendsto_integral_filter_of_dominated_convergence bound hmeas hdom hb hpoint

/-- The source pole term keeps both signed exponential moments and its exact factor two. -/
theorem poleContribution_tendsto {ι : Type*} {l : Filter ι} [l.IsCountablyGenerated]
    (A : ℝ) (hA : 1 ≤ A) (ε : ι → ℝ) (hε : ∀ i, 0 < ε i)
    (hlim : Tendsto ε l (𝓝 0)) :
    Tendsto (fun i ↦ BridgeAdmissibility.realPoleContribution
      (smoothedTest A (ε i) (hε i))) l
      (𝓝 (BridgeAdmissibility.realPoleContribution (actualTest A))) := by
  have hp := weighted_integral_tendsto A hA
    (continuous_id.div_const 2).rexp ε hε hlim
  have hn := weighted_integral_tendsto A hA
    (continuous_id.neg.div_const 2).rexp ε hε hlim
  exact (tendsto_const_nhds.mul hp).mul hn

/-- Every fixed finite strict cutoff, in particular R=A+1, passes through correlation convergence.
The coefficients, square roots, floor, strict inequality, and all atoms are unchanged. -/
theorem primeContribution_tendsto {ι : Type*} {l : Filter ι} [l.IsCountablyGenerated]
    (A R : ℝ) (hA : 1 ≤ A) (ε : ι → ℝ) (hε : ∀ i, 0 < ε i)
    (hlim : Tendsto ε l (𝓝 0)) :
    Tendsto (fun i ↦ 2 * ∑ n ∈ (Finset.Icc 2 ⌊Real.exp (2 * R)⌋₊).filter
      (fun n : ℕ ↦ (n : ℝ) < Real.exp (2 * R)),
      ArithmeticFunction.vonMangoldt n / Real.sqrt n *
        (∫ x, smoothedTest A (ε i) (hε i) x * smoothedTest A (ε i) (hε i) (x - Real.log n))) l
      (𝓝 (2 * ∑ n ∈ (Finset.Icc 2 ⌊Real.exp (2 * R)⌋₊).filter
        (fun n : ℕ ↦ (n : ℝ) < Real.exp (2 * R)),
        ArithmeticFunction.vonMangoldt n / Real.sqrt n *
          (∫ x, actualTest A x * actualTest A (x - Real.log n)))) := by
  apply tendsto_const_nhds.mul
  apply tendsto_finsetSum
  intro n _
  exact tendsto_const_nhds.mul (correlation_tendsto A (Real.log n) hA ε hε hlim)

end
end ZeroSmoothingMomentsProbe

#check ZeroSmoothingMomentsProbe.exists_common_bound
#check ZeroSmoothingMomentsProbe.smoothedTest_zero_outside_common
#check ZeroSmoothingMomentsProbe.actual_weighted_integrable
#check ZeroSmoothingMomentsProbe.smoothed_weighted_integrable
#check ZeroSmoothingMomentsProbe.weighted_integral_tendsto
#check ZeroSmoothingMomentsProbe.exponential_moment_tendsto
#check ZeroSmoothingMomentsProbe.actual_correlation_integrable
#check ZeroSmoothingMomentsProbe.smoothed_correlation_integrable
#check ZeroSmoothingMomentsProbe.correlation_tendsto
#check ZeroSmoothingMomentsProbe.poleContribution_tendsto
#check ZeroSmoothingMomentsProbe.primeContribution_tendsto

#print axioms ZeroSmoothingMomentsProbe.exists_common_bound
#print axioms ZeroSmoothingMomentsProbe.smoothedTest_zero_outside_common
#print axioms ZeroSmoothingMomentsProbe.actual_weighted_integrable
#print axioms ZeroSmoothingMomentsProbe.smoothed_weighted_integrable
#print axioms ZeroSmoothingMomentsProbe.weighted_integral_tendsto
#print axioms ZeroSmoothingMomentsProbe.exponential_moment_tendsto
#print axioms ZeroSmoothingMomentsProbe.actual_correlation_integrable
#print axioms ZeroSmoothingMomentsProbe.smoothed_correlation_integrable
#print axioms ZeroSmoothingMomentsProbe.correlation_tendsto
#print axioms ZeroSmoothingMomentsProbe.poleContribution_tendsto
#print axioms ZeroSmoothingMomentsProbe.primeContribution_tendsto
