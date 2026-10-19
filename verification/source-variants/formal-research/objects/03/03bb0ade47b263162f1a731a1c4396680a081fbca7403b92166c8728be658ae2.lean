import SourceMixedCurvatureCross

set_option autoImplicit false

open MeasureTheory
open scoped BigOperators
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity

example
    {ι κ : Type*} (s : Finset ι) (t : Finset κ) (a x : ι → ℝ) (b y : κ → ℝ)
    {A : ℝ} (hA : 0 < A) :
    (∑ i ∈ s, ∑ j ∈ t, a i * b j *
      (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (x i - y j) -
        sourceCorrelation explicitSecondDerivative A (x i - y j) / 4)) =
      -(∫ v : ℝ,
        (∑ i ∈ s, a i * deriv (normalizedTest explicitSecondDerivative A) (v + x i)) *
          (∑ j ∈ t, b j * deriv (normalizedTest explicitSecondDerivative A) (v + y j))) -
        (1 / 4 : ℝ) * (∫ v : ℝ,
          (∑ i ∈ s, a i * normalizedTest explicitSecondDerivative A (v + x i)) *
            (∑ j ∈ t, b j * normalizedTest explicitSecondDerivative A (v + y j))) :=
  FormalResearch.RiemannHypothesis.SourceMixedCurvatureCross.actual_mixed_curvature_finite_cross_eq_neg_products s t a x b y hA

#check FormalResearch.RiemannHypothesis.SourceMixedCurvatureCross.actual_mixed_curvature_finite_cross_eq_neg_products
#print axioms FormalResearch.RiemannHypothesis.SourceMixedCurvatureCross.actual_mixed_curvature_finite_cross_eq_neg_products

set_option pp.proofs true
set_option pp.all true
set_option pp.maxSteps 1000000
set_option pp.fullNames false
#print FormalResearch.RiemannHypothesis.SourceMixedCurvatureCross.actual_mixed_curvature_finite_cross_eq_neg_products

set_option pp.fullNames true
#print FormalResearch.RiemannHypothesis.SourceMixedCurvatureCross.actual_mixed_curvature_finite_cross_eq_neg_products
