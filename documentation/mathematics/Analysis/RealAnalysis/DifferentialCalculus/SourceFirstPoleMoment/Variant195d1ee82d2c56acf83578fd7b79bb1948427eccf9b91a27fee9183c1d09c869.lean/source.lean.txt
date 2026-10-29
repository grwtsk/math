import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment
import FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel

/-!
Scratch continuation of grwtsk contributors's actual-source boundary research.
OpenAI Codex construction. The first weighted correlation moment is proved
by compact convolution Fubini, using the maintained actual source pole zeros.
This is a source cancellation bridge, not an arithmetic rate witness.
-/

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.SourceFirstPoleMoment

open MeasureTheory Set
open scoped Convolution
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity CorrelationMoment
open FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel

theorem first_convolution_moment (f g : ℝ → ℝ)
    (hf : Continuous f) (hg : Continuous g)
    (hsf : HasCompactSupport f) (hsg : HasCompactSupport g) :
    (∫ t : ℝ, t * (f ⋆ g) t) =
      (∫ x : ℝ, x * f x) * (∫ x : ℝ, g x) +
      (∫ x : ℝ, f x) * (∫ x : ℝ, x * g x) := by
  let xf : ℝ → ℝ := fun x => x * f x
  let xg : ℝ → ℝ := fun x => x * g x
  have hif : Integrable f := hf.integrable_of_hasCompactSupport hsf
  have hig : Integrable g := hg.integrable_of_hasCompactSupport hsg
  have hixf : Integrable xf :=
    (continuous_id.mul hf).integrable_of_hasCompactSupport hsf.mul_left
  have hixg : Integrable xg :=
    (continuous_id.mul hg).integrable_of_hasCompactSupport hsg.mul_left
  have he (t : ℝ) : t * (f ⋆ g) t = (xf ⋆ g) t + (f ⋆ xg) t := by
    have hi1 : Integrable (fun x : ℝ => (x * f x) * g (t - x)) :=
      ((continuous_id.mul hf).mul
        (hg.comp (continuous_const.sub continuous_id))).integrable_of_hasCompactSupport
          hsf.mul_left.mul_right
    have hi2 : Integrable (fun x : ℝ => f x * ((t-x) * g (t-x))) :=
      (hf.mul ((continuous_const.sub continuous_id).mul
        (hg.comp (continuous_const.sub continuous_id)))).integrable_of_hasCompactSupport
          hsf.mul_right
    simp only [convolution_lsmul, smul_eq_mul]
    change t * (∫ x : ℝ, f x * g (t-x)) =
      (∫ x : ℝ, (x*f x)*g (t-x)) + (∫ x : ℝ, f x*((t-x)*g (t-x)))
    rw [← integral_const_mul, ← integral_add hi1 hi2]
    apply integral_congr_ae
    filter_upwards [] with x
    change t * (f x * g (t-x)) = (x*f x)*g (t-x)+f x*((t-x)*g (t-x))
    ring
  have hie1 := hixf.integrable_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hig
  have hie2 := hif.integrable_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hixg
  simp_rw [he]
  rw [integral_add hie1 hie2, integral_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hixf hig,
    integral_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hif hixg]
  rfl

theorem actual_first_pole_moment_zero {A : ℝ} (hA : 1 ≤ A) :
    (∫ t : ℝ, t * Real.exp (t/2) *
      sourceCorrelation explicitSecondDerivative A t) = 0 := by
  have hp : 0 < A := by linarith
  let q : ℝ → ℝ := normalizedTest explicitSecondDerivative A
  let F : ℝ → ℝ := fun x => Real.exp ((1/2 : ℝ)*x) * q x
  let G : ℝ → ℝ := fun x => Real.exp ((1/2 : ℝ)*x) * q (-x)
  have hq : Continuous q := (normalizedTest_contDiff A hp).continuous
  have hqs : HasCompactSupport q := normalizedTest_hasCompactSupport A hp
  have hF : Continuous F := by fun_prop
  have hG : Continuous G := by fun_prop
  have hFs : HasCompactSupport F := hqs.mul_left
  have hGs : HasCompactSupport G :=
    (hqs.comp_homeomorph (Homeomorph.neg ℝ)).mul_left
  have hFzero : (∫ x : ℝ, F x) = 0 :=
    weighted_normalizedTest_integral_zero A (1/2) hA (by norm_num)
  have hGzero : (∫ x : ℝ, G x) = 0 := by
    have hn := weighted_normalizedTest_integral_zero A (-(1/2)) hA (by norm_num)
    change (∫ x : ℝ, Real.exp ((-(1/2) : ℝ)*x) * q x) = 0 at hn
    have href := integral_neg_eq_self
      (fun x : ℝ => Real.exp ((-(1/2) : ℝ)*x) * q x) volume
    simp only [neg_mul_neg] at href
    exact href.trans hn
  have hm := first_convolution_moment F G hF hG hFs hGs
  rw [hFzero, hGzero, mul_zero, zero_mul, add_zero] at hm
  have he (t : ℝ) : t * Real.exp (t/2) *
      sourceCorrelation explicitSecondDerivative A t = t * (F ⋆ G) t := by
    have hw := weighted_correlation_eq_convolution q (1/2) t
    change Real.exp ((1/2 : ℝ)*t)*sourceCorrelation explicitSecondDerivative A t =
      (F ⋆ G) t at hw
    rw [← hw, show (1/2 : ℝ)*t=t/2 by ring]
    ring
  simpa only [he] using hm

/-- Exact full-line annihilation of every independently chosen quadratic background. -/
theorem actual_quadratic_derivative_background_zero {A : ℝ} (hA : 1 ≤ A)
    (a b c : ℝ) :
    (∫ t : ℝ, (a+b*t+c*t^2) * deriv (criticalPrimeTest A) t) = 0 := by
  have hp : 0 < A := by linarith
  have hf := criticalPrimeTest_contDiff A hp
  have hs : HasCompactSupport (criticalPrimeTest A) :=
    (sourceCorrelation_hasCompactSupport A hp).mul_left
  have hpcont : Continuous (fun t : ℝ => a+b*t+c*t^2) := by fun_prop
  have hdcont : Continuous (fun t : ℝ => b+2*c*t) := by fun_prop
  have hleft : Integrable (fun t : ℝ => (a+b*t+c*t^2)*deriv (criticalPrimeTest A) t) :=
    (hpcont.mul hf.continuous_deriv_one).integrable_of_hasCompactSupport hs.deriv.mul_left
  have hright : Integrable (fun t : ℝ => (b+2*c*t)*criticalPrimeTest A t) :=
    (hdcont.mul hf.continuous).integrable_of_hasCompactSupport hs.mul_left
  have hprod : Integrable (fun t : ℝ => (a+b*t+c*t^2)*criticalPrimeTest A t) :=
    (hpcont.mul hf.continuous).integrable_of_hasCompactSupport hs.mul_left
  have hibp := integral_mul_deriv_eq_deriv_mul_of_integrable
    (u := fun t : ℝ => a+b*t+c*t^2) (u' := fun t : ℝ => b+2*c*t)
    (v := criticalPrimeTest A) (v' := deriv (criticalPrimeTest A))
    (fun t _ => by
      have hd := ((hasDerivAt_const t a).add ((hasDerivAt_id t).const_mul b)).add
        (((hasDerivAt_id t).pow 2).const_mul c)
      change HasDerivAt (fun x : ℝ => a+b*x+c*x^2)
        (0+b*1+c*((2 : ℝ)*t^(2-1)*1)) t at hd
      exact hd.congr_deriv (by
        simp only [Nat.reduceSub, pow_one, zero_add, mul_one]
        ring))
    (fun t _ => (hf.differentiable (by norm_num) t).hasDerivAt)
    hleft hright hprod
  have hzero : (∫ t : ℝ, criticalPrimeTest A t) = 0 := by
    have hz := full_correlation_moment_zero A hA
    have he (t : ℝ) : (1/2 : ℝ)*t=t/2 := by ring
    simpa only [criticalPrimeTest, he] using hz
  have hone : (∫ t : ℝ, t*criticalPrimeTest A t) = 0 := by
    simpa only [criticalPrimeTest, mul_assoc] using actual_first_pole_moment_zero hA
  have hi0 : Integrable (criticalPrimeTest A) :=
    hf.continuous.integrable_of_hasCompactSupport hs
  have hi1 : Integrable (fun t : ℝ => t*criticalPrimeTest A t) :=
    (continuous_id.mul hf.continuous).integrable_of_hasCompactSupport hs.mul_left
  have hr : (∫ t : ℝ, (b+2*c*t)*criticalPrimeTest A t) = 0 := by
    have he (t : ℝ) : (b+2*c*t)*criticalPrimeTest A t =
        b*criticalPrimeTest A t+(2*c)*(t*criticalPrimeTest A t) := by ring
    simp_rw [he]
    rw [integral_add (hi0.const_mul b) (hi1.const_mul (2*c)),
      integral_const_mul, integral_const_mul, hzero, hone]
    ring
  simpa only [Pi.mul_apply, hr, neg_zero] using hibp

/-- The actual boundary derivative with its original normalization and reflected lag. -/
def boundaryWorkKernel (A y : ℝ) : ℝ :=
  A^9 * Real.exp (-A) * deriv (criticalPrimeTest A) (2*A-y)

def boundaryCorrelation (A y : ℝ) : ℝ :=
  A^9 * sourceCorrelation explicitSecondDerivative A (2*A-y)

theorem boundaryCorrelation_deriv {A : ℝ} (hA : 1 ≤ A) (y : ℝ) :
    deriv (boundaryCorrelation A) y =
      -A^9 * deriv (sourceCorrelation explicitSecondDerivative A) (2*A-y) := by
  have hd := ((sourceCorrelation_contDiff A (show 0 < A by linarith)).differentiable
    (by norm_num) (2*A-y)).hasDerivAt
  have hi := (hasDerivAt_const y (2*A)).sub (hasDerivAt_id y)
  have hh := (hd.comp y hi).const_mul (A^9)
  change HasDerivAt (boundaryCorrelation A)
    (A^9 * (deriv (sourceCorrelation explicitSecondDerivative A) (2*A-y) * (0-1))) y at hh
  exact hh.deriv.trans (by ring)

theorem boundaryWorkKernel_eq_source {A : ℝ} (hA : 1 ≤ A) (y : ℝ) :
    boundaryWorkKernel A y = Real.exp (-y/2) * A^9 *
      (sourceCorrelation explicitSecondDerivative A (2*A-y)/2 +
        deriv (sourceCorrelation explicitSecondDerivative A) (2*A-y)) := by
  unfold boundaryWorkKernel
  rw [criticalPrimeTest_deriv A (2*A-y) (by linarith)]
  have he : Real.exp (-A)*Real.exp ((2*A-y)/2) = Real.exp (-y/2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  calc
    _ = (Real.exp (-A)*Real.exp ((2*A-y)/2))*A^9*
      (sourceCorrelation explicitSecondDerivative A (2*A-y)/2 +
        deriv (sourceCorrelation explicitSecondDerivative A) (2*A-y)) := by ring
    _ = _ := by rw [he]

theorem boundaryWorkKernel_eq_correlation {A : ℝ} (hA : 1 ≤ A) (y : ℝ) :
    boundaryWorkKernel A y = Real.exp (-y/2) *
      (boundaryCorrelation A y/2 - deriv (boundaryCorrelation A) y) := by
  rw [boundaryWorkKernel_eq_source hA, boundaryCorrelation_deriv hA]
  unfold boundaryCorrelation
  ring

/-- Exact finite-A quadratic background cancellation on the complete [0,4A] support. -/
theorem boundary_quadratic_background_zero {A : ℝ} (hA : 1 ≤ A)
    (a b c : ℝ) :
    (∫ y in 0..4*A, (a+b*y+c*y^2)*boundaryWorkKernel A y) = 0 := by
  have hp : 0 < A := by linarith
  let f := criticalPrimeTest A
  have hsup : Function.support f ⊆ Icc (-(2*A)) (2*A) := by
    intro t ht
    have hc : sourceCorrelation explicitSecondDerivative A t ≠ 0 := by
      intro hn
      exact ht (by simp [f, criticalPrimeTest, hn])
    have ht' : |t| < 2*A := by
      by_contra hn
      exact hc (sourceCorrelation_eq_zero_of_two_mul_le_abs A t hp (le_of_not_gt hn))
    exact ⟨by linarith [neg_abs_le t], (le_abs_self t).trans ht'.le⟩
  have hts : tsupport f ⊆ Icc (-(2*A)) (2*A) :=
    closure_minimal hsup isClosed_Icc
  have hdout (t : ℝ) (ht : t ∉ Icc (-(2*A)) (2*A)) : deriv f t = 0 := by
    by_contra hn
    exact ht (hts (support_deriv_subset hn))
  let P : ℝ → ℝ := fun t => a+b*(2*A-t)+c*(2*A-t)^2
  have hz : (∫ t : ℝ, P t * deriv f t) = 0 := by
    have h := actual_quadratic_derivative_background_zero hA
      (a+2*b*A+4*c*A^2) (-b-4*c*A) c
    have he : (fun t : ℝ => P t * deriv f t) =
        fun t => (a+2*b*A+4*c*A^2+(-b-4*c*A)*t+c*t^2)*
          deriv (criticalPrimeTest A) t := by
      funext t
      dsimp [P, f]
      ring
    rw [he]
    exact h
  have hi : (∫ t : ℝ, P t * deriv f t) =
      ∫ t in -(2*A)..2*A, P t * deriv f t := by
    calc
      _ = ∫ t : ℝ, (Icc (-(2*A)) (2*A)).indicator (fun t => P t*deriv f t) t := by
        apply integral_congr_ae
        filter_upwards [] with t
        by_cases ht : t ∈ Icc (-(2*A)) (2*A)
        · rw [indicator_of_mem ht]
        · rw [indicator_of_notMem ht, hdout t ht, mul_zero]
      _ = _ := zeroExtension_integral _ _ _ (by linarith)
  have hr := intervalIntegral.integral_comp_sub_left (fun t => P t*deriv f t)
    (a := 0) (b := 4*A) (2*A)
  have he (y : ℝ) : (a+b*y+c*y^2)*boundaryWorkKernel A y =
      (A^9*Real.exp (-A))*(P (2*A-y)*deriv f (2*A-y)) := by
    dsimp [boundaryWorkKernel, P, f]
    ring
  simp_rw [he]
  rw [intervalIntegral.integral_const_mul]
  have hleft : (∫ y in 0..4*A, P (2*A-y)*deriv f (2*A-y)) =
      ∫ t in -(2*A)..2*A, P t*deriv f t := by
    simpa only [show 2*A-4*A=-(2*A) by ring, sub_zero] using hr
  rw [hleft, ← hi, hz, mul_zero]

#check first_convolution_moment
#check actual_first_pole_moment_zero
#check actual_quadratic_derivative_background_zero
#check boundaryWorkKernel_eq_source
#check boundaryCorrelation_deriv
#check boundaryWorkKernel_eq_correlation
#check boundary_quadratic_background_zero
#print axioms first_convolution_moment
#print axioms actual_first_pole_moment_zero
#print axioms actual_quadratic_derivative_background_zero
#print axioms boundaryWorkKernel_eq_source
#print axioms boundaryCorrelation_deriv
#print axioms boundaryWorkKernel_eq_correlation
#print axioms boundary_quadratic_background_zero
#print first_convolution_moment
#print actual_first_pole_moment_zero
#print actual_quadratic_derivative_background_zero
#print boundaryWorkKernel_eq_source
#print boundaryCorrelation_deriv
#print boundaryWorkKernel_eq_correlation
#print boundary_quadratic_background_zero

end ContinuousResearch.SourceFirstPoleMoment
