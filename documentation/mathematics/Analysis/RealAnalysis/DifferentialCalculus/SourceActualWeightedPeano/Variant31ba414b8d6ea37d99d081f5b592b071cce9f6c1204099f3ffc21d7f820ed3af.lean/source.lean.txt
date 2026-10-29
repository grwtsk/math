import SourceRationalCompensation
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvature
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceMobiusDerivative
import Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts
import Mathlib.MeasureTheory.Integral.DominatedConvergence

/-!
Exact weighted source jets and finite Peano energies for the unchanged source.
All complementary logarithmic moments remain explicit signed counterterms.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualWeightedPeano
open MeasureTheory Set
open SourcePairing SourceNativeReadout SourceRationalCompensation SourceRationalContinuousHalf
open SourceNativeDirichlet SourceNativeDirichletMoments
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation EstimateMertensResidual
noncomputable section

theorem weightedCorrelation_contDiff_two (A : ℝ) (hA : 1 ≤ A) :
    ContDiff ℝ 2 (weightedCorrelation A) := by
  unfold weightedCorrelation
  exact (SourceCorrelationCurvature.sourceCorrelation_contDiff_two (by linarith)).mul
    (by fun_prop)

theorem actual_correlation_deriv_zero (A : ℝ) (hA : 1 ≤ A) :
    deriv (sourceCorrelation explicitSecondDerivative A) 0 = 0 := by
  let f := sourceCorrelation explicitSecondDerivative A
  have hd : HasDerivAt f (deriv f 0) 0 :=
    ((sourceCorrelation_contDiff A (by linarith)).differentiable (by norm_num) 0).hasDerivAt
  have he : (fun x : ℝ ↦ f (-x)) = f := funext (sourceCorrelation_even A)
  have hd' : HasDerivAt f (deriv f 0) (-(0 : ℝ)) := by simpa using hd
  have hn := hd'.comp 0 (hasDerivAt_neg (0 : ℝ))
  change HasDerivAt (fun x : ℝ ↦ f (-x)) (deriv f 0 * (-1)) 0 at hn
  rw [he] at hn
  have hh := hn.unique hd
  simpa using (show deriv f 0 = 0 by linarith [hh])

theorem weightedCorrelation_zero (A : ℝ) (hA : 1 ≤ A) :
    weightedCorrelation A 0 = 1 := by
  simp [weightedCorrelation, actual_correlation_at_zero A hA]

theorem weightedCorrelation_deriv_zero (A : ℝ) (hA : 1 ≤ A) :
    deriv (weightedCorrelation A) 0 = 3 / 2 := by
  have hd := ((sourceCorrelation_contDiff A (by linarith)).differentiable
    (by norm_num) 0).hasDerivAt
  have he : HasDerivAt (fun x : ℝ ↦ Real.exp (3 * x / 2)) (3 / 2) 0 := by
    convert (((hasDerivAt_id (0 : ℝ)).const_mul 3).div_const 2).exp using 1 <;> norm_num
  have hm := hd.mul he
  unfold weightedCorrelation
  convert hm.deriv using 1
  · rfl
  · simp [actual_correlation_at_zero A hA, actual_correlation_deriv_zero A hA]

/-- Exact first-order remainder, with an ordinary second derivative. -/
theorem weightedCorrelation_peano (A v : ℝ) (hA : 1 ≤ A) :
    (∫ u in (0 : ℝ)..v, (v - u) * deriv (deriv (weightedCorrelation A)) u) =
      weightedCorrelation A v - 1 - v * (3 / 2) := by
  have hc := weightedCorrelation_contDiff_two A hA
  have hd : ContDiff ℝ 1 (deriv (weightedCorrelation A)) :=
    hc.deriv'
  have hi := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (a := (0 : ℝ)) (b := v)
    (u := fun u : ℝ ↦ v - u) (u' := fun _ ↦ (-1 : ℝ))
    (v := deriv (weightedCorrelation A)) (v' := deriv (deriv (weightedCorrelation A)))
    (fun u _ ↦ by
      convert (hasDerivAt_const u v).sub (hasDerivAt_id u) using 1 <;> first | rfl | simp)
    (fun u _ ↦ (hd.differentiable (by norm_num) u).hasDerivAt)
    (continuous_const.intervalIntegrable 0 v)
    ((hd.continuous_deriv (by norm_num)).intervalIntegrable 0 v)
  have hf := intervalIntegral.integral_deriv_eq_sub
    (fun u _ ↦ hc.differentiable (by norm_num) u)
    ((hc.continuous_deriv (by norm_num)).intervalIntegrable 0 v)
  simp only [sub_self, zero_mul, sub_zero, weightedCorrelation_deriv_zero A hA,
    neg_one_mul, intervalIntegral.integral_neg, hf, weightedCorrelation_zero A hA] at hi
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualWeightedPeano
