import FormalResearch.RiemannHypothesis.SourcePositivePeanoPrimitive
import FormalResearch.RiemannHypothesis.SourcePrimitiveBumpProfile
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation

#check FormalResearch.RiemannHypothesis.SourcePositivePeanoPrimitive.primitiveCorrelationZero_fourth_deriv
#print axioms FormalResearch.RiemannHypothesis.SourcePositivePeanoPrimitive.primitiveCorrelationZero_fourth_deriv
#check FormalResearch.RiemannHypothesis.SourcePositivePeanoPrimitive.sourcePeanoPrimitive_second_deriv
#print axioms FormalResearch.RiemannHypothesis.SourcePositivePeanoPrimitive.sourcePeanoPrimitive_second_deriv
#check FormalResearch.RiemannHypothesis.SourcePositivePeanoPrimitive.sourcePeanoPrimitive_contDiff_two
#print axioms FormalResearch.RiemannHypothesis.SourcePositivePeanoPrimitive.sourcePeanoPrimitive_contDiff_two
#check FormalResearch.RiemannHypothesis.SourcePrimitiveBumpProfile.sourceBump_overlap_integrable
#print axioms FormalResearch.RiemannHypothesis.SourcePrimitiveBumpProfile.sourceBump_overlap_integrable
#check FormalResearch.RiemannHypothesis.SourcePrimitiveBumpProfile.primitiveCorrelationZero_eq_profile
#print axioms FormalResearch.RiemannHypothesis.SourcePrimitiveBumpProfile.primitiveCorrelationZero_eq_profile

noncomputable section
namespace FormalResearch.RiemannHypothesis.PositivePrimitiveReview
open MeasureTheory Function
open SourcePrimitiveBumpProfile SourceBumpAutocorrelation SourcePositivePeanoPrimitive
open SourcePrimitivePrimeInteraction SourcePrimitiveCorrelationCurvature SourceCausalEnergy SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateCorrelation

example {A : ℝ} (hA : 1 ≤ A) :
    deriv (deriv (sourcePeanoPrimitive A)) 0 = 1 := by
  rw [sourcePeanoPrimitive_second_deriv (by linarith), actual_correlation_at_zero A hA]
  norm_num

example {A : ℝ} (hA : 0 < A) : primitiveCorrelationZero A (2*A) = 0 := by
  rw [primitiveCorrelationZero_eq_profile hA (by linarith) le_rfl]
  have he : (2*A)/A = (2:ℝ) := by field_simp
  rw [he]
  norm_num [overlapProfile]

private theorem zero_derivative {A : ℝ} (hA : 0 < A) :
    deriv (primitiveCorrelationZero A) 0 = 0 := by
  have heven : Function.Even (primitiveCorrelationZero A) := by
    intro t
    unfold primitiveCorrelationZero
    have h := integral_sub_right_eq_self (μ := volume)
      (fun x => normalizedPrimitiveBump A x * normalizedPrimitiveBump A (x - -t)) t
    simpa only [sub_neg_eq_add, sub_add_cancel, mul_comm] using h.symm
  have hc := ((primitiveCorrelationZero_contDiff_two hA).differentiable (by norm_num) 0).hasDerivAt
  have hn : HasDerivAt (fun t => primitiveCorrelationZero A (-t))
      (-deriv (primitiveCorrelationZero A) 0) 0 := by
    simpa only [neg_zero, mul_neg_one, Function.comp_def] using
      hc.comp 0 (hasDerivAt_neg (0 : ℝ))
  have he : (fun t => primitiveCorrelationZero A (-t)) = primitiveCorrelationZero A :=
    funext heven
  rw [he] at hn
  have hu := hc.unique hn
  linarith

example : sourcePeanoPrimitive (1:ℝ) 0 = -(172/2541 : ℝ) := by
  unfold sourcePeanoPrimitive
  rw [zero_derivative (by norm_num), primitiveCorrelationZero_second_deriv_eq_neg_one (by norm_num)]
  unfold primitiveCorrelationOne primitiveCorrelationZero
  simp only [sub_zero, ← pow_two]
  rw [normalizedPrimitiveBump_deriv_square_integral (by norm_num),
    normalizedPrimitiveBump_square_integral (by norm_num)]
  norm_num [sourceNormalization]

end FormalResearch.RiemannHypothesis.PositivePrimitiveReview
