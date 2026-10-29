import Mathematics.Polynomial.Derivative
import Mathlib.Analysis.Calculus.Deriv.Polynomial

/-!
# Canonical cubic potential

The old corpus called the evaluated expression an “antiderivative.”  Here the
primitive is represented first as a polynomial, so both algebraic and analytic
differentiation can certify it.
-/

namespace Mathematics.Polynomial

open _root_.Polynomial
open scoped Polynomial

/-- A polynomial potential whose derivative is `cubic a b c d`. -/
noncomputable def cubicPotential (a b c d : ℝ) : ℝ[X] :=
  C (a / 4) * X ^ 4 +
    C (b / 3) * X ^ 3 +
    C (c / 2) * X ^ 2 +
    C d * X

@[simp] theorem eval_cubicPotential (a b c d x : ℝ) :
    (cubicPotential a b c d).eval x =
      a / 4 * x ^ 4 +
        b / 3 * x ^ 3 +
        c / 2 * x ^ 2 +
        d * x := by
  simp [cubicPotential]

/-- The potential differentiates algebraically to the source cubic. -/
@[simp] theorem derivative_cubicPotential (a b c d : ℝ) :
    derivative (cubicPotential a b c d) = cubic a b c d := by
  simp only [
    cubicPotential,
    cubic,
    derivative_add,
    derivative_C_mul_X_pow,
    derivative_C_mul_X
  ]
  ring_nf

/-- The same derivative identity in the analytic `HasDerivAt` interface. -/
theorem hasDerivAt_cubicPotential (a b c d x : ℝ) :
    HasDerivAt
      (fun y => (cubicPotential a b c d).eval y)
      ((cubic a b c d).eval x)
      x := by
  simpa using (cubicPotential a b c d).hasDerivAt x

end Mathematics.Polynomial
