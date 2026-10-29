/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.FunctionFieldArithmetic.MoebiusTruncation

/-!
# Complete coefficients of a truncated Mobius inverse

Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI Codex.
Every ordered Dirichlet factorization is retained, including squareful outputs.
Finite coefficient signs give no all-real polynomial cancellation witness.
-/

namespace GRWTSK.NumberTheory.ArithmeticFunctions
open scoped ArithmeticFunction.Moebius ArithmeticFunction.zeta

/-- Complete low-factor triple convolution coefficient. -/
def lowMoebiusCoefficient (U n : ℕ) : ℤ :=
  (closedArithmeticCutoff μ U * closedArithmeticCutoff μ U * ζ) n

/-- Complete high-factor triple convolution coefficient. -/
def highMoebiusCoefficient (U n : ℕ) : ℤ :=
  ((μ - closedArithmeticCutoff μ U) * (μ - closedArithmeticCutoff μ U) * ζ) n

/-- The full finite coefficient returns to actual Mobius beyond the cutoff. -/
theorem moebius_low_high_coefficient_return (U n : ℕ) (hU : U < n) :
    (μ n : ℤ) = -lowMoebiusCoefficient U n + highMoebiusCoefficient U n := by
  have h := congrArg (fun f : ArithmeticFunction ℤ => f n)
    (moebius_closed_cutoff_split U)
  rw [two_mul] at h
  change μ n =
    (closedArithmeticCutoff μ U n + closedArithmeticCutoff μ U n) -
      lowMoebiusCoefficient U n + highMoebiusCoefficient U n at h
  have hc : closedArithmeticCutoff μ U n = 0 := by
    change (if n ≤ U then μ n else 0) = 0
    rw [if_neg (Nat.not_le.mpr hU)]
  simpa [hc] using h

set_option maxRecDepth 10000 in
set_option maxHeartbeats 1000000 in
theorem high_coefficient_three_thirty : highMoebiusCoefficient 3 30 = -2 := by decide +kernel

set_option maxRecDepth 10000 in
set_option maxHeartbeats 1000000 in
theorem high_coefficient_four_fortynine : highMoebiusCoefficient 4 49 = 1 := by decide +kernel

set_option maxRecDepth 10000 in
set_option maxHeartbeats 1000000 in
theorem low_coefficient_three_thirty : lowMoebiusCoefficient 3 30 = -1 := by decide +kernel

set_option maxRecDepth 10000 in
set_option maxHeartbeats 1000000 in
theorem low_coefficient_four_fortynine : lowMoebiusCoefficient 4 49 = 1 := by decide +kernel

/-- Actual complete coefficients have both signs; no growth assertion. -/
theorem high_moebius_coefficients_have_both_signs :
    (∃ U n : ℕ, highMoebiusCoefficient U n < 0) ∧
      (∃ U n : ℕ, 0 < highMoebiusCoefficient U n) := by
  constructor
  · exact ⟨3, 30, by rw [high_coefficient_three_thirty]; norm_num⟩
  · exact ⟨4, 49, by rw [high_coefficient_four_fortynine]; norm_num⟩

end GRWTSK.NumberTheory.ArithmeticFunctions
