/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain upstream authorship and Apache-2.0 licensing. -/
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.Tactic.Ring

/-!
# Truncation of an arithmetic inverse

Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI Codex. 
Multiplication here is Dirichlet convolution, not pointwise multiplication.
No polynomial Mobius budget or Riemann-hypothesis conclusion is claimed.
-/

namespace GRWTSK.NumberTheory.ArithmeticFunctions

open scoped ArithmeticFunction.Moebius ArithmeticFunction.zeta

/-- Restrict an arithmetic function to the closed natural cutoff. -/
def closedArithmeticCutoff {R : Type*} [Zero R]
    (f : ArithmeticFunction R) (U : ℕ) : ArithmeticFunction R :=
  ⟨fun n => if n ≤ U then f n else 0, by simp⟩

/-- Exact inverse split, with both cross orientations retained. -/
theorem arithmetic_inverse_split {R : Type*} [CommRing R]
    (f g z : ArithmeticFunction R) (h : f * z = 1) :
    f = 2 * g - g * g * z + (f - g) * (f - g) * z := by
  have hdiag : f * f * z = f := by
    rw [mul_assoc, h, mul_one]
  have hcross : f * g * z = g := by
    calc
      f * g * z = (f * z) * g := by ring
      _ = g := by rw [h, one_mul]
  calc
    f = f * f * z - 2 * (f * g * z) + 2 * g := by
      rw [hdiag, hcross]
      ring
    _ = 2 * g - g * g * z + (f - g) * (f - g) * z := by ring

/-- The actual integer Mobius inverse gives the unconditional cutoff split. -/
theorem moebius_closed_cutoff_split (U : ℕ) :
    (μ : ArithmeticFunction ℤ) =
      2 * closedArithmeticCutoff μ U -
        closedArithmeticCutoff μ U * closedArithmeticCutoff μ U * ζ +
        (μ - closedArithmeticCutoff μ U) * (μ - closedArithmeticCutoff μ U) * ζ := by
  exact arithmetic_inverse_split μ (closedArithmeticCutoff μ U) ζ
    ArithmeticFunction.moebius_mul_coe_zeta

/-- The retained high component has no coefficient at or below its cutoff. -/
theorem moebius_above_cutoff_zero (U n : ℕ) (hn : n ≤ U) :
    ((μ : ArithmeticFunction ℤ) - closedArithmeticCutoff μ U) n = 0 := by
  change μ n - (if n ≤ U then μ n else 0) = 0
  rw [if_pos hn, sub_self]

end GRWTSK.NumberTheory.ArithmeticFunctions
