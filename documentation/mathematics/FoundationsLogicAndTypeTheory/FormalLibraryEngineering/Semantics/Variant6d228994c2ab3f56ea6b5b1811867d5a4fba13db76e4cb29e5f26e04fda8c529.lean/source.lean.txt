import Boolean.Formula.Eval

namespace Boolean

universe u

namespace Formula

variable {α : Type u}

/-- Satisfaction under a valuation. -/
def Satisfies (ν : Valuation α) (p : Formula α) : Prop :=
  eval ν p = true

/-- A formula true under every valuation. -/
def Valid (p : Formula α) : Prop :=
  ∀ ν : Valuation α, eval ν p = true

/-- A formula true under at least one valuation. -/
def Satisfiable (p : Formula α) : Prop :=
  ∃ ν : Valuation α, eval ν p = true

/-- A formula false under every valuation. -/
def Unsatisfiable (p : Formula α) : Prop :=
  ∀ ν : Valuation α, eval ν p = false

/-- Semantic entailment. -/
def Entails (p q : Formula α) : Prop :=
  ∀ ν : Valuation α, eval ν p = true → eval ν q = true

/-- Semantic equivalence. -/
def Equivalent (p q : Formula α) : Prop :=
  ∀ ν : Valuation α, eval ν p = eval ν q

end Formula

end Boolean
