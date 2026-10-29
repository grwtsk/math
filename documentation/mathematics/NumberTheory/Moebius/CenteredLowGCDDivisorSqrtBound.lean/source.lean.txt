/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported Mathlib results retain their original credits and Apache-2.0 license.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDCoefficients
import Mathlib.Analysis.Real.Sqrt
import Mathlib.NumberTheory.ArithmeticFunction.Misc
import Mathlib.Tactic

/-!
# Square-root divisor counting on the centered low-gcd octave

A positive divisor is encoded by the small member of its complementary pair,
plus one Boolean side bit.  This proves `tau(n) <= 2*(sqrt(n)+1)` and the
relaxed octave bound `tau(n) <= 6*sqrt(X)`.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators ArithmeticFunction ArithmeticFunction.Moebius

namespace GRWTSK.NumberTheory.Moebius.CenteredLowGCD

open ArithmeticFunction
/-- Encode a positive divisor by the member of its complementary divisor pair
which lies below the natural square root, together with the side of the pair.
The `+1` in the finite codomain avoids a separate perfect-square endpoint. -/
def divisorSqrtCode
    {n : ℕ}
    (hn : n ≠ 0)
    (d : {d : ℕ // d ∈ n.divisors}) :
    Bool × Fin (n.sqrt + 1) :=
  if hsmall : d.1 ≤ n.sqrt then
    (false, ⟨d.1, Nat.lt_succ_of_le hsmall⟩)
  else
    (true,
      ⟨n / d.1, Nat.lt_succ_of_le (by
        have hdn : d.1 ∣ n := (Nat.mem_divisors.mp d.2).1
        have hmul : n = d.1 * (n / d.1) :=
          (Nat.mul_div_cancel' hdn).symm
        rcases Nat.le_sqrt_of_eq_mul hmul with hd | hq
        · exact (hsmall hd).elim
        · exact hq)⟩)

/-- The square-root divisor code is injective. -/
theorem divisorSqrtCode_injective
    {n : ℕ}
    (hn : n ≠ 0) :
    Function.Injective (divisorSqrtCode hn) := by
  intro a b hab
  apply Subtype.ext
  by_cases ha : a.1 ≤ n.sqrt
  · by_cases hb : b.1 ≤ n.sqrt
    · have hval := congrArg
        (fun z : Bool × Fin (n.sqrt + 1) => z.2.1) hab
      simpa [divisorSqrtCode, ha, hb] using hval
    · have htag := congrArg
        (fun z : Bool × Fin (n.sqrt + 1) => z.1) hab
      simp [divisorSqrtCode, ha, hb] at htag
  · by_cases hb : b.1 ≤ n.sqrt
    · have htag := congrArg
        (fun z : Bool × Fin (n.sqrt + 1) => z.1) hab
      simp [divisorSqrtCode, ha, hb] at htag
    · have hquot : n / a.1 = n / b.1 := by
        have hval := congrArg
          (fun z : Bool × Fin (n.sqrt + 1) => z.2.1) hab
        simpa [divisorSqrtCode, ha, hb] using hval
      have hadvd : a.1 ∣ n := (Nat.mem_divisors.mp a.2).1
      have hbdvd : b.1 ∣ n := (Nat.mem_divisors.mp b.2).1
      have hqpos : 0 < n / a.1 := by
        have hanpos : 0 < n := Nat.pos_of_ne_zero hn
        have hapos : 0 < a.1 := Nat.pos_of_dvd_of_pos hadvd hanpos
        have hale : a.1 ≤ n := Nat.le_of_dvd hanpos hadvd
        exact Nat.div_pos hale hapos
      exact Nat.eq_of_mul_eq_mul_right hqpos <| by
        calc
          a.1 * (n / a.1) = n := Nat.mul_div_cancel' hadvd
          _ = b.1 * (n / b.1) := (Nat.mul_div_cancel' hbdvd).symm
          _ = b.1 * (n / a.1) := by rw [hquot]

/-- Elementary pointwise divisor bound with all small-scale cases retained. -/
theorem card_divisors_le_two_mul_sqrt_succ
    {n : ℕ}
    (hn : n ≠ 0) :
    n.divisors.card ≤ 2 * (n.sqrt + 1) := by
  have hcard :=
    Fintype.card_le_of_injective
      (divisorSqrtCode hn)
      (divisorSqrtCode_injective hn)
  simpa [Fintype.card_prod] using hcard

/-- On the octave, the divisor count is bounded by `6 * sqrt X`.
The relaxed constant absorbs the natural-square-root endpoint. -/
theorem card_divisors_cast_le_six_mul_sqrt_scale
    {X n : ℕ}
    (hX : 1 ≤ X)
    (hn : n ∈ octaveIndexSet X) :
    (n.divisors.card : ℝ) ≤
      6 * Real.sqrt (X : ℝ) := by
  have hnpos : 0 < n := (octave_mem_bounds hn).1
  have hnle : n ≤ 4 * X := (octave_mem_bounds hn).2
  have hcardNat :=
    card_divisors_le_two_mul_sqrt_succ
      (Nat.ne_of_gt hnpos)
  have hcardReal :
      (n.divisors.card : ℝ) ≤
        2 * ((n.sqrt : ℝ) + 1) := by
    exact_mod_cast hcardNat
  have hsqrtNat :
      (n.sqrt : ℝ) ≤ Real.sqrt (n : ℝ) :=
    Real.nat_sqrt_le_real_sqrt
  have hsqrtMono :
      Real.sqrt (n : ℝ) ≤
        Real.sqrt ((4 * X : ℕ) : ℝ) := by
    apply Real.sqrt_le_sqrt
    exact_mod_cast hnle
  have hsqrtFour :
      Real.sqrt ((4 * X : ℕ) : ℝ) =
        2 * Real.sqrt (X : ℝ) := by
    norm_num [Nat.cast_mul, Real.sqrt_mul (show (0 : ℝ) ≤ 4 by norm_num)]
  have hsqrtOne : 1 ≤ Real.sqrt (X : ℝ) := by
    rw [Real.one_le_sqrt]
    exact_mod_cast hX
  rw [hsqrtFour] at hsqrtMono
  nlinarith


end GRWTSK.NumberTheory.Moebius.CenteredLowGCD
