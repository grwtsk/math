/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.RingTheory.Polynomial.Pochhammer
import Mathlib.Analysis.Calculus.Deriv.Mul
import Mathlib.Analysis.Complex.Basic
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Division-free first derivatives of the existing rising Pochhammer polynomial

The value is the upstream polynomial, not a second rising-factorial definition.
The slope recurrence remains valid when a factor vanishes. No logarithmic
product derivative or division by z+j is used. All source is unelaborated.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Complex.PochhammerJet

noncomputable section

def value (n : ℕ) (z : ℂ) : ℂ := (ascPochhammer ℂ n).eval z

def slope : ℕ → ℂ → ℂ
  | 0, _ => 0
  | n + 1, z => slope n z * (z + n) + value n z

@[simp] theorem value_zero (z : ℂ) : value 0 z = 1 := by simp [value]

theorem value_succ (n : ℕ) (z : ℂ) :
    value (n + 1) z = value n z * (z + n) := ascPochhammer_succ_eval n z

/-- Differentiate the product recurrence, including at all vanishing factors. -/
theorem hasDerivAt_value (n : ℕ) (z : ℂ) : HasDerivAt (value n) (slope n z) z := by
  induction n with
  | zero =>
    have heq : value 0 = fun _ : ℂ => 1 := funext value_zero
    rw [heq]
    exact hasDerivAt_const z (1 : ℂ)
  | succ n ih =>
    have heq : value (n + 1) = fun w : ℂ => value n w * (w + n) :=
      funext (value_succ n)
    rw [heq]
    simpa only [slope, mul_one] using ih.mul ((hasDerivAt_id z).add_const (n : ℂ))

theorem deriv_value (n : ℕ) (z : ℂ) : deriv (value n) z = slope n z :=
  (hasDerivAt_value n z).deriv

/-- A zero product may have NONZERO derivative: division-based formulas need care. -/
theorem vanishing_factor_control : value 3 (-1) = 0 ∧ slope 3 (-1) = -1 := by
  norm_num [value_succ, slope, value_zero]

/-- The empty product has value one and derivative zero, not two zero outputs. -/
theorem empty_product_control : value 0 0 = 1 ∧ slope 0 0 = 0 := by simp [slope]

end
end GRWTSK.Analysis.Complex.PochhammerJet
