/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Inequalities.CompactProfileDifferentialBounds
import GRWTSK.Analysis.IntegralTransforms.LogarithmicProfileDerivative

/-!
Current source verification is recorded in
`evidence/Analysis/InnerProductSpace/CausalRealization/formalization-admission.json`.
Original draft annotations and failed checks remain in the preserved evidence archive.

# Actual compact profile logarithmic derivative and its positive-side price

This adapter uses the actual integral-normalized correlation
and its genuine derivative. The bound retains the logarithmic-weight derivative
and the profile derivative. It does not bound a finite kernel or native sum.
The generic derivative dependency itself is awaiting repaired native acceptance.
-/

namespace GRWTSK.Analysis.IntegralTransforms.CompactProfileLogarithmicDerivative

open GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticSupplier
open GRWTSK.Analysis.Inequalities.CompactProfileDifferentialBounds

noncomputable section

/-- The actual logarithmic summand has both derivative contributions at every positive argument. -/
theorem actual_logarithmic_profile_hasDerivAt {A t x : ℝ} (hA : 0 < A) (hx : 0 < x) :
    HasDerivAt (fun y : ℝ ↦ Real.log y / Real.sqrt y *
      (deriv (deriv (correlation A)) (t + Real.log y) -
        (1 / 2 : ℝ) * deriv (correlation A) (t + Real.log y)))
      (((1 - Real.log x / 2) * (deriv (deriv (correlation A)) (t + Real.log x) -
        (1 / 2 : ℝ) * deriv (correlation A) (t + Real.log x)) +
          Real.log x * (deriv (deriv (deriv (correlation A))) (t + Real.log x) -
            (1 / 2 : ℝ) * deriv (deriv (correlation A)) (t + Real.log x))) /
              (x * Real.sqrt x)) x := by
  exact LogarithmicProfileDerivative.logarithmic_profile_hasDerivAt hx
    (differential_hasDerivAt hA (t + Real.log x))

/-- The complete actual positive-side derivative price uses the accepted continuous B and D. -/
theorem actual_logarithmic_profile_derivative_abs_le {A t x : ℝ} (hA : 1 ≤ A) (hx : 1 ≤ x) :
    |deriv (fun y : ℝ ↦ Real.log y / Real.sqrt y *
      (deriv (deriv (correlation A)) (t + Real.log y) -
        (1 / 2 : ℝ) * deriv (correlation A) (t + Real.log y))) x| ≤
      (1 + Real.log x / 2) * (162826 / (7623 * A ^ 2) + (5 / A) / 2) /
        (x * Real.sqrt x) +
      Real.log x * (132 / A ^ 3 + (162826 / (7623 * A ^ 2)) / 2) /
        (x * Real.sqrt x) := by
  have genuine := differential_hasDerivAt (by linarith : 0 < A) (t + Real.log x)
  have derivativePrice := differential_derivative_abs_le hA (t + Real.log x)
  rw [genuine.deriv] at derivativePrice
  exact LogarithmicProfileDerivative.logarithmic_profile_derivative_abs_le hx genuine
    (differential_abs_le hA (t + Real.log x)) derivativePrice

end

end GRWTSK.Analysis.IntegralTransforms.CompactProfileLogarithmicDerivative
