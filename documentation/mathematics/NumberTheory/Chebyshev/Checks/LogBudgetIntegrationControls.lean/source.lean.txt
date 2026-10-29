/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.LegendreLogBudget

set_option autoImplicit false

/-!
# Controls for source-identical logarithmic-budget integration

These are proof drafts, not executed Lean checks. The first controls exercise
actual producer/consumer identities. Scalar controls mark strictness boundaries
and are not counterexamples to any prime-distribution conjecture.
-/

namespace GRWTSK.NumberTheory.Chebyshev.Checks.LogBudgetIntegrationControls

open scoped BigOperators
open GRWTSK.NumberTheory.Chebyshev.LegendreLogBudget
open GRWTSK.NumberTheory.Chebyshev.HigherPrimePowers
open GRWTSK.NumberTheory.Chebyshev.ProperPrimePowerCorrection

noncomputable section

/-- The interval containing eight and the upper square nine has one exact correction source. -/
theorem complete_mass_identity_control :
    properPrimePowerMass 4 9 = higherPrimePowerMass 2 := by
  simpa using properMass_eq_higherMass 2 (by norm_num)

/-- The comparison retains the log-three contribution from the closed right endpoint. -/
theorem upper_square_retained_control : Real.log 3 ≤ higherPrimePowerMass 2 := by
  rw [← properMass_eq_higherMass 2 (by norm_num)]
  simpa using prime_square_endpoint_lower_bound 2 (by norm_num)

/-- At this stage there are two different occupied exponents, not one total occupant. -/
theorem two_exponents_retained_control :
    2 ∈ primePowerBases 2 3 ∧ 3 ∈ primePowerBases 2 2 :=
  ⟨exponent_three_present_control, right_prime_square_present_control⟩

/-- One unit-size failure can spend exactly one unit of squared error. Equality cannot exclude it. -/
theorem equality_budget_allows_failure_control :
    (∑ n ∈ Finset.range 2, (if n = 0 then (1 : ℝ) else 0) ^ 2) = 1 ∧
      (∃ n ∈ Finset.range 2, (if n = 0 then (1 : ℝ) else 0) = 1) := by
  constructor
  · norm_num [Finset.sum_range_succ]
  · exact ⟨0, by decide, by norm_num⟩

/-- Zero corrected margin is not a strict positivity certificate. -/
theorem non_strict_margin_control :
    0 ≤ (1 : ℝ) - 0 - 1 ∧ ¬ (0 : ℝ) < 1 - 0 - 1 := by
  constructor <;> norm_num

/-- Empty finite coverage must not be read as a universal interval assertion. -/
theorem empty_finite_scope_control :
    (∅ : Finset ℕ).card = 0 ∧ 1 ∉ (∅ : Finset ℕ) := by
  simp

end

end GRWTSK.NumberTheory.Chebyshev.Checks.LogBudgetIntegrationControls
