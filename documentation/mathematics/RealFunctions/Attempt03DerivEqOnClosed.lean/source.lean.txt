import FormalResearch.RiemannHypothesis.SourcePeanoProfileTransport

/-!
Exact original source recovery at the physical endpoint.
Direction: grwtsk contributors. Formal construction: this Codex arithmetic analyst.
All filters, normalization, and closed half-support endpoints remain literal.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourcePhysicalEndpointConvolution

open Set MeasureTheory SourcePairing SourceBumpAutocorrelation
open SourcePrimitivePrimeInteraction SourcePrimitiveCorrelationCurvature
open SourcePrimitiveBumpProfile SourcePeanoProfileTransport SourcePositivePeanoPrimitive
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

private theorem deriv_eq_on_closed {f g : ℝ → ℝ} {a b : ℝ} (hab : a < b)
    (hf : Differentiable ℝ f) (hg : Differentiable ℝ g) (he : EqOn f g (Icc a b)) :
    EqOn (deriv f) (deriv g) (Icc a b) := by
  intro x hx
  have hu := uniqueDiffOn_Icc hab x hx
  rw [← (hf x).hasDerivAt.hasDerivWithinAt.derivWithin hu,
    ← (hg x).hasDerivAt.hasDerivWithinAt.derivWithin hu]
  exact derivWithin_congr he (he hx)

private theorem primitiveCorrelationZero_third_deriv_eq_normalizedOverlapProfile
    {A : ℝ} (hA : 0 < A) :
    EqOn (deriv (deriv (deriv (primitiveCorrelationZero A))))
      (deriv (deriv (deriv (normalizedOverlapProfile A)))) (Icc 0 (2 * A)) := by
  apply deriv_eq_on_closed (by linarith)
  · have hF2 : ContDiff ℝ 2 (deriv (deriv (primitiveCorrelationZero A))) :=
      (primitiveCorrelationZero_contDiff_four hA).deriv'.deriv'
    exact hF2.differentiable (by norm_num)
  · have hG : ContDiff ℝ 3 (normalizedOverlapProfile A) := by
      unfold normalizedOverlapProfile overlapProfile overlapP0
      fun_prop
    have hG2 : ContDiff ℝ 1 (deriv (deriv (normalizedOverlapProfile A))) :=
      hG.deriv'.deriv'
    exact hG2.differentiable (by norm_num)
  · exact primitiveCorrelationZero_second_deriv_eq_normalizedOverlapProfile hA

theorem primitiveCorrelationZero_fourth_deriv_eq_normalizedOverlapProfile
    {A : ℝ} (hA : 0 < A) :
    EqOn (deriv (deriv (deriv (deriv (primitiveCorrelationZero A)))))
      (deriv (deriv (deriv (deriv (normalizedOverlapProfile A))))) (Icc 0 (2 * A)) := by
  apply deriv_eq_on_closed (by linarith)
  · have hF3 : ContDiff ℝ 1 (deriv (deriv (deriv (primitiveCorrelationZero A)))) :=
      (primitiveCorrelationZero_contDiff_four hA).deriv'.deriv'.deriv'
    exact hF3.differentiable (by norm_num)
  · have hG : ContDiff ℝ 4 (normalizedOverlapProfile A) := by
      unfold normalizedOverlapProfile overlapProfile overlapP0
      fun_prop
    have hG3 : ContDiff ℝ 1 (deriv (deriv (deriv (normalizedOverlapProfile A)))) :=
      hG.deriv'.deriv'.deriv'
    exact hG3.differentiable (by norm_num)
  · exact primitiveCorrelationZero_third_deriv_eq_normalizedOverlapProfile hA

theorem sourceCorrelation_eq_normalizedOverlap_filter {A t : ℝ} (hA : 0 < A)
    (ht0 : 0 ≤ t) (ht2 : t ≤ 2 * A) :
    sourceCorrelation explicitSecondDerivative A t =
      deriv (deriv (deriv (deriv (normalizedOverlapProfile A)))) t -
        deriv (deriv (normalizedOverlapProfile A)) t / 2 +
        normalizedOverlapProfile A t / 16 := by
  rw [sourceCorrelation_eq_primitive_filter hA,
    ← primitiveCorrelationZero_fourth_deriv hA,
    primitiveCorrelationZero_fourth_deriv_eq_normalizedOverlapProfile hA ⟨ht0, ht2⟩,
    ← neg_neg (primitiveCorrelationOne A t),
    ← primitiveCorrelationZero_second_deriv_eq_neg_one hA,
    primitiveCorrelationZero_second_deriv_eq_normalizedOverlapProfile hA ⟨ht0, ht2⟩,
    primitiveCorrelationZero_eq_profile hA ht0 ht2]
  unfold normalizedOverlapProfile
  ring

end FormalResearch.RiemannHypothesis.SourcePhysicalEndpointConvolution
