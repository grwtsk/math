import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateNormalizedSourceProfile
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource

/-!
# Exact normalized critical prime error

The complete prime source is centered by its accepted smooth companion before
any estimate. The logarithmic dilation has the literal source endpoints and
closed inventory. Eventual upper boundedness is only an equivalent proposition.
-/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateCriticalPrimeError

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization CorrelationRegularity EstimateNormalizedSourceProfile
open EstimatePrimeSmoothDefect EstimateMertensResidual PrimePowerDescent
open EstimatePlainKernel EstimateVaughanSource EstimateSourceMobiusKernel

noncomputable section

/-- The literal critical weight in multiplicative coordinates. -/
def criticalWeight (A x : ℝ) : ℝ :=
  unitCorrelation A (Real.log x / A) / Real.sqrt x

/-- The full closed prime moment minus the exact scaled smooth companion. -/
def normalizedCriticalPrimeError (A : ℝ) : ℝ :=
  (∑ n ∈ primePowerInventory (2*A),
    ArithmeticFunction.vonMangoldt n * criticalWeight A n) -
  A * ∫ y in lowerEndpoint/A..2, Real.exp (A*y/2) * unitCorrelation A y

/-- The new weight is source identity, not a replacement family. -/
theorem sourcePlainWeight_eq_criticalWeight (A x : ℝ) (hA : 0 < A) :
    sourcePlainWeight A x = criticalWeight A x := by
  unfold sourcePlainWeight criticalWeight
  rw [sourceCorrelation_eq_unitCorrelation_div A (Real.log x) hA]

/-- The original prime inventory and all its endpoint atoms are unchanged. -/
theorem closedPrimeMoment_eq_criticalWeight_sum (A : ℝ) (hA : 1 ≤ A) :
    closedPrimeMoment A = ∑ n ∈ primePowerInventory (2*A),
      ArithmeticFunction.vonMangoldt n * criticalWeight A n := by
  unfold closedPrimeMoment
  apply Finset.sum_congr rfl
  intro n hn
  have hn1 : 1 ≤ n := by
    have := (Finset.mem_Icc.mp hn).1
    omega
  change ArithmeticFunction.vonMangoldt n * EstimateMobiusSplit.closedPrimeWeight A n = _
  rw [← sourcePlainWeight_nat_eq A n hn1,
    sourcePlainWeight_eq_criticalWeight A n (by linarith)]

/-- The scaled smooth integrand is genuinely integrable on its finite interval. -/
theorem normalizedSmooth_intervalIntegrable (A : ℝ) (hA : 0 < A) :
    IntervalIntegrable (fun y ↦ Real.exp (A*y/2) * unitCorrelation A y)
      volume (lowerEndpoint/A) 2 := by
  have he : Continuous (fun y : ℝ ↦ Real.exp (A*y/2)) := by fun_prop
  exact (he.mul (unitCorrelation_contDiff A hA).continuous).intervalIntegrable _ _

/-- The smooth interval rescales from exactly `log 2..2A` to `log 2/A..2`. -/
theorem smoothMoment_eq_unitCorrelation_integral (A : ℝ) (hA : 1 ≤ A) :
    smoothMoment A = A * ∫ y in lowerEndpoint/A..2,
      Real.exp (A*y/2) * unitCorrelation A y := by
  have hA0 : 0 < A := by linarith
  have hchange := intervalIntegral.smul_integral_comp_mul_left
    (a := lowerEndpoint/A) (b := (2 : ℝ))
    (fun t ↦ Real.exp (t/2) * sourceCorrelation explicitSecondDerivative A t) A
  rw [mul_div_cancel₀ lowerEndpoint hA0.ne', show A*2 = 2*A by ring] at hchange
  simp only [smul_eq_mul] at hchange
  unfold smoothMoment
  rw [← hchange]
  congr 1
  apply intervalIntegral.integral_congr
  intro y _
  dsimp only
  rw [sourceCorrelation_mul_eq_unitCorrelation A y hA0]

/-- Exact centering and normalization of the complete accepted prime source. -/
theorem primeSmoothDefect_eq_normalizedCriticalPrimeError (A : ℝ) (hA : 1 ≤ A) :
    primeSmoothDefect A = normalizedCriticalPrimeError A := by
  unfold primeSmoothDefect normalizedCriticalPrimeError
  rw [closedPrimeMoment_eq_criticalWeight_sum A hA,
    smoothMoment_eq_unitCorrelation_integral A hA]

/-- The complete signed residual differs only by the existing bounded companion. -/
theorem mertensResidual_eq_criticalPrimeError_add_smooth (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = normalizedCriticalPrimeError A + smoothMoment A := by
  have h := primeSmoothDefect_eq_mertensResidual_sub_smooth A hA
  rw [primeSmoothDefect_eq_normalizedCriticalPrimeError A hA] at h
  linarith

/-- An open tail proposition, not an analytic assumption or a proved bound. -/
def CriticalPrimeErrorTailUpperBound : Prop :=
  ∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧
    ∀ A : ℝ, R ≤ A → normalizedCriticalPrimeError A ≤ D

theorem critical_prime_error_tail_iff_prime_smooth_tail :
    CriticalPrimeErrorTailUpperBound ↔ PrimeSmoothDefectTailUpperBound := by
  constructor
  · rintro ⟨D, hD, R, hR, h⟩
    refine ⟨D, hD, R, hR, ?_⟩
    intro A hRA
    rw [primeSmoothDefect_eq_normalizedCriticalPrimeError A (hR.trans hRA)]
    exact h A hRA
  · rintro ⟨D, hD, R, hR, h⟩
    refine ⟨D, hD, R, hR, ?_⟩
    intro A hRA
    rw [← primeSmoothDefect_eq_normalizedCriticalPrimeError A (hR.trans hRA)]
    exact h A hRA

/-- Equivalence only: neither existence statement is discharged. -/
theorem critical_prime_error_tail_iff_mertens_residual_tail :
    CriticalPrimeErrorTailUpperBound ↔ MertensResidualTailUpperBound :=
  critical_prime_error_tail_iff_prime_smooth_tail.trans
    prime_smooth_tail_iff_mertens_residual_tail

/-- The genuine upper support endpoint has zero critical weight. -/
theorem criticalWeight_upper_zero (A : ℝ) (hA : 1 ≤ A) :
    criticalWeight A (Real.exp (2*A)) = 0 := by
  rw [← sourcePlainWeight_eq_criticalWeight A _ (by linarith)]
  exact sourcePlainWeight_upper_zero A hA

/-- Literal differentiation retains the signed correlation derivative. -/
theorem criticalWeight_hasDerivAt (A x : ℝ) (hA : 0 < A) (hx : 0 < x) :
    HasDerivAt (criticalWeight A)
      ((deriv (unitCorrelation A) (Real.log x / A) / A -
        unitCorrelation A (Real.log x / A) / 2) / (x * Real.sqrt x)) x := by
  have hK := unitCorrelation_contDiff A hA
  have hCt : ContDiff ℝ 1 (fun t : ℝ ↦ unitCorrelation A (t/A)) :=
    hK.comp (contDiff_id.div_const A)
  have hF := exponentialTest_contDiff (fun t ↦ unitCorrelation A (t/A)) hCt
  have hdF := ((contDiff_one_iff_deriv.mp hF).1 (Real.log x)).hasDerivAt
  have hKC := ((contDiff_one_iff_deriv.mp hK).1 (Real.log x/A)).hasDerivAt
  have hKt := hKC.comp (Real.log x) ((hasDerivAt_id (Real.log x)).div_const A)
  have hD : deriv (fun t ↦ unitCorrelation A (t/A)) (Real.log x) =
      deriv (unitCorrelation A) (Real.log x/A) / A := by
    simpa only [Function.comp_def, id_eq, div_eq_mul_inv, one_mul] using hKt.deriv
  rw [exponentialTest_deriv (fun t ↦ unitCorrelation A (t/A)) hCt, hD] at hdF
  have hd := hdF.comp x (Real.hasDerivAt_log hx.ne')
  have hexp : Real.exp (-Real.log x / 2) = 1 / Real.sqrt x := by
    rw [neg_div, Real.exp_neg, Real.exp_half, Real.exp_log hx]
    ring
  have hd' := hd.congr_of_eventuallyEq (f₁ := criticalWeight A) ?_
  · have hcoef : Real.exp (-Real.log x/2) *
        (deriv (unitCorrelation A) (Real.log x/A) / A -
          unitCorrelation A (Real.log x/A) / 2) * x⁻¹ =
        (deriv (unitCorrelation A) (Real.log x/A) / A -
          unitCorrelation A (Real.log x/A) / 2) / (x * Real.sqrt x) := by
      rw [hexp]
      ring
    rw [hcoef] at hd'
    exact hd'
  · filter_upwards [eventually_gt_nhds hx] with z hz
    dsimp [exponentialTest, criticalWeight]
    rw [neg_div, Real.exp_neg, Real.exp_half, Real.exp_log hz]
    ring

end
end EstimateCriticalPrimeError
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
