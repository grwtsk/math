/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Moebius.EnergyGrowthEquivalences

/-!
# CCC exact native energy-growth class

This isolates the signed cross upper budget from the pointwise return. The
actual native diagonal is already proved polynomial. No growth witness,
amplitude return or RH conclusion is supplied.

Research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticPickupEnergyGrowth

open ArithmeticPickupSource ArithmeticPickupEnergy ArithmeticPickupGram

noncomputable section

/-- OPEN polynomial mean-square growth of the original completed pickup. -/
def EnergyPoly : Prop :=
  ∃ C q : ℝ, 0 ≤ C ∧ 0 ≤ q ∧
    ∀ T : ℝ, 0 ≤ T → energy T ≤ C * (1 + T) ^ q

theorem energy_bound_of_cross_bound {C_X r : ℝ} (hCX : 0 ≤ C_X)
    (bound : ∀ T : ℝ, 0 ≤ T → cross T ≤ C_X * (1 + T) ^ r)
    {T : ℝ} (hT : 0 ≤ T) :
    energy T ≤ (C_X + 2) * (1 + T) ^ (max r (2 : ℝ)) := by
  have hbase : 1 ≤ 1 + T := by linarith
  have hdiagPower : (1 + T) ^ 2 ≤ (1 + T) ^ (max r (2 : ℝ)) := by
    simpa only [Real.rpow_two] using
      Real.rpow_le_rpow_of_exponent_le hbase (le_max_right r (2 : ℝ))
  have hcrossPower : (1 + T) ^ r ≤ (1 + T) ^ (max r (2 : ℝ)) :=
    Real.rpow_le_rpow_of_exponent_le hbase (le_max_left _ _)
  rw [energy_eq_diagonal_add_cross]
  calc
    diagonal T + cross T ≤ 2 * (1 + T) ^ 2 + C_X * (1 + T) ^ r :=
      add_le_add (ArithmeticPickupDiagonal.diagonal_upper_bound hT) (bound T hT)
    _ ≤ 2 * (1 + T) ^ (max r (2 : ℝ)) + C_X * (1 + T) ^ (max r (2 : ℝ)) :=
      add_le_add (mul_le_mul_of_nonneg_left hdiagPower zero_le_two)
        (mul_le_mul_of_nonneg_left hcrossPower hCX)
    _ = (C_X + 2) * (1 + T) ^ (max r (2 : ℝ)) := by ring

theorem cross_poly_implies_energy_poly (budget : CrossPoly) : EnergyPoly := by
  rcases budget with ⟨C_X, r, hCX, _hr, bound⟩
  refine ⟨C_X + 2, max r 2, by linarith,
    (by norm_num : (0 : ℝ) ≤ 2).trans (le_max_right _ _), ?_⟩
  exact fun _ hT ↦ energy_bound_of_cross_bound hCX bound hT

theorem energy_poly_implies_cross_poly (growth : EnergyPoly) : CrossPoly := by
  rcases growth with ⟨C, q, hC, hq, bound⟩
  refine ⟨C, q, hC, hq, ?_⟩
  intro T hT
  have hdiag := actual_diagonal_nonnegative T
  have balance := energy_eq_diagonal_add_cross T
  exact (by linarith : cross T ≤ energy T).trans (bound T hT)

theorem cross_poly_iff_energy_poly : CrossPoly ↔ EnergyPoly :=
  ⟨cross_poly_implies_energy_poly, energy_poly_implies_cross_poly⟩

theorem whole_pickup_poly_implies_energy_poly (growth : WholePickupPoly) : EnergyPoly :=
  cross_poly_implies_energy_poly
    (ArithmeticPickupBudget.whole_pickup_poly_implies_budgets growth).1

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticPickupEnergyGrowth
