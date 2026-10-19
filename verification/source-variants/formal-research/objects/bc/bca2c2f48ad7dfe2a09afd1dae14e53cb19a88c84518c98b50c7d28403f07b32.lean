import FormalResearch.RiemannHypothesis.SourceComparison.MobiusEndpointBudget
namespace FormalResearch.RiemannHypothesis.SourceComparison.TruncatedDivisorResidual
noncomputable section
def truncatedDivisorCoefficient (X : ℕ) (ε : ℝ) (n : ℕ) : ℝ :=
  ∑ d ∈ n.divisors.filter (fun d => d ≤ X),
    (ArithmeticFunction.moebius d : ℝ) * Real.exp (-ε * Real.log (d : ℝ))
end
end FormalResearch.RiemannHypothesis.SourceComparison.TruncatedDivisorResidual
