/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Inequalities.FiniteShiftedDerivativeBounds

/-!
# Pointwise bounds for the actual compact correlation differential expression

These bounds apply to the actual integral-normalized correlation
and its actual derivatives. They price the continuous profile and its derivative;
they do not bound a finite logarithmic sum, a signed arithmetic sum or a native
pickup-response Gram. Every source scale premise is explicit.
-/

namespace GRWTSK.Analysis.Inequalities.CompactProfileDifferentialBounds

open GRWTSK.ProofHorizon.CorkscrewChamberCap
open ArithmeticSupplier SourceRegularity SourceHigherRegularity KernelDerivativePrice

noncomputable section

/-- The actual differential expression has its literal third/second derivative. -/
theorem differential_hasDerivAt {A : ℝ} (hA : 0 < A) (x : ℝ) :
    HasDerivAt (fun u : ℝ ↦ deriv (deriv (correlation A)) u -
      (1 / 2 : ℝ) * deriv (correlation A) u)
      (deriv (deriv (deriv (correlation A))) x -
        (1 / 2 : ℝ) * deriv (deriv (correlation A)) x) x := by
  have firstDiff := (correlation_first_contDiff_three hA).differentiable (by norm_num)
  have secondDiff := (correlation_second_contDiff_two hA).differentiable (by norm_num)
  have first := (firstDiff x).hasDerivAt
  have second := (secondDiff x).hasDerivAt
  exact second.sub (first.const_mul (1 / 2 : ℝ))

/-- The continuous profile price retains both actual derivative contributions. -/
theorem differential_abs_le {A : ℝ} (hA : 1 ≤ A) (x : ℝ) :
    |deriv (deriv (correlation A)) x - (1 / 2 : ℝ) * deriv (correlation A) x| ≤
      162826 / (7623 * A ^ 2) + (5 / A) / 2 := by
  have bound := weighted_difference_abs_le (w := 1) (by norm_num)
    (correlation_second_abs_le hA x) (correlation_first_abs_le hA x)
  simpa only [one_mul] using bound

/-- The profile derivative price retains both actual third/second contributions. -/
theorem differential_derivative_abs_le {A : ℝ} (hA : 1 ≤ A) (x : ℝ) :
    |deriv (fun u : ℝ ↦ deriv (deriv (correlation A)) u -
      (1 / 2 : ℝ) * deriv (correlation A) u) x| ≤
      132 / A ^ 3 + (162826 / (7623 * A ^ 2)) / 2 := by
  rw [(differential_hasDerivAt (by linarith : 0 < A) x).deriv]
  have bound := weighted_difference_abs_le (w := 1) (by norm_num)
    (correlation_third_deriv_abs_le hA x) (correlation_second_abs_le hA x)
  simpa only [one_mul] using bound

/-- The literal continuous profile is silent on the strict upper support tail. -/
theorem differential_zero_upper {A x : ℝ} (hA : 0 < A) (hx : 2 * A < x) :
    deriv (deriv (correlation A)) x - (1 / 2 : ℝ) * deriv (correlation A) x = 0 := by
  obtain ⟨firstZero, secondZero⟩ := correlation_derivatives_zero_of_two_mul_lt hA hx
  rw [firstZero, secondZero]
  ring

end

end GRWTSK.Analysis.Inequalities.CompactProfileDifferentialBounds
