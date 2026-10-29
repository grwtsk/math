/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Moebius.GramDiagonalBound
import GRWTSK.NumberTheory.Moebius.DirichletLaplaceIdentity
import GRWTSK.NumberTheory.Moebius.LaplaceHolomorphy
import GRWTSK.NumberTheory.Zeta.Riemann.LaplaceCriterion

/-!
# Energy-only conditional return to the literal Riemann hypothesis

The exact closed-cutoff finite identity, nonsingular diagonal comparison,
Dirichlet/Fubini source identity and signed Laplace analyticity are proved
in the imports. The sole arithmetic premise of the terminal theorem is
`PickupCrossPoly`. There is no witness of that proposition here.

This reconstruction of existing CCC mathematics is a local candidate.
It grants no upstream acceptance, new arithmetic bound or unconditional RH proof.
-/

noncomputable section
namespace GRWTSK.RiemannHypothesis.CCC

/-- Actual source identity and diagonal bound pay the growth-class equivalence. -/
theorem pickupCrossPoly_iff_pickupEnergyPoly : PickupCrossPoly ↔ PickupEnergyPoly :=
  cross_poly_iff_energy_poly (fun _ hT ↦ pickupEnergy_eq_diagonal_add_cross hT)
    (fun _ hT ↦ pickupDiagonal_quadratic_bound hT)

/-- The initial reciprocal-zeta identity is a proved source identity, not a new premise. -/
theorem pickup_initial_transform_identity :
    ∀ z : ℂ, 1 / 2 < z.re → signedPickupLaplace z =
      1 / (z * (z + 1 / 2) * riemannZeta (z + 1 / 2)) :=
  fun _ hz ↦ PickupInitialTransform.initial_transform hz

/-- Polynomial integrated energy supplies the full right-half-plane signed holomorphy. -/
theorem pickup_energy_poly_signed_laplace_holomorphic (hE : PickupEnergyPoly) :
    DifferentiableOn ℂ signedPickupLaplace pickupLaplaceDomain :=
  differentiableOn_signedPickupLaplace_of_energy_poly wholePickup_continuous hE

/-- Conditional RH consumer retaining the exact open polynomial energy premise. -/
theorem riemannHypothesis_of_pickupEnergyPoly (hE : PickupEnergyPoly) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_holomorphic_signedPickupLaplace
    (pickup_energy_poly_signed_laplace_holomorphic hE) pickup_initial_transform_identity

/-- Conditional RH consumer: P04 is the only mathematical premise and remains open. -/
theorem riemannHypothesis_of_pickupCrossPoly (hX : PickupCrossPoly) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_pickupEnergyPoly (pickupCrossPoly_iff_pickupEnergyPoly.mp hX)

/-- Positivity pays a lower cross-energy bound; the polynomial upper bound is still open. -/
theorem pickupCross_lower {T : ℝ} (hT : 0 ≤ T) :
    -(2 * T ^ 2) ≤ pickupCross T := by
  have he := pickupEnergy_eq_diagonal_add_cross hT
  have hn := pickupEnergy_nonneg hT
  have hd := (pickupDiagonal_quadratic_bound hT).2
  linarith

end GRWTSK.RiemannHypothesis.CCC
