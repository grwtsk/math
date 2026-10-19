import FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy
import FormalResearch.RiemannHypothesis.SourceHankelReflection

/-!
# The literal source's scalar Green pairing

The independently defined continuous full-line Green kernel and convolution
retain the original normalized, zero-extended source. These scalar identities
do not construct a resolvent operator, identify a Jacobi or theta object,
or bound the signed arithmetic work.

AI attribution: developed with OpenAI Codex; Lean checks proof terms.
-/

namespace FormalResearch.RiemannHypothesis.SourceGreenKernel

open MeasureTheory Set Function
open SourcePairing SourceCausalEnergy SourceContinuousHalfEnergy SourceFirstPrimeAbel
open GevreyPolynomial SourceHankelReflection
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual

noncomputable section

/-- The coefficient-one massive Green kernel on the continuous full line. -/
def greenKernel (t : ℝ) : ℝ := Real.exp (-|t| / 2)

/-- An independent whole-line pairing with the unchanged source correlation. -/
def sourceGreenPairing (A : ℝ) : ℝ :=
  ∫ t : ℝ, greenKernel t * sourceCorrelation explicitSecondDerivative A t

/-- The literal integral convolution, before its special source cancellation. -/
def sourceGreenConvolution (A x : ℝ) : ℝ :=
  ∫ y : ℝ, greenKernel (x - y) * normalizedTest explicitSecondDerivative A y

/-- Continuity includes the kernel's absolute-value seam. -/
theorem greenKernel_continuous : Continuous greenKernel :=
  Real.continuous_exp.comp (continuous_abs.neg.div_const 2)

/-- The continuous full-line kernel is even. -/
theorem greenKernel_even (t : ℝ) : greenKernel (-t) = greenKernel t := by
  simp [greenKernel]

/-- The independently defined pairing integrand is genuinely integrable. -/
theorem sourceGreenPairing_integrable {A : ℝ} (hA : 0 < A) :
    Integrable (fun t : ℝ ↦ greenKernel t * sourceCorrelation explicitSecondDerivative A t) :=
  (greenKernel_continuous.mul (sourceCorrelation_contDiff A hA).continuous).integrable_of_hasCompactSupport ((sourceCorrelation_hasCompactSupport A hA).mul_left)

/-- Each actual-source convolution section is genuinely integrable. -/
theorem sourceGreenConvolution_integrable {A : ℝ} (hA : 0 < A) (x : ℝ) :
    Integrable (fun y : ℝ ↦ greenKernel (x-y) * normalizedTest explicitSecondDerivative A y) :=
  ((greenKernel_continuous.comp (continuous_const.sub continuous_id)).mul
    (normalizedTest_contDiff A hA).continuous).integrable_of_hasCompactSupport
      ((normalizedTest_hasCompactSupport A hA).mul_left)

/-- Correlation support and evenness retain both halves and the zero seam. -/
theorem sourceGreenPairing_eq_twice_negativeSmoothMoment {A : ℝ} (hA : 0 < A) :
    sourceGreenPairing A = 2 * negativeSmoothMoment A := by
  let F := fun t : ℝ ↦ greenKernel t * sourceCorrelation explicitSecondDerivative A t
  have hc : Continuous F :=
    greenKernel_continuous.mul (sourceCorrelation_contDiff A hA).continuous
  have hs : Function.support F ⊆ Ioc (-(2*A)) (2*A) := by
    intro t ht
    have hn : |t| < 2*A := by
      by_contra hn
      apply ht
      dsimp only [F]
      rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A t hA (le_of_not_gt hn), mul_zero]
    exact ⟨by linarith [neg_abs_le t], (le_abs_self t).trans hn.le⟩
  have hfull := intervalIntegral.integral_eq_integral_of_support_subset (μ := volume) hs
  have he : (fun t : ℝ ↦ F (-t)) = F := by
    funext t
    dsimp only [F]
    rw [greenKernel_even, sourceCorrelation_even]
  have heven : (∫ t in -(2*A)..0, F t) = ∫ t in 0..2*A, F t := by
    have hn := intervalIntegral.integral_comp_neg F (a := -(2*A)) (b := 0)
    rw [he] at hn
    simpa using hn
  have hadd := intervalIntegral.integral_add_adjacent_intervals
    (hc.intervalIntegrable (μ := volume) (-(2*A)) 0)
    (hc.intervalIntegrable (μ := volume) 0 (2*A))
  have hpos : (∫ t in 0..2*A, F t) = negativeSmoothMoment A := by
    unfold negativeSmoothMoment
    apply intervalIntegral.integral_congr
    intro t ht
    rw [uIcc_of_le (by linarith : (0 : ℝ) ≤ 2*A)] at ht
    dsimp only [F, greenKernel]
    rw [abs_of_nonneg ht.1]
  rw [heven, hfull] at hadd
  change (∫ t : ℝ, F t) = _
  rw [← hpos]
  linarith

/-- The full Green pairing is the positive causal energy of the literal source. -/
theorem sourceGreenPairing_eq_causal_energy {A : ℝ} (hA : 0 < A) :
    sourceGreenPairing A = ∫ x : ℝ, causalSourceTail A x ^ 2 := by
  rw [sourceGreenPairing_eq_twice_negativeSmoothMoment hA,
    negativeSmoothMoment_eq_half_causal_energy hA]
  ring

/-- The original critical half uses only its recorded radius domain. -/
theorem criticalContinuousMoment_eq_neg_half_green {A : ℝ} (hA : 1 ≤ A) :
    criticalContinuousMoment A = -(1/2) * sourceGreenPairing A := by
  rw [sourceGreenPairing_eq_causal_energy (by linarith : 0 < A)]
  exact criticalContinuousMoment_eq_neg_half_causal_energy hA

/-- Evenness belongs to the actual bump, including its global zero extension. -/
theorem normalizedPrimitiveBump_even {A : ℝ} (hA : 0 < A) (x : ℝ) :
    normalizedPrimitiveBump A (-x) = normalizedPrimitiveBump A x := by
  rw [normalizedPrimitiveBump, normalizedPrimitiveBump, scaledBump_eq_indicator A hA]
  have hm : -x ∈ Icc (-A) A ↔ x ∈ Icc (-A) A := by
    simp only [mem_Icc]
    constructor <;> rintro ⟨h1,h2⟩ <;> constructor <;> linarith
  simp only [indicator_apply, hm]
  split_ifs
  · simp only [bumpInterior, neg_div]
    ring
  · rfl

/-- Oddness belongs to the actual ordinary derivative, including both seams. -/
theorem normalizedPrimitiveBump_deriv_odd {A : ℝ} (hA : 0 < A) (x : ℝ) :
    deriv (normalizedPrimitiveBump A) (-x) = -deriv (normalizedPrimitiveBump A) x := by
  rw [normalizedPrimitiveBump_deriv hA]
  have hm : -x ∈ Icc (-A) A ↔ x ∈ Icc (-A) A := by
    simp only [mem_Icc]
    constructor <;> rintro ⟨h1,h2⟩ <;> constructor <;> linarith
  simp only [firstDerivative, indicator_apply, hm]
  split_ifs
  · simp only [firstInterior, neg_div]
    ring
  · simp

/-- The reflected pair of actual causal tails cancels to the negative bump. -/
theorem causalSourceTail_add_reflection {A : ℝ} (hA : 0 < A) (x : ℝ) :
    causalSourceTail A x + causalSourceTail A (-x) = -normalizedPrimitiveBump A x := by
  rw [causalSourceTail_eq hA, causalSourceTail_eq hA,
    normalizedPrimitiveBump_deriv_odd hA, normalizedPrimitiveBump_even hA]
  ring

/-- The upper Green half is the original coefficient-one causal tail. -/
theorem sourceGreenConvolution_upper_half {A : ℝ} (hA : 0 < A) (x : ℝ) :
    (∫ y in Ioi x, greenKernel (x-y) * normalizedTest explicitSecondDerivative A y) =
      causalSourceTail A x := by
  unfold causalSourceTail
  rw [integral_Ici_eq_integral_Ioi, ← integral_const_mul]
  apply setIntegral_congr_fun measurableSet_Ioi
  intro y hy
  dsimp only [greenKernel]
  rw [abs_of_nonpos (by linarith [mem_Ioi.mp hy] : x-y ≤ 0)]
  rw [show -(-(x-y))/2 = x/2 + -y/2 by ring, Real.exp_add]
  ring

/-- Reflection of the lower half uses the actual q-evenness and no atom at its endpoint. -/
theorem sourceGreenConvolution_lower_half {A : ℝ} (hA : 0 < A) (x : ℝ) :
    (∫ y in Iic x, greenKernel (x-y) * normalizedTest explicitSecondDerivative A y) =
      causalSourceTail A (-x) := by
  have he : (fun y : ℝ ↦ greenKernel (x-y) * normalizedTest explicitSecondDerivative A y) =
      fun y : ℝ ↦ greenKernel (-x-(-y)) * normalizedTest explicitSecondDerivative A (-y) := by
    funext y
    rw [normalized_source_even hA]
    congr 1
    rw [show -x-(-y) = -(x-y) by ring, greenKernel_even]
  rw [he]
  exact (integral_comp_neg_Iic x (fun y : ℝ ↦
    greenKernel (-x-y) * normalizedTest explicitSecondDerivative A y)).trans
      (sourceGreenConvolution_upper_half hA (-x))

/-- Genuine integrability licenses the full-line split with only one copy of the endpoint. -/
theorem sourceGreenConvolution_eq_tails {A : ℝ} (hA : 0 < A) (x : ℝ) :
    sourceGreenConvolution A x = causalSourceTail A x + causalSourceTail A (-x) := by
  have hi := sourceGreenConvolution_integrable hA x
  have hs := intervalIntegral.integral_Iic_add_Ioi (hi.integrableOn (s := Iic x))
    (hi.integrableOn (s := Ioi x))
  rw [sourceGreenConvolution_lower_half hA, sourceGreenConvolution_upper_half hA] at hs
  exact hs.symm.trans (add_comm _ _)

/-- This special source convolution is exactly the negative globally compact bump. -/
theorem sourceGreenConvolution_eq_neg_bump {A : ℝ} (hA : 0 < A) (x : ℝ) :
    sourceGreenConvolution A x = -normalizedPrimitiveBump A x := by
  rw [sourceGreenConvolution_eq_tails hA]
  exact causalSourceTail_add_reflection hA x

/-- The point formula entails continuity for this literal source, not for an arbitrary input. -/
theorem sourceGreenConvolution_continuous {A : ℝ} (hA : 0 < A) :
    Continuous (sourceGreenConvolution A) := by
  have he : sourceGreenConvolution A = fun x ↦ -normalizedPrimitiveBump A x :=
    funext (sourceGreenConvolution_eq_neg_bump hA)
  rw [he]
  exact (normalizedPrimitiveBump_contDiff hA).continuous.neg

/-- The cancellation giving compact support is proved for this differential source. -/
theorem sourceGreenConvolution_hasCompactSupport {A : ℝ} (hA : 0 < A) :
    HasCompactSupport (sourceGreenConvolution A) := by
  have he : sourceGreenConvolution A = fun x ↦ -normalizedPrimitiveBump A x :=
    funext (sourceGreenConvolution_eq_neg_bump hA)
  rw [he]
  exact (normalizedPrimitiveBump_hasCompactSupport hA).neg

/-- The actual convolution vanishes outside the literal source interval. -/
theorem sourceGreenConvolution_zero_of_not_mem {A : ℝ} (hA : 0 < A) {x : ℝ}
    (hx : x ∉ Icc (-A) A) : sourceGreenConvolution A x = 0 := by
  rw [sourceGreenConvolution_eq_neg_bump hA, normalizedPrimitiveBump_zero_of_not_mem hA hx]
  simp

end

end FormalResearch.RiemannHypothesis.SourceGreenKernel
