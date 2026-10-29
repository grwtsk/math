import SourceBetaPrefixStorage

/-! UNCOMPILED hostile fixtures: cyclic wrap, nonzero mean, and necessary lower endpoint. -/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.BetaPrefixStorageFixtures

open ArithmeticFunction SourceBetaPrefixStorage

noncomputable section

theorem wraparound_difference_is_not_zero :
    divisorStorage 2 2 - divisorStorage 2 1 = (1 / 4 : ℝ) := by
  norm_num [divisorStorage]

theorem actual_signed_prefix_mean_two_nonzero :
    centeredPrefixMean 2 = -(1 / 4 : ℝ) := by
  norm_num [centeredPrefixMean, divisorMean,
    show Finset.Icc 1 2 = {1, 2} by decide, moebius_apply_prime Nat.prime_two]

theorem mean_cannot_be_erased_from_divisor_prefix :
    divisorPrefix 2 2 3 ≠ divisorStorage 2 4 - divisorStorage 2 3 := by
  norm_num [divisorPrefix, divisorStorage]

theorem lower_abel_endpoint_cannot_be_erased :
    (∑ k ∈ Finset.Ico 3 4, divisorPrefix 2 2 k * (1 : ℝ)) ≠
      divisorMean 2 2 * (∑ k ∈ Finset.Ico 3 4, (1 : ℝ)) +
        divisorStorage 2 4 * (1 : ℝ) -
        ∑ k ∈ Finset.Ico 3 4, divisorStorage 2 (k + 1) * ((1 : ℝ) - 1) := by
  norm_num [show Finset.Ico 3 4 = {3} by decide,
    divisorPrefix, divisorMean, divisorStorage]

end
end FormalResearch.RiemannHypothesis.BetaPrefixStorageFixtures
