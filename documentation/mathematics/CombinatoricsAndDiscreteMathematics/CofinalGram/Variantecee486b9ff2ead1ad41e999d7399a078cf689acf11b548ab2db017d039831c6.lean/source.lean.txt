import Mathematics.SemiLocalDefect.Sonin.FiniteHorizonGram

/-!
# Cofinal Sonin Gram stability

Convergence topology and nondegeneracy are explicit certificate data.
-/

namespace Mathematics.SemiLocalDefect.Sonin

universe uPrime uSpace

structure CofinalPrimeHorizon
    (Prime : Type uPrime)
    [DecidableEq Prime] where
  cut : Nat → Finset Prime
  monotone :
    ∀ index,
      cut index ⊆ cut (index + 1)
  cofinal :
    ∀ prime,
      ∃ threshold,
        ∀ index,
          threshold ≤ index →
          prime ∈ cut index

inductive GramConvergenceMode
  | operatorNorm
  | strongOperator
  | packetTrace
deriving DecidableEq, Repr

structure CofinalSoninGramStability
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {family : SoninSpaceFamily Prime}
    {connectors : SoninConnectorSystem family}
    {range :
      FiniteHorizonRangeProjection
        model connectors}
    (grams :
      FiniteHorizonGramFamily
        model connectors range)
    (horizons :
      CofinalPrimeHorizon Prime) where
  limitGram : Finset Prime → model.Operator
  mode : GramConvergenceMode
  converges : Prop
  convergesProof : converges
  limitSelfAdjoint :
    ∀ cut,
      model.SelfAdjoint (limitGram cut)
  limitNonnegative :
    ∀ cut,
      model.Nonnegative (limitGram cut)
  uniformlyNondegenerate : Prop
  uniformlyNondegenerateProof :
    uniformlyNondegenerate

end Mathematics.SemiLocalDefect.Sonin
