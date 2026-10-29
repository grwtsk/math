import Mathematics.Relaxation.Step

/-! # Certified finite relaxation operators -/

namespace Mathematics.Relaxation

/--
The operator is deterministic by being a function.  Every nonfixed step
strictly lowers a natural measure and preserves the immutable source boundary
and all declared hard constraints.
-/
structure Operator where
  operatorId : StableId
  constraints : List HardConstraint
  energy : Energy
  step : State → State
  source_preserved :
    ∀ state,
      (step state).ecosystemDigest = state.ecosystemDigest ∧
      (step state).workPackage = state.workPackage
  constraints_preserved :
    ∀ state,
      SatisfiesAll constraints state →
      SatisfiesAll constraints (step state)
  strict_descent :
    ∀ state,
      step state ≠ state →
      energy.measure (step state) < energy.measure state
  operatorDigest : Digest

namespace Operator

/-- One step cannot modify the source ecosystem or work-package boundary. -/
theorem preserves_scope
    (operator : Operator)
    (state : State) :
    (operator.step state).ecosystemDigest = state.ecosystemDigest ∧
      (operator.step state).workPackage = state.workPackage :=
  operator.source_preserved state

end Operator

end Mathematics.Relaxation
