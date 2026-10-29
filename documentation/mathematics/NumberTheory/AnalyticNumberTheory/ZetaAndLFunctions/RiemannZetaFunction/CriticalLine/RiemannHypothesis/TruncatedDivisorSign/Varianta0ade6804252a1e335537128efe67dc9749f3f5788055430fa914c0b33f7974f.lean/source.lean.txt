import FormalResearch.RiemannHypothesis.SourceComparison.TruncatedDivisorResidual

/-! Exact negative truncated-divisor coefficient throughout the actual damping cap. -/
set_option autoImplicit false
namespace TruncatedDivisorSignScratch
open FormalResearch.RiemannHypothesis.SourceComparison.TruncatedDivisorResidual
noncomputable section

/-- The original divisor cutoff retains precisely the signed factors one, two and three. -/
theorem truncated_three_six (ε : ℝ) :
    truncatedDivisorCoefficient 3 ε 6 =
      1 - Real.exp (-ε * Real.log 2) - Real.exp (-ε * Real.log 3) := by
  have hd : (Nat.divisors 6).filter (fun d => d ≤ 3) = {1, 2, 3} := by decide
  unfold truncatedDivisorCoefficient
  rw [hd]
  norm_num [Finset.sum_insert, Finset.sum_singleton,
    ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 2),
    ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 3)]
  ring

/-- The actual partial divisor sum is uniformly negative on the entire permitted damping range. -/
theorem truncated_three_six_le_neg_quarter (ε : ℝ) (hε : 0 ≤ ε) (hsmall : ε ≤ 1 / 4) :
    truncatedDivisorCoefficient 3 ε 6 ≤ -(1 / 4 : ℝ) := by
  rw [truncated_three_six]
  have hl2 : Real.log 2 ≤ 1 := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  have hl3 : Real.log 3 ≤ 2 := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 3)]
  have h2 := Real.add_one_le_exp (-ε * Real.log 2)
  have h3 := Real.add_one_le_exp (-ε * Real.log 3)
  have hp2 := mul_le_mul_of_nonneg_left hl2 hε
  have hp3 := mul_le_mul_of_nonneg_left hl3 hε
  nlinarith

end
end TruncatedDivisorSignScratch
