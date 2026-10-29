/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CubicZetaCircleBound

set_option autoImplicit false

/-! Exact source controls; not executed. No numerical zeta or zero certificate. -/
namespace GRWTSK.NumberTheory.Chebyshev.Checks.CubicZetaIdentityControls

open scoped BigOperators
open GRWTSK.Analysis.Complex.IntervalMellinKernel
open GRWTSK.RiemannHypothesis.CubicZetaIdentity
open GRWTSK.RiemannHypothesis.CubicZetaCircleBound
open GRWTSK.RiemannHypothesis.CubicRemainder

noncomputable section

/-- The raw source excludes one even though the regular part extends across it. -/
theorem pole_parameter_not_admissible : ¬ ((1 : ℂ) ≠ 1) := by simp

/-- The proved remainder domain excludes its left boundary. -/
theorem left_boundary_not_admissible : ¬ (-2 < (-2 : ℂ).re) := by norm_num

/-- Zero is handled directly, without cancelling the cubic factor. -/
theorem zero_value_from_cubic : riemannZeta 0 = -1 / 2 := by
  have h := zeta_eq_cubic 0 (by norm_num) (by norm_num)
  convert h using 1 <;> norm_num

/-- Minus one is also allowed; no division by s+1 is used. -/
theorem minus_one_value_from_cubic : riemannZeta (-1) = -1 / 12 := by
  have h := zeta_eq_cubic (-1) (by norm_num) (by norm_num)
  convert h using 1 <;> norm_num

/-- The existing multiplicative pole normalization retains its actual value one. -/
theorem normalized_value_at_pole :
    riemannZeta₁ 1 = 1 + ((1 : ℂ) - 1) * cubicRegularPart 1 :=
  riemannZeta₁_eq_cubic 1 (by norm_num)

/-- A zero cubic prefactor still cannot identify two possible remainder values. -/
theorem zero_factor_does_not_cancel :
    (0 : ℂ) * 1 * 2 * 0 = 0 * 1 * 2 * 1 ∧ (0 : ℂ) ≠ 1 := by norm_num

/-- The exponent-zero terminal is one, so it cannot be discarded at s=1. -/
theorem terminal_zero_exponent (N : ℕ) : logPower ((N : ℝ) + 1) 0 = 1 := by
  simp [logPower]

/-- All terminal terms remain at the empty-prefix finite scope. -/
theorem empty_prefix_at_two :
    (1 - logPower 1 (-1)) / (1 : ℂ) + (1 - logPower 1 (-2)) / 2 +
      2 * (1 - logPower 1 (-3)) / 12 - 24 *
        (∑ k ∈ Finset.range 0, GRWTSK.RiemannHypothesis.CubicPowerSummation.cellRemainder
          ((k : ℝ) + 1) (-2)) = 0 := by simp [logPower]

/-- A local count bound does not identify an arbitrary analytic regular contribution. -/
theorem zero_divisor_does_not_bound_regular_term (A : ℂ) :
    logDeriv (fun z : ℂ => Complex.exp (A * z)) 0 = A := by
  rw [logDeriv_apply, (((hasDerivAt_id (0 : ℂ)).const_mul A).cexp).deriv]
  simp

end
end GRWTSK.NumberTheory.Chebyshev.Checks.CubicZetaIdentityControls
