import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.LinearAlgebra.FiniteSpectralHeat
example (M : Model (Fin 1) (Fin 1 → ℝ)) (z : ℝ)
    (hz : ∀ i, M.eigenvalue i ≠ z) :
    (M.shiftedOperator z).comp (M.resolvent z) = LinearMap.id :=
  M.shiftedOperator_comp_resolvent z hz
example (M : Model (Fin 1) (Fin 1 → ℝ)) (z : ℝ)
    (hz : ∀ i, M.eigenvalue i ≠ z) :
    (M.resolvent z).comp (M.shiftedOperator z) = LinearMap.id :=
  M.resolvent_comp_shiftedOperator z hz
