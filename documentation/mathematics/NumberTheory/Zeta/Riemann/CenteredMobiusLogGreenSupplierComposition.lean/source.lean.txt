/-
Copyright (c) 2026 grwtsk contributors. MIT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
This module composes only structural identities and explicit arithmetic premises.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenFiniteSourceIBP
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenThreeSupplier
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- Structural Parseval identity for the exact thin arithmetic coordinate. -/
theorem thinGreenEnergy_eq_historicalGreenEnergy
    {X : ℕ} (hX : 2 ≤ X) :
    thinGreenEnergy X = greenEnergy X := by
  exact thinGreenEnergy_eq_greenEnergy_of_coeff hX
    (thinHistoricalGreenResidual_memLp X)
    (fun k => thinGreenArithmeticFourierCoordinate_eq_historicalCoeff
      (by omega : 1 ≤ X) k)

/-- The exact dyadic scale is always in the range required by the deterministic
full-frame comparison. -/
theorem historicalDyadicScale_ge_two (j : ℕ) :
    2 ≤ dyadicScale j := by
  unfold dyadicScale
  omega

/-- The three explicit arithmetic suppliers imply the actual historical
AllDyadicEnergyBound. No RH conclusion is drawn here. -/
theorem allDyadicEnergyBound_of_centered_and_boundaries
    (hM : AllDyadicCenteredMobiusLogEnergyBound dyadicScale)
    (h0 : AllDyadicBoundarySquareBound dyadicScale mass0)
    (h1 : AllDyadicBoundarySquareBound dyadicScale mass1) :
    AllDyadicEnergyBound := by
  apply allDyadicEnergyBound_of_thin_and_parseval
    (fun X hX => thinGreenEnergy_eq_historicalGreenEnergy hX)
  exact thinAllDyadicAugmentedEnergyBound_of_three_suppliers
    dyadicScale mass0 mass1 historicalDyadicScale_ge_two hM h0 h1

/-- Exact decomposition of the remaining arithmetic frontier into named
premises. This is an equivalence only in the forward packaging direction:
the conjunction is sufficient, not claimed necessary. -/
def CenteredMobiusLogThreeSupplierPackage : Prop :=
  AllDyadicCenteredMobiusLogEnergyBound dyadicScale ∧
  AllDyadicBoundarySquareBound dyadicScale mass0 ∧
  AllDyadicBoundarySquareBound dyadicScale mass1

theorem allDyadicEnergyBound_of_threeSupplierPackage
    (h : CenteredMobiusLogThreeSupplierPackage) :
    AllDyadicEnergyBound :=
  allDyadicEnergyBound_of_centered_and_boundaries h.1 h.2.1 h.2.2

end GRWTSK.RiemannHypothesis
