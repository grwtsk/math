/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenCoordinateEnergyCriterion
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Necessary low-coordinate decay for the explicit arithmetic witness

The full finite arithmetic-coordinate stage is a sum of nonnegative pieces.
Therefore the all-scale RH-G01 coordinate bound immediately forces the same
X^(-1+eta) decay on each retained endpoint moment and on every fixed Fourier
mode that occurs in a finite head.

This module records the first unavoidable channels explicitly:

* mass0^2;
* mass1^2;
* the k=-1 weighted-DFT coordinate;
* the k=+1 weighted-DFT coordinate.

These are necessary consequences only. No such decay is proved here.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
LOW_COORDINATE_DECAY_NECESSARY.
-/

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

theorem mass0_sq_le_arithmeticCoordinateStage
    (X N : ℕ) :
    (mass0 X)^2 ≤ fullGreenArithmeticCoordinateStage X N := by
  unfold fullGreenArithmeticCoordinateStage
  have hhead : 0 ≤ greenArithmeticFourierHead X N := by
    unfold greenArithmeticFourierHead
    exact Finset.sum_nonneg (fun n hn => by
      unfold greenArithmeticFourierShellEnergy
      positivity)
  nlinarith [sq_nonneg (mass1 X)]

theorem mass1_sq_le_arithmeticCoordinateStage
    (X N : ℕ) :
    (mass1 X)^2 ≤ fullGreenArithmeticCoordinateStage X N := by
  unfold fullGreenArithmeticCoordinateStage
  have hhead : 0 ≤ greenArithmeticFourierHead X N := by
    unfold greenArithmeticFourierHead
    exact Finset.sum_nonneg (fun n hn => by
      unfold greenArithmeticFourierShellEnergy
      positivity)
  nlinarith [sq_nonneg (mass0 X)]

/-- The first negative Fourier mode occurs in the first shell. -/
theorem negOne_coordinate_sq_le_arithmeticCoordinateStage
    (X : ℕ) :
    ‖greenArithmeticFourierCoordinate X (-1)‖^2 ≤
      fullGreenArithmeticCoordinateStage X 1 := by
  unfold fullGreenArithmeticCoordinateStage greenArithmeticFourierHead
    greenArithmeticFourierShellEnergy
  simp [greenArithmeticFourierCoordinate_zero]
  positivity

/-- The first positive Fourier mode occurs in the second shell. -/
theorem one_coordinate_sq_le_arithmeticCoordinateStage
    (X : ℕ) :
    ‖greenArithmeticFourierCoordinate X 1‖^2 ≤
      fullGreenArithmeticCoordinateStage X 2 := by
  unfold fullGreenArithmeticCoordinateStage greenArithmeticFourierHead
    greenArithmeticFourierShellEnergy
  norm_num [greenArithmeticFourierCoordinate_zero, Finset.sum_range_succ]
  nlinarith [sq_nonneg (mass0 X), sq_nonneg (mass1 X),
    sq_nonneg (‖greenArithmeticFourierCoordinate X (-1)‖),
    sq_nonneg (‖greenArithmeticFourierCoordinate X (-2)‖)]

theorem coordinateBound_forces_mass0_sq_decay
    (hC : AllDyadicArithmeticFourierCoordinateBound)
    {η : ℝ} (hη : 0 < η) :
    ∃ C : ℝ, 0 ≤ C ∧ ∃ j₀ : ℕ,
      ∀ j ≥ j₀,
        (mass0 (dyadicScale j))^2 ≤
          C * Real.rpow (dyadicScale j : ℝ) (-1 + η) := by
  obtain ⟨C, hC0, j₀, hbound⟩ := hC η hη
  refine ⟨C, hC0, j₀, ?_⟩
  intro j hj
  exact
    (mass0_sq_le_arithmeticCoordinateStage
      (dyadicScale j) 0).trans
      (hbound j hj 0)

theorem coordinateBound_forces_mass1_sq_decay
    (hC : AllDyadicArithmeticFourierCoordinateBound)
    {η : ℝ} (hη : 0 < η) :
    ∃ C : ℝ, 0 ≤ C ∧ ∃ j₀ : ℕ,
      ∀ j ≥ j₀,
        (mass1 (dyadicScale j))^2 ≤
          C * Real.rpow (dyadicScale j : ℝ) (-1 + η) := by
  obtain ⟨C, hC0, j₀, hbound⟩ := hC η hη
  refine ⟨C, hC0, j₀, ?_⟩
  intro j hj
  exact
    (mass1_sq_le_arithmeticCoordinateStage
      (dyadicScale j) 0).trans
      (hbound j hj 0)

theorem coordinateBound_forces_negOne_sq_decay
    (hC : AllDyadicArithmeticFourierCoordinateBound)
    {η : ℝ} (hη : 0 < η) :
    ∃ C : ℝ, 0 ≤ C ∧ ∃ j₀ : ℕ,
      ∀ j ≥ j₀,
        ‖greenArithmeticFourierCoordinate
            (dyadicScale j) (-1)‖^2 ≤
          C * Real.rpow (dyadicScale j : ℝ) (-1 + η) := by
  obtain ⟨C, hC0, j₀, hbound⟩ := hC η hη
  refine ⟨C, hC0, j₀, ?_⟩
  intro j hj
  exact
    (negOne_coordinate_sq_le_arithmeticCoordinateStage
      (dyadicScale j)).trans
      (hbound j hj 1)

theorem coordinateBound_forces_one_sq_decay
    (hC : AllDyadicArithmeticFourierCoordinateBound)
    {η : ℝ} (hη : 0 < η) :
    ∃ C : ℝ, 0 ≤ C ∧ ∃ j₀ : ℕ,
      ∀ j ≥ j₀,
        ‖greenArithmeticFourierCoordinate
            (dyadicScale j) 1‖^2 ≤
          C * Real.rpow (dyadicScale j : ℝ) (-1 + η) := by
  obtain ⟨C, hC0, j₀, hbound⟩ := hC η hη
  refine ⟨C, hC0, j₀, ?_⟩
  intro j hj
  exact
    (one_coordinate_sq_le_arithmeticCoordinateStage
      (dyadicScale j)).trans
      (hbound j hj 2)

end GRWTSK.RiemannHypothesis
