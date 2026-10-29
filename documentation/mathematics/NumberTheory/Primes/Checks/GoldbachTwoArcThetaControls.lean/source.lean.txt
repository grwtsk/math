/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Primes.GoldbachThetaExplicitCutoff

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.Checks.GoldbachTwoArcThetaControls

open GRWTSK.NumberTheory.Primes.GoldbachWeighted
open GRWTSK.NumberTheory.Primes.GoldbachProgressionMainModel
open GRWTSK.NumberTheory.Primes.GoldbachPrefixDiscrepancy
open GRWTSK.NumberTheory.Primes.GoldbachTwoArcThetaTransfer
open GRWTSK.NumberTheory.Primes.GoldbachThetaExplicitCutoff

/-- Dropping the zero-frequency endpoint changes the actual prefix. -/
theorem theta_prefix_zero_endpoint :
    goldbachResiduePrefixDiscrepancy 0 1 0 = -1 := by
  rw [goldbachResiduePrefixDiscrepancy_one_zero]
  norm_num [goldbachPrimeLogTotal, primeLogWeight]

theorem zero_prefix_budget_impossible :
    ¬ (‖goldbachResiduePrefixDiscrepancy 0 1 0‖ ≤ 0) := by
  rw [theta_prefix_zero_endpoint]
  norm_num

/-- The odd prefix through two has no prime mass, but keeps all three model
coefficients. Charging it as the unrestricted theta prefix would be false. -/
theorem odd_prefix_at_two :
    goldbachResiduePrefixDiscrepancy 2 2 1 = -3 := by
  rw [goldbachResiduePrefixDiscrepancy_two_one,
    goldbachResiduePrefixDiscrepancy_one_zero]
  norm_num [goldbachPrimeLogTotal, goldbachPrimeTwoCorrection,
    primeLogWeight, Finset.sum_range_succ]

theorem even_prime_correction_begins_at_two :
    goldbachResiduePrimeLogTotal 1 2 0 = 0 ∧
      goldbachResiduePrimeLogTotal 2 2 0 = Real.log 2 := by
  simp [goldbachResiduePrimeLogTotal_two_zero, goldbachPrimeTwoCorrection]

/-- A prime power must not be added to the even correction. -/
theorem even_prime_correction_at_four :
    goldbachResiduePrimeLogTotal 4 2 0 = Real.log 2 := by
  simp [goldbachResiduePrimeLogTotal_two_zero, goldbachPrimeTwoCorrection]

/-- A coarse small-prefix allowance does not fit a one-percent target at
the distribution threshold itself; it must be paid in the final cutoff. -/
theorem small_prefix_allowance_requires_payment :
    ¬ ((4000000 : ℝ) ≤ 4000000 / 100) := by norm_num

theorem declared_cutoff_pays_small_prefix_allowance :
    (4000000 : ℝ) ≤ (goldbachThetaConservativeCutoff + 1 : ℝ) / 100 := by
  norm_num [goldbachThetaConservativeCutoff]

end GRWTSK.NumberTheory.Primes.Checks.GoldbachTwoArcThetaControls
