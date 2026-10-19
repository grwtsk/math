import FormalResearch.RiemannHypothesis.WeightedPrimeAbel

open FormalResearch.RiemannHypothesis.WeightedPrimeAbel
open scoped BigOperators Interval

set_option autoImplicit false

-- A prime exactly at the upper endpoint contributes its original atom.
example (F : ℝ → ℝ) :
    primeLogWindow 0 (Real.log 2) F = Real.log 2 / 2 * F (Real.log 2) := by
  rw [primeLogWindow_eq_interval_sum 0 (Real.log 2) (Real.log_nonneg (by norm_num)) F]
  norm_num [Real.exp_log (by norm_num : (0 : ℝ) < 2), Finset.filter_singleton]
  simp [Nat.prime_two]

-- A prime exactly at the lower endpoint is excluded, while the next upper prime is included.
example (F : ℝ → ℝ) :
    primeLogWindow (Real.log 2) (Real.log 3) F = Real.log 3 / 3 * F (Real.log 3) := by
  rw [primeLogWindow_eq_interval_sum (Real.log 2) (Real.log 3)
    (Real.log_le_log (by norm_num) (by norm_num)) F]
  norm_num [Real.exp_log (by norm_num : (0 : ℝ) < 2),
    Real.exp_log (by norm_num : (0 : ℝ) < 3), Finset.filter_singleton]
  simp [Nat.prime_three]

-- Equal endpoint inventories cancel, even when that endpoint itself is a prime threshold.
example (F : ℝ → ℝ) : primeLogWindow (Real.log 2) (Real.log 2) F = 0 := by
  simp [primeLogWindow]

-- The unit atom has no prime contribution.
example (F : ℝ → ℝ) : primeLogSum 0 F = 0 := by
  norm_num [primeLogSum, primeLogInventory, Finset.filter_singleton]
  simp [Nat.not_prime_one]

-- Constant tests recover the signed difference of the actual closed prefixes.
example (a b : ℝ) :
    primeLogWindow a b (fun _ => (1 : ℝ)) = primeLogPrefix b - primeLogPrefix a := by
  simp [primeLogWindow, primeLogSum, primeLogPrefix_eq_sum]
