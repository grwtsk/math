/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.SeparatedTentContours

set_option autoImplicit false

/-!
# Synthetic controls for separated height selection

Rational heights and complex points below are fixtures, not asserted zeta
zeros. These source proofs are NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.Checks.SeparatedHeightControls

open GRWTSK.Analysis.Real.FiniteIntervalSeparation
open GRWTSK.RiemannHypothesis.SeparatedContourHeights

noncomputable section

theorem empty_clearance : clearance 0 = 1 / 4 := by norm_num [clearance]

theorem empty_grid_midpoint : gridPoint 3 0 ⟨0, by omega⟩ = 7 / 2 := by
  norm_num [gridPoint]

/-- One forbidden midpoint blocks the first candidate, but not both candidates. -/
theorem one_blocker_other_candidate :
    gridPoint 0 1 ⟨0, by omega⟩ = 1 / 4 ∧
      clearance 1 ≤ |gridPoint 0 1 ⟨1, by omega⟩ - 1 / 4| := by
  norm_num [gridPoint, clearance]

/-- The lower band cutoff is strict; the upper cutoff is closed. -/
theorem local_band_endpoints :
    ¬ ((3 : ℝ) < 3 ∧ (3 : ℝ) ≤ 6) ∧ ((3 : ℝ) < 6 ∧ (6 : ℝ) ≤ 6) := by
  norm_num

/-- A perturbation as large as the entire gap may land exactly on a record. -/
theorem whole_gap_rounding_can_hit :
    |(1 / 2 : ℝ) - 3 / 8| = 1 / 8 ∧ ¬ ((1 / 2 : ℝ) ≤ 3 / 8) ∧
      (1 / 2 : ℝ) ≤ 1 / 2 := by norm_num

/-- Distinct source points can have the same absolute height. -/
theorem equal_height_distinct_points :
    |(⟨1 / 3, 4⟩ : ℂ).im| = |(⟨2 / 3, -4⟩ : ℂ).im| ∧
      (⟨1 / 3, 4⟩ : ℂ) ≠ (⟨2 / 3, -4⟩ : ℂ) := by
  constructor
  · norm_num
  · intro he
    have := congrArg Complex.re he
    norm_num at this

/-- Point count is not analytic-multiplicity mass. -/
theorem multiplicity_mass_is_not_cardinality : (1 + 3 : ℕ) ≠ 2 := by norm_num

/-- A finite list can falsely advertise clearance if it omits a record at the chosen height. -/
theorem omitted_record_breaks_gap : ¬ ((1 / 4 : ℝ) ≤ |(1 / 2 : ℝ) - 1 / 2|) := by
  norm_num

/-- Arbitrarily adding an analytic regular term preserves the simple principal part. -/
theorem regular_part_not_controlled (A z : ℂ) (hz : z ≠ 0) :
    z * (z⁻¹ + A) = 1 + z * A := by
  rw [mul_add, mul_inv_cancel₀ hz]

end
end GRWTSK.NumberTheory.Chebyshev.Checks.SeparatedHeightControls
