/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Primes.GoldbachDirectionalMinorBoundary
import GRWTSK.NumberTheory.Primes.GoldbachTwoArcRationalBudget

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.Checks.GoldbachDirectionalMinorControls

open GRWTSK.NumberTheory.Primes.GoldbachTwoArcRationalBudget

/-- Positive omitted mass can defeat a norm margin while helping positivity. -/
theorem positive_minor_is_not_a_loss :
    (0 : ℝ) ≤ 10 ∧ 0 < 1 + 0 + 10 ∧ ¬ (0 + |(10 : ℝ)| < 1) := by
  norm_num

/-- The lower-bound direction cannot be replaced by an upper bound. -/
theorem upper_minor_bound_is_insufficient :
    (-2 : ℝ) ≤ 0 ∧ ¬ (0 < 1 + 0 + (-2 : ℝ)) := by
  norm_num

/-- Equality in the margin still permits zero total mass. -/
theorem nonstrict_directional_margin_is_insufficient :
    (0 : ℝ) + 1 ≤ 1 ∧ 1 + 0 + (-1 : ℝ) = 0 := by
  norm_num

/-- The rational expression remains nonzero at zero reduced-prefix budget,
because the prime-two correction has not been deleted. -/
theorem correction_survives_zero_prefix_budget :
    goldbachTwoArcRationalBudget 1000 0 = (1203 : ℝ) / 100 := by
  norm_num [goldbachTwoArcRationalBudget]

/-- Rational witness arithmetic only; primality and logarithm comparisons
for the 114 pairs are supplied in the note, not asserted by this lemma. -/
theorem q2_obstruction_rational_gap :
    (10034793358 : ℚ) / 1000000 > 4 * (2310 + 1) := by
  norm_num

end GRWTSK.NumberTheory.Primes.Checks.GoldbachDirectionalMinorControls
