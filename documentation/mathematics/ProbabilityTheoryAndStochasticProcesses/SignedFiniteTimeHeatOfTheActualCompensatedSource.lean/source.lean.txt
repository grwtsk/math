import FormalResearch.RiemannHypothesis.SourceCompensatedFourier
import FormalResearch.RiemannHypothesis.SourceKapitzaSignedReduction
import Mathlib.Analysis.Calculus.ParametricIntegral
import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap

/-!
# Signed finite-time heat of the actual compensated source

Research direction: grwtsk contributors. Paper derivation in the repository
study supplied by the user; native formal construction: OpenAI Codex,
7 October 2026. Odd heat observations preserve the signed readout. The
uniform remainder premise remains the independent arithmetic obligation.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceSignedHeat

open MeasureTheory Set Filter
open scoped Interval

/-- Odd Gaussian heat observation. -/
def signedHeat {α : Type*} [MeasurableSpace α] (μ : Measure α) (k : α → ℝ)
    (t : ℝ) : ℝ := ∫ x, k x * Real.exp (-t * k x ^ 2) ∂μ

/-- Odd cubic heat observation. -/
def cubicHeat {α : Type*} [MeasurableSpace α] (μ : Measure α) (k : α → ℝ)
    (t : ℝ) : ℝ := ∫ x, k x ^ 3 * Real.exp (-t * k x ^ 2) ∂μ

/-- Heat time is independent of the arithmetic scale. -/
def signedHeatRemainder {α : Type*} [MeasurableSpace α] (μ : Measure α) (k : α → ℝ)
    (τ : ℝ) : ℝ := ∫ t in 0..τ, cubicHeat μ k t

private theorem heatPower_bound (p : ℕ) (x t M T : ℝ) (hM : 0 ≤ M)
    (hx : |x| ≤ M) (ht : |t| ≤ T) :
    ‖x ^ p * Real.exp (-t * x ^ 2)‖ ≤ M ^ p * Real.exp (T * M ^ 2) := by
  have hT : 0 ≤ T := (abs_nonneg t).trans ht
  have hsq : x ^ 2 ≤ M ^ 2 := by
    simpa only [sq_abs] using (sq_le_sq₀ (abs_nonneg x) hM).mpr hx
  have he : -t * x ^ 2 ≤ T * M ^ 2 := by
    calc
      -t * x ^ 2 ≤ |t| * x ^ 2 := mul_le_mul_of_nonneg_right (neg_le_abs t) (sq_nonneg x)
      _ ≤ T * M ^ 2 := mul_le_mul ht hsq (sq_nonneg x) hT
  rw [norm_mul, Real.norm_eq_abs, abs_pow, Real.norm_of_nonneg (Real.exp_pos _).le]
  exact mul_le_mul (pow_le_pow_left₀ (abs_nonneg x) hx p) (Real.exp_le_exp.mpr he)
    (Real.exp_pos _).le (pow_nonneg hM p)

variable {α : Type*} [MeasurableSpace α] {μ : Measure α} [IsFiniteMeasure μ]
    {k : α → ℝ} {M : ℝ}

private theorem heatPower_integrable (hk : Measurable k) (hM : 0 ≤ M)
    (hb : ∀ x, |k x| ≤ M) (p : ℕ) (t : ℝ) :
    Integrable (fun x => k x ^ p * Real.exp (-t * k x ^ 2)) μ := by
  apply (integrable_const (M ^ p * Real.exp (|t| * M ^ 2))).mono'
  · fun_prop
  · exact ae_of_all _ (fun x => heatPower_bound p (k x) t M |t| hM (hb x) le_rfl)

/-- Fixed-scale boundedness suffices for every real heat time, including a neighborhood of zero. -/
theorem signedHeat_integrable (hk : Measurable k) (hM : 0 ≤ M)
    (hb : ∀ x, |k x| ≤ M) (t : ℝ) :
    Integrable (fun x => k x * Real.exp (-t * k x ^ 2)) μ := by
  simpa only [pow_one] using heatPower_integrable hk hM hb 1 t

theorem cubicHeat_integrable (hk : Measurable k) (hM : 0 ≤ M)
    (hb : ∀ x, |k x| ≤ M) (t : ℝ) :
    Integrable (fun x => k x ^ 3 * Real.exp (-t * k x ^ 2)) μ :=
  heatPower_integrable hk hM hb 3 t

private theorem abs_time_local (t u : ℝ) (hu : u ∈ Ioo (t - 1) (t + 1)) :
    |u| ≤ |t| + 1 := by
  apply abs_le.mpr
  constructor <;> linarith [hu.1, hu.2, le_abs_self t, neg_le_abs t]

/-- Differentiation is justified on a real-time neighborhood, so zero is covered too. -/
theorem signedHeat_hasDerivAt (hk : Measurable k) (hM : 0 ≤ M)
    (hb : ∀ x, |k x| ≤ M) (t : ℝ) :
    HasDerivAt (signedHeat μ k) (-cubicHeat μ k t) t := by
  let b : ℝ := M ^ 3 * Real.exp ((|t| + 1) * M ^ 2)
  have h := hasDerivAt_integral_of_dominated_loc_of_deriv_le
    (μ := μ) (F := fun u x => k x * Real.exp (-u * k x ^ 2))
    (F' := fun u x => -(k x ^ 3 * Real.exp (-u * k x ^ 2)))
    (bound := fun _ => b) (Ioo_mem_nhds (by linarith : t - 1 < t) (by linarith : t < t + 1))
    (Eventually.of_forall (fun _ => by fun_prop))
    (signedHeat_integrable hk hM hb t) (by fun_prop)
    (ae_of_all _ (fun x u hu => by
      simpa only [norm_neg] using heatPower_bound 3 (k x) u M (|t| + 1) hM
        (hb x) (abs_time_local t u hu)))
    (integrable_const b) (ae_of_all _ (fun x u _ => by
      have hd := (((hasDerivAt_id u).neg.mul_const (k x ^ 2)).exp).const_mul (k x)
      simp only [Pi.neg_apply, id_eq] at hd
      convert! hd using 1
      ring))
  simpa only [signedHeat, cubicHeat, integral_neg] using! h.2

/-- Cubic heat is continuous on every finite nonnegative heat interval. -/
theorem cubicHeat_continuousOn (hk : Measurable k) (hM : 0 ≤ M)
    (hb : ∀ x, |k x| ≤ M) {τ : ℝ} (_hτ : 0 ≤ τ) :
    ContinuousOn (cubicHeat μ k) (Icc 0 τ) := by
  apply continuousOn_of_dominated (bound := fun _ => M ^ 3 * Real.exp (τ * M ^ 2))
  · intro t _
    fun_prop
  · intro t ht
    exact ae_of_all _ (fun x => heatPower_bound 3 (k x) t M τ hM (hb x)
      (by rw [abs_of_nonneg ht.1]; exact ht.2))
  · exact integrable_const _
  · exact ae_of_all _ (fun _ => by fun_prop)

/-- Exact signed decomposition; no signed cancellation is asserted by this identity. -/
theorem signedHeat_decomposition (hk : Measurable k) (hM : 0 ≤ M)
    (hb : ∀ x, |k x| ≤ M) {τ : ℝ} (hτ : 0 ≤ τ) :
    (∫ x, k x ∂μ) = signedHeat μ k τ + signedHeatRemainder μ k τ := by
  have hcont : ContinuousOn (cubicHeat μ k) (uIcc 0 τ) := by
    rw [uIcc_of_le hτ]
    exact cubicHeat_continuousOn hk hM hb hτ
  have hint : IntervalIntegrable (cubicHeat μ k) volume 0 τ := hcont.intervalIntegrable
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _ => signedHeat_hasDerivAt hk hM hb t) hint.neg
  simp only [intervalIntegral.integral_neg, signedHeat] at he
  simp only [neg_zero, zero_mul, Real.exp_zero, mul_one] at he
  unfold signedHeatRemainder signedHeat
  linarith

/-- Exact universal terminal constant, independent of the size of the source inventory. -/
def terminalCap (τ : ℝ) : ℝ := 1 / Real.sqrt (2 * Real.exp 1 * τ)

private theorem gaussian_abs_bound (x : ℝ) {τ : ℝ} (hτ : 0 < τ) :
    |x * Real.exp (-τ * x ^ 2)| ≤ terminalCap τ := by
  have hd : 0 < 2 * Real.exp 1 * τ := by positivity
  have he := Real.mul_exp_neg_le_exp_neg_one (2 * τ * x ^ 2)
  have hsq : (x * Real.exp (-τ * x ^ 2)) ^ 2 ≤ 1 / (2 * Real.exp 1 * τ) := by
    have hexp : Real.exp (-τ * x ^ 2) ^ 2 = Real.exp (-(2 * τ * x ^ 2)) := by
      rw [sq, ← Real.exp_add]
      congr 1
      ring
    rw [mul_pow, hexp]
    apply (le_div_iff₀ hd).mpr
    have he' := mul_le_mul_of_nonneg_right he (Real.exp_pos 1).le
    rw [Real.exp_neg (1 : ℝ), inv_mul_cancel₀ (Real.exp_ne_zero 1)] at he'
    nlinarith
  have hroot : (terminalCap τ) ^ 2 = 1 / (2 * Real.exp 1 * τ) := by
    unfold terminalCap
    rw [div_pow, one_pow, Real.sq_sqrt hd.le]
  have hc : 0 ≤ terminalCap τ := by unfold terminalCap; positivity
  apply (sq_le_sq₀ (abs_nonneg _) hc).mp
  rw [sq_abs, hroot]
  exact hsq

/-- The normalized odd heat terminal bound retains the source sign. -/
theorem signedHeat_terminal_bound [IsProbabilityMeasure μ] {τ : ℝ} (hτ : 0 < τ) :
    |signedHeat μ k τ| ≤ terminalCap τ := by
  have h := norm_integral_le_of_norm_le_const (μ := μ)
    (f := fun x => k x * Real.exp (-τ * k x ^ 2)) (C := terminalCap τ)
    (ae_of_all _ (fun x => by
      simpa only [Real.norm_eq_abs] using gaussian_abs_bound (k x) hτ))
  simpa only [signedHeat, Real.norm_eq_abs, probReal_univ, mul_one] using h

omit [IsFiniteMeasure μ] in
/-- Negating the source negates the odd heat observation. -/
theorem signedHeat_neg (t : ℝ) : signedHeat μ (-k) t = -signedHeat μ k t := by
  simp only [signedHeat, Pi.neg_apply, neg_sq, neg_mul, integral_neg]

omit [IsFiniteMeasure μ] in
/-- Squaring the source erases its sign in the even diagnostic. -/
theorem evenHeat_neg_eq (t : ℝ) :
    (∫ x, Real.exp (-t * (-k x) ^ 2) ∂μ) =
      ∫ x, Real.exp (-t * k x ^ 2) ∂μ := by
  simp only [neg_sq]

open SourceCompensatedFourier SourceKapitzaCompensatedReadout
open SourceMangoldtInteraction SourceDualFourierJump
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open SourcePlancherel

/-- Probability weight from the squared transform of the actual normalized source. -/
def sourceProbabilityMeasure (A : ℝ) : Measure ℝ :=
  volume.withDensity (fun ξ => ENNReal.ofReal (Complex.normSq (standardSourceTransform A ξ)))

theorem sourceProbabilityMeasure_isProbability (A : ℝ) (hA : 1 ≤ A) :
    IsProbabilityMeasure (sourceProbabilityMeasure A) := by
  have hi : Integrable (fun ξ => Complex.normSq (standardSourceTransform A ξ)) :=
    standardFourier_square_integrable A hA
  have hm : (∫ ξ, Complex.normSq (standardSourceTransform A ξ)) = 1 :=
    actual_standard_fourier_mass A hA
  constructor
  rw [sourceProbabilityMeasure, withDensity_apply _ MeasurableSet.univ, Measure.restrict_univ,
    ← ofReal_integral_eq_lintegral_ofReal
      hi
      (ae_of_all _ (fun ξ => Complex.normSq_nonneg _)),
    hm]
  norm_num

/-- Density conversion preserves the standard-frequency convention without a prefactor. -/
theorem sourceProbabilityMeasure_integral (A : ℝ) (hA : 1 ≤ A) (f : ℝ → ℝ) :
    (∫ ξ, f ξ ∂sourceProbabilityMeasure A) =
      ∫ ξ, f ξ * Complex.normSq (standardSourceTransform A ξ) := by
  unfold sourceProbabilityMeasure
  rw [integral_withDensity_eq_integral_toReal_smul
    (f := fun ξ => ENNReal.ofReal (Complex.normSq (standardSourceTransform A ξ)))
    ((Complex.continuous_normSq.comp
      (standardSourceTransform_continuous A hA)).measurable.ennreal_ofReal)
    (ae_of_all _ (fun _ => ENNReal.ofReal_lt_top))]
  simp only [ENNReal.toReal_ofReal (Complex.normSq_nonneg _), smul_eq_mul, mul_comm]

/-- The fixed-scale bound sums all signed coefficients in the complete closed inventory. -/
def sourceSymbolBound (A : ℝ) : ℝ :=
  ∑ n ∈ PrimePowerDescent.primePowerInventory (2 * A), |compensatedCoefficient n|

theorem sourceSymbolBound_nonneg (A : ℝ) : 0 ≤ sourceSymbolBound A := by
  exact Finset.sum_nonneg (fun _ _ => abs_nonneg _)

theorem compensatedFourierSymbol_abs_le (A ξ : ℝ) :
    |compensatedFourierSymbol A ξ| ≤ sourceSymbolBound A := by
  unfold compensatedFourierSymbol sourceSymbolBound
  apply (Finset.abs_sum_le_sum_abs _ _).trans
  apply Finset.sum_le_sum
  intro n _
  rw [abs_mul]
  exact mul_le_of_le_one_right (abs_nonneg _) (Real.abs_cos_le_one _)

theorem compensatedFourierSymbol_measurable (A : ℝ) :
    Measurable (compensatedFourierSymbol A) := by
  unfold compensatedFourierSymbol
  fun_prop

/-- Odd source heat; the signed coefficients and complete inventory are retained. -/
def sourceSignedHeat (A t : ℝ) : ℝ :=
  signedHeat (sourceProbabilityMeasure A) (compensatedFourierSymbol A) t

/-- Cubic heat observation of the complete signed source. -/
def sourceCubicHeat (A t : ℝ) : ℝ :=
  cubicHeat (sourceProbabilityMeasure A) (compensatedFourierSymbol A) t

/-- Time integral of the complete source cubic heat observation. -/
def sourceHeatRemainder (A τ : ℝ) : ℝ :=
  signedHeatRemainder (sourceProbabilityMeasure A) (compensatedFourierSymbol A) τ

/-- The heat-chain starts at the actual signed arithmetic readout. -/
theorem sourceSignedHeat_zero (A : ℝ) (hA : 1 ≤ A) :
    sourceSignedHeat A 0 = compensatedSourceSum A := by
  unfold sourceSignedHeat signedHeat
  simp only [neg_zero, zero_mul, Real.exp_zero, mul_one]
  rw [sourceProbabilityMeasure_integral A hA,
    ← compensatedSourceSum_eq_standardSourceIntegral (by linarith : 0 < A)]

theorem sourceSignedHeat_hasDerivAt (A t : ℝ) (hA : 1 ≤ A) :
    HasDerivAt (sourceSignedHeat A) (-sourceCubicHeat A t) t := by
  let _ := sourceProbabilityMeasure_isProbability A hA
  exact signedHeat_hasDerivAt (compensatedFourierSymbol_measurable A)
    (sourceSymbolBound_nonneg A) (compensatedFourierSymbol_abs_le A) t

/-- Exact source-to-heat decomposition for every real scale at least one. -/
theorem compensatedSourceSum_eq_signedHeat_add_remainder (A : ℝ) (hA : 1 ≤ A)
    {τ : ℝ} (hτ : 0 ≤ τ) :
    compensatedSourceSum A = sourceSignedHeat A τ + sourceHeatRemainder A τ := by
  let _ := sourceProbabilityMeasure_isProbability A hA
  rw [compensatedSourceSum_eq_standardSourceIntegral (by linarith : 0 < A),
    ← sourceProbabilityMeasure_integral A hA]
  exact signedHeat_decomposition (compensatedFourierSymbol_measurable A)
    (sourceSymbolBound_nonneg A) (compensatedFourierSymbol_abs_le A) hτ

theorem sourceSignedHeat_terminal_bound (A : ℝ) (hA : 1 ≤ A)
    {τ : ℝ} (hτ : 0 < τ) : |sourceSignedHeat A τ| ≤ terminalCap τ := by
  let _ := sourceProbabilityMeasure_isProbability A hA
  exact signedHeat_terminal_bound hτ

/-- The exact all-real signed remainder supplier; this proposition is not asserted. -/
def UniformSignedHeatRemainderUpperBound : Prop :=
  ∃ R : ℝ, 1 ≤ R ∧ ∃ τ : ℝ, 0 < τ ∧ ∃ C : ℝ,
    ∀ A : ℝ, R ≤ A → sourceHeatRemainder A τ ≤ C

/-- A uniform remainder cap pays the explicit terminal constant into the actual consumer. -/
theorem compensated_tail_of_uniform_signedHeat
    (h : UniformSignedHeatRemainderUpperBound) :
    SourceKapitzaSignedReduction.CompensatedTailUpperBound := by
  rcases h with ⟨R, hR, τ, hτ, C, hC⟩
  refine ⟨R, hR, C + terminalCap τ, ?_⟩
  intro A hRA
  have hA := hR.trans hRA
  rw [compensatedSourceSum_eq_signedHeat_add_remainder A hA hτ.le]
  have ht := (abs_le.mp (sourceSignedHeat_terminal_bound A hA hτ)).2
  linarith [hC A hRA]

/-- The reverse implication exposes the bounded-difference reformulation. -/
theorem uniform_signedHeat_of_compensated_tail
    (h : SourceKapitzaSignedReduction.CompensatedTailUpperBound) :
    UniformSignedHeatRemainderUpperBound := by
  rcases h with ⟨R, hR, B, hB⟩
  refine ⟨R, hR, 1, by norm_num, B + terminalCap 1, ?_⟩
  intro A hRA
  have hA := hR.trans hRA
  have he := compensatedSourceSum_eq_signedHeat_add_remainder A hA (τ := 1) (by norm_num)
  have ht := (abs_le.mp (sourceSignedHeat_terminal_bound A hA (τ := 1) (by norm_num))).1
  linarith [hB A hRA]

theorem uniform_signedHeat_iff_compensated_tail :
    UniformSignedHeatRemainderUpperBound ↔
      SourceKapitzaSignedReduction.CompensatedTailUpperBound :=
  ⟨compensated_tail_of_uniform_signedHeat, uniform_signedHeat_of_compensated_tail⟩

/-- Conditional application uses the existing finite-prefix and comparison payments. -/
theorem estimate_of_uniform_signedHeat (h : UniformSignedHeatRemainderUpperBound) :
    CorrelationAssembly.EstimateObligation :=
  SourceKapitzaSignedReduction.estimate_of_compensated_tail
    (compensated_tail_of_uniform_signedHeat h)

end FormalResearch.RiemannHypothesis.SourceSignedHeat
