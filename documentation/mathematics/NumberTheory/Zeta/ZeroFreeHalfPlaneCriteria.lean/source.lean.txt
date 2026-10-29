/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Moebius.PolynomialLaplaceHolomorphy
import GRWTSK.NumberTheory.Moebius.LaplaceDirichletSeries
import GRWTSK.NumberTheory.Moebius.MeanSquareLaplaceHolomorphy
import GRWTSK.NumberTheory.Zeta.PoleRegularization
import GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry

/-!
# source-faithful conditional absolute-pickup RH consumer

The actual pickup transform's initial identity is proved unconditionally on
Re z > 1/2. WholePickupPoly or EnergyPoly supplies holomorphy on Re z > 0. Actual pole
regularization and the identity theorem exclude right-side zeros; the proved
functional-equation zero reflection supplies the other side. This conditional
theorem constructs no growth witness, supplier witness, or unconditional RH
proof. It neither assumes nor needs classical Mertens decay.

Research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticPickupRHConsumer

open ArithmeticPickupSource ArithmeticPickupLaplaceGrowth
open ArithmeticPickupLaplaceInfinite ZetaPoleRegularization
open ArithmeticPickupEnergy ArithmeticPickupEnergyGrowth ArithmeticPickupLaplaceEnergy
open GRWTSK.RiemannHypothesis

noncomputable section

/-- The two independently defined integrands coincide algebraically. -/
theorem original_pickup_initial_identity : InitialReciprocalIdentity pickupLaplace := by
  intro z hz
  simpa only [pickupLaplace, pickupLaplaceIntegrand, neg_mul] using
    original_pickup_laplace_zeta_identity hz

/-- Conditional analytic return for the actual original transform. -/
theorem original_laplace_holomorphic_excludes_right_zeros
    (holomorphic : DifferentiableOn ℂ pickupLaplace {z : ℂ | 0 < z.re})
    {s : ℂ} (hs : (1 / 2 : ℝ) < s.re) (hsOne : s ≠ 1) : riemannZeta s ≠ 0 := by
  exact zeta_ne_zero_right_of_holomorphic_reciprocal
    holomorphic original_pickup_initial_identity hs hsOne

/-- Exact Mathlib nontrivial-zero exclusions and actual reflection are retained. -/
theorem original_laplace_holomorphic_implies_rh
    (holomorphic : DifferentiableOn ℂ pickupLaplace {z : ℂ | 0 < z.re}) :
    _root_.RiemannHypothesis := by
  intro s zero nontrivial notOne
  have original : NontrivialZetaZero s := ⟨zero, nontrivial, notOne⟩
  have upper : s.re ≤ (1 / 2 : ℝ) := by
    by_contra! strict
    exact original_laplace_holomorphic_excludes_right_zeros holomorphic strict notOne zero
  have lower : (1 / 2 : ℝ) ≤ s.re := by
    by_contra! strict
    have reflected := original.reflect
    have right : (1 / 2 : ℝ) < (zeroReflect s).re := by
      simp only [zeroReflect, Complex.sub_re, Complex.one_re]
      linarith
    exact original_laplace_holomorphic_excludes_right_zeros
      holomorphic right reflected.2.2 reflected.1
  exact le_antisymm upper lower

/-- The only arithmetic growth input is the actual open whole-pickup proposition. -/
theorem whole_pickup_poly_excludes_right_zeros (growth : WholePickupPoly)
    {s : ℂ} (hs : (1 / 2 : ℝ) < s.re) (hsOne : s ≠ 1) : riemannZeta s ≠ 0 :=
  original_laplace_holomorphic_excludes_right_zeros
    (whole_pickup_poly_laplace_holomorphic growth) hs hsOne

theorem whole_pickup_poly_implies_rh (growth : WholePickupPoly) : _root_.RiemannHypothesis :=
  original_laplace_holomorphic_implies_rh (whole_pickup_poly_laplace_holomorphic growth)

/-- Cumulative energy alone suffices; pointwise amplitude return is not an input. -/
theorem energy_poly_implies_rh (growth : EnergyPoly) : _root_.RiemannHypothesis :=
  original_laplace_holomorphic_implies_rh (energy_poly_laplace_holomorphic growth)

/-- This uses the proved native diagonal, not an assumed source-Gram adapter. -/
theorem cross_poly_implies_rh (budget : CrossPoly) : _root_.RiemannHypothesis :=
  energy_poly_implies_rh (cross_poly_implies_energy_poly budget)

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticPickupRHConsumer
