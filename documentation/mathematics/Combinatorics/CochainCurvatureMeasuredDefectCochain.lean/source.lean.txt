import Mathematics.SemiLocalDefect.BoundaryCochain

/-!
# Computed cochains and curvature budgets

Approximate connector increments remain measurements until projected onto an
exact potential.  Closedness, measurement, and positivity residuals stay
separate.
-/

namespace Mathematics.SemiLocalDefect

universe uPrime

structure MeasuredDefectCochain
    (model : OperatorModel)
    (Prime : Type uPrime)
    [DecidableEq Prime] where
  increment :
    Finset Prime → Prime → model.Operator
  measurementDigest : ReconstructionDigest

def MeasuredDefectCochain.curvature
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (cochain :
      MeasuredDefectCochain model Prime)
    (cut : Finset Prime)
    (left right : Prime) :
    model.Operator :=
  cochain.increment cut left +
    cochain.increment (insert left cut) right -
    cochain.increment cut right -
    cochain.increment (insert right cut) left

structure CochainCurvatureBudget
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (cochain :
      MeasuredDefectCochain model Prime) where
  size : model.Operator → ℝ
  size_nonnegative :
    ∀ operator : model.Operator,
      0 ≤ size operator
  bound :
    Finset Prime → Prime → Prime → ℝ
  bound_nonnegative :
    ∀ (cut : Finset Prime)
      (left right : Prime),
      0 ≤ bound cut left right
  curvature_bounded :
    ∀ (cut : Finset Prime)
      (left right : Prime),
      size
          (MeasuredDefectCochain.curvature
            (model := model)
            (Prime := Prime)
            cochain cut left right) ≤
        (bound cut left right : ℝ)

end Mathematics.SemiLocalDefect
