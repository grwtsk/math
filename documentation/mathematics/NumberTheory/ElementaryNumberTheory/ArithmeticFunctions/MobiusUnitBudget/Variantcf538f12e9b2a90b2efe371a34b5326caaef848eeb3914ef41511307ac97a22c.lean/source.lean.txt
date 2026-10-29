import FormalResearch.RiemannHypothesis.SourceComparison.DivisorFloorTransport

/-! Exact Möbius floor cancellation improves the actual reciprocal-prefix bound. -/
set_option autoImplicit false
namespace MobiusUnitBudgetScratch
open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open FiniteMobiusController DivisorFloorTransport
noncomputable section

/-- The complete signed reciprocal prefix retains the exact fractional endpoint identity. -/
theorem reciprocal_floor_identity (X : ℕ) (hX : 1 ≤ X) :
    (X : ℝ) * mobiusReciprocalSum X = 1 +
      ∑ d ∈ Icc 1 X, (ArithmeticFunction.moebius d : ℝ) * Int.fract ((X : ℝ) / d) := by
  have hf := floor_sum_divisors X (X : ℝ)
    (fun d => (ArithmeticFunction.moebius d : ℝ)) le_rfl
  simp only [Nat.floor_natCast, CoprimeCount.sum_moebius_divisors] at hf
  simp only [sum_ite_eq', mem_Icc, le_refl, hX, and_self, if_true] at hf
  have ht : (∑ d ∈ Icc 1 X, (ArithmeticFunction.moebius d : ℝ) *
      Int.fract ((X : ℝ) / d)) =
      (X : ℝ) * mobiusReciprocalSum X -
        ∑ d ∈ Icc 1 X, (ArithmeticFunction.moebius d : ℝ) * (⌊(X : ℝ) / d⌋₊ : ℝ) := by
    rw [mobiusReciprocalSum, mul_sum, ← sum_sub_distrib]
    apply sum_congr rfl
    intro d hd
    rw [Int.fract, ← natCast_floor_eq_intCast_floor
      (div_nonneg (Nat.cast_nonneg X) (Nat.cast_nonneg d))]
    ring
  linarith

/-- Exact Möbius cancellation bounds the actual reciprocal prefix by one, for every cutoff. -/
theorem mobiusReciprocalSum_abs_le_one (X : ℕ) : |mobiusReciprocalSum X| ≤ 1 := by
  by_cases hX0 : X = 0
  · simp [hX0, mobiusReciprocalSum]
  have hX : 1 ≤ X := by omega
  have hrX : 0 < (X : ℝ) := by exact_mod_cast (show 0 < X by omega)
  have hsum : |∑ d ∈ Icc 1 X, (ArithmeticFunction.moebius d : ℝ) *
      Int.fract ((X : ℝ) / d)| ≤ (X : ℝ) - 1 := by
    have hterm (d : ℕ) (hd : d ∈ Icc 1 X) :
        |(ArithmeticFunction.moebius d : ℝ) * Int.fract ((X : ℝ) / d)| ≤
          if d = 1 then 0 else 1 := by
      by_cases hd1 : d = 1
      · simp [hd1]
      · rw [if_neg hd1, abs_mul, abs_of_nonneg (Int.fract_nonneg _)]
        have hm : |(ArithmeticFunction.moebius d : ℝ)| ≤ 1 := by
          exact_mod_cast ArithmeticFunction.abs_moebius_le_one (n := d)
        exact (mul_le_mul hm (Int.fract_lt_one _).le (Int.fract_nonneg _) zero_le_one).trans_eq
          (by norm_num)
    calc
      _ ≤ ∑ d ∈ Icc 1 X, |(ArithmeticFunction.moebius d : ℝ) *
          Int.fract ((X : ℝ) / d)| := abs_sum_le_sum_abs _ _
      _ ≤ ∑ d ∈ Icc 1 X, if d = 1 then (0 : ℝ) else 1 := sum_le_sum hterm
      _ = _ := by
        have he : (∑ d ∈ Icc 1 X, if d = 1 then (0 : ℝ) else 1) =
            (∑ d ∈ Icc 1 X, (1 : ℝ)) - ∑ d ∈ Icc 1 X, if d = 1 then (1 : ℝ) else 0 := by
          rw [← sum_sub_distrib]
          apply sum_congr rfl
          intro d hd
          split_ifs <;> norm_num
        rw [he]
        simp [hX]
  have hb : |(X : ℝ) * mobiusReciprocalSum X| ≤ (X : ℝ) := by
    rw [reciprocal_floor_identity X hX]
    have ha := abs_add_le (1 : ℝ) (∑ d ∈ Icc 1 X,
      (ArithmeticFunction.moebius d : ℝ) * Int.fract ((X : ℝ) / d))
    norm_num at ha
    linarith
  rw [abs_mul, abs_of_pos hrX] at hb
  nlinarith

end
end MobiusUnitBudgetScratch
