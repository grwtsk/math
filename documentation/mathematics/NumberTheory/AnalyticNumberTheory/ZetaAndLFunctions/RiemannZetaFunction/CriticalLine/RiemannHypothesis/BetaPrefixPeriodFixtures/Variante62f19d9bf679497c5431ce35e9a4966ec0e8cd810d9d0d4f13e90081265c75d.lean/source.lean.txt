import SourceBetaPrefixPeriodObstruction

/-! UNCOMPILED hostile fixtures: coefficient periods, prefix periods, and prefix signs differ. -/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.BetaPrefixPeriodFixtures

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateBetaCentering SourceBetaPrefixPeriodObstruction

noncomputable section

theorem coefficient_period_zero_does_not_make_prefix_period_zero :
    (∑ n ∈ Finset.Ioc 2 4, centeredBeta 2 n) = 0 ∧
      (∑ k ∈ Finset.Icc 3 4, ∑ n ∈ Finset.Ioc 2 k, centeredBeta 2 n) ≠ 0 := by
  refine ⟨coefficient_period_two_zero, ?_⟩
  rw [prefix_period_two_nonzero_sum]
  norm_num

theorem actual_prefixes_are_not_all_nonnegative :
    ¬ ∀ k : ℕ, 4 < k → 0 ≤ (∑ n ∈ Finset.Ioc 4 k, centeredBeta 4 n) := by
  intro h
  have h5 := h 5 (by norm_num)
  rw [prefix_four_five] at h5
  norm_num at h5

theorem actual_prefixes_are_not_all_nonpositive :
    ¬ ∀ k : ℕ, 4 < k → (∑ n ∈ Finset.Ioc 4 k, centeredBeta 4 n) ≤ 0 := by
  intro h
  have h6 := h 6 (by norm_num)
  rw [prefix_four_six] at h6
  norm_num at h6

end
end FormalResearch.RiemannHypothesis.BetaPrefixPeriodFixtures
