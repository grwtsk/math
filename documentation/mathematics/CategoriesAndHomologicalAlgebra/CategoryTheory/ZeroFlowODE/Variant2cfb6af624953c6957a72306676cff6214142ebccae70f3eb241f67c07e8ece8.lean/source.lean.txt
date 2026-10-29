import Folder.ResearchTopos.RodgersTaoHeat

/-!
# Folder.ResearchTopos.ZeroFlowODE

Radiation role: research-boundary
BinaryMatrix spine: This module gives a finite toy zero-flow configuration, not a BinaryMatrix theorem.
Ontology: research_topos.zero_flow_ode
Pivot role: spectral
Zero typology: debruijn-newman
Contract boundary: toy-model
Composite stack role: research-topos
-/

namespace Folder
namespace ResearchTopos

structure FiniteZeroConfiguration where
  n : Nat
  pos : Fin n → ℝ
  strictlyIncreasing :
    ∀ i j : Fin n, i.val < j.val → pos i < pos j

noncomputable def pairwiseRepulsionVelocity
    (X : FiniteZeroConfiguration)
    (k : Fin X.n) : ℝ :=
  ∑ j : Fin X.n, if _ : j = k then 0 else 2 / (X.pos k - X.pos j)

structure ZeroFlowStep where
  before : FiniteZeroConfiguration
  after : FiniteZeroConfiguration
  dt : ℝ
  updateLaw : Prop

structure ArithmeticProgressionConfiguration
    (X : FiniteZeroConfiguration) where
  spacing : ℝ
  spacing_pos : 0 < spacing
  arithmetic :
    ∀ i j : Fin X.n,
      X.pos j - X.pos i =
        (j.val : ℝ) * spacing - (i.val : ℝ) * spacing

theorem finite_zero_config_ordered
    (X : FiniteZeroConfiguration)
    {i j : Fin X.n}
    (h : i.val < j.val) :
    X.pos i < X.pos j :=
  X.strictlyIncreasing i j h

end ResearchTopos
end Folder
