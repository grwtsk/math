import FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTPairingBound

noncomputable section

open FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTPairingBound
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.RiemannHypothesis.SourceComparison.CorrelationDifferenceMoments
open MeasureTheory Set Filter

example : correlationBudget = Real.sqrt (65 / 3) + 1 / 2 := rfl
example : 0 ≤ correlationBudget := correlationBudget_nonneg
example (A t : ℝ) (hA : 1 ≤ A) :
    |correlationDifference A t| ≤ correlationBudget := correlationDifference_uniform A t hA
example (A : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable (fun t ↦ errorProfile t * sourceWeight explicitSecondDerivative A t)
      volume lowerEndpoint (2 * A) := sourcePairing_intervalIntegrable A hA
example (a b : ℝ) :
    (∫ t in a..b, Real.exp (t / 2)) = 2 * Real.exp (b / 2) - 2 * Real.exp (a / 2) :=
  exp_half_intervalIntegral a b
example (A t D : ℝ) (hA : 1 ≤ A) (hD : 0 ≤ D)
    (he : |errorProfile t| ≤ D * Real.exp t) :
    |errorProfile t * sourceWeight explicitSecondDerivative A t| ≤
      D * correlationBudget * Real.exp (t / 2) := source_integrand_bound A t D hA hD he
example (A a b D : ℝ) (hA : 1 ≤ A) (hab : a ≤ b)
    (hD : 0 ≤ D) (he : ∀ t ∈ Icc a b, |errorProfile t| ≤ D * Real.exp t) :
    |∫ t in a..b, errorProfile t * sourceWeight explicitSecondDerivative A t| ≤
      2 * D * correlationBudget * Real.exp (b / 2) := source_interval_bound A a b D hA hab hD he
example (A C c : ℝ) (hA : 1 ≤ A) (hstart : lowerEndpoint ≤ A)
    (hC : 0 ≤ C)
    (hglobal : ∀ t ∈ Icc lowerEndpoint A, |errorProfile t| ≤ C * Real.exp t)
    (hpnt : ∀ t ∈ Icc A (2 * A),
      |errorProfile t| ≤ C * Real.exp t * Real.exp (-c * A ^ ((1 : ℝ) / 10))) :
    |signedPairing explicitSecondDerivative A| ≤
      2 * C * correlationBudget * (Real.exp (A / 2) +
        Real.exp A * Real.exp (-c * A ^ ((1 : ℝ) / 10))) :=
  signedPairing_bound A C c hA hstart hC hglobal hpnt
example : ∃ C ≥ 0, ∃ c > 0, ∀ᶠ A : ℝ in atTop,
      |signedPairing explicitSecondDerivative A| ≤
        C * (Real.exp (A / 2) + Real.exp A * Real.exp (-c * A ^ ((1 : ℝ) / 10))) :=
  signedPairing_eventual_bound
