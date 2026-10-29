/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Tactic

/-!
# Positive-side derivative of a logarithmic profile

The derivative and price retain both contributions from the
logarithmic weight and the supplied profile derivative. All assertions concern
positive arguments. No particular source, arithmetic estimate or global source
smoothness is assumed.
-/

namespace GRWTSK.Analysis.IntegralTransforms.LogarithmicProfileDerivative

noncomputable section

/-- The positive-side logarithmic pullback has its full two-term derivative. -/
theorem logarithmic_profile_hasDerivAt {F : ℝ → ℝ} {d t x : ℝ}
    (hx : 0 < x) (hF : HasDerivAt F d (t + Real.log x)) :
    HasDerivAt (fun y : ℝ ↦ Real.log y / Real.sqrt y * F (t + Real.log y))
      (((1 - Real.log x / 2) * F (t + Real.log x) + Real.log x * d) /
        (x * Real.sqrt x)) x := by
  have logDerivative := Real.hasDerivAt_log hx.ne'
  have sqrtDerivative := Real.hasDerivAt_sqrt hx.ne'
  have sqrtNe : Real.sqrt x ≠ 0 := (Real.sqrt_pos.mpr hx).ne'
  have shiftDerivative := (hasDerivAt_const x t).add logDerivative
  have rule := (logDerivative.div sqrtDerivative sqrtNe).mul (hF.comp x shiftDerivative)
  change HasDerivAt
    (fun y : ℝ ↦ Real.log y / Real.sqrt y * F (t + Real.log y))
    (((x⁻¹ * Real.sqrt x - Real.log x * (1 / (2 * Real.sqrt x))) /
      (Real.sqrt x) ^ 2) * F (t + Real.log x) +
        (Real.log x / Real.sqrt x) * (d * (0 + x⁻¹))) x at rule
  have scalar :
      ((x⁻¹ * Real.sqrt x - Real.log x * (1 / (2 * Real.sqrt x))) /
        (Real.sqrt x) ^ 2) * F (t + Real.log x) +
          (Real.log x / Real.sqrt x) * (d * (0 + x⁻¹)) =
      ((1 - Real.log x / 2) * F (t + Real.log x) + Real.log x * d) /
        (x * Real.sqrt x) := by
    rw [zero_add, Real.sq_sqrt hx.le]
    field_simp
    nlinarith [congrArg (fun z : ℝ ↦ F (t + Real.log x) * z) (Real.sq_sqrt hx.le),
      congrArg (fun z : ℝ ↦ Real.log x * F (t + Real.log x) * z) (Real.sq_sqrt hx.le)]
  rw [scalar] at rule
  exact rule

/-- Pointwise profile prices give the complete positive-tail derivative price. -/
theorem logarithmic_profile_derivative_abs_le {F : ℝ → ℝ} {d t x B D : ℝ}
    (hx : 1 ≤ x) (hF : HasDerivAt F d (t + Real.log x))
    (price : |F (t + Real.log x)| ≤ B) (derivativePrice : |d| ≤ D) :
    |deriv (fun y : ℝ ↦ Real.log y / Real.sqrt y * F (t + Real.log y)) x| ≤
      (1 + Real.log x / 2) * B / (x * Real.sqrt x) +
        Real.log x * D / (x * Real.sqrt x) := by
  have positive : 0 < x := lt_of_lt_of_le zero_lt_one hx
  have logNonneg : 0 ≤ Real.log x := Real.log_nonneg hx
  have coefficient : |1 - Real.log x / 2| ≤ 1 + Real.log x / 2 := by
    calc
      |1 - Real.log x / 2| ≤ |(1 : ℝ)| + |Real.log x / 2| := by
        simpa only [sub_eq_add_neg, abs_neg] using
          abs_add_le (1 : ℝ) (-(Real.log x / 2))
      _ = 1 + Real.log x / 2 := by rw [abs_one, abs_of_nonneg (by positivity)]
  have numerator : |(1 - Real.log x / 2) * F (t + Real.log x) + Real.log x * d| ≤
      (1 + Real.log x / 2) * B + Real.log x * D := by
    calc
      _ ≤ |(1 - Real.log x / 2) * F (t + Real.log x)| + |Real.log x * d| :=
        abs_add_le _ _
      _ = |1 - Real.log x / 2| * |F (t + Real.log x)| + Real.log x * |d| := by
        rw [abs_mul, abs_mul, abs_of_nonneg logNonneg]
      _ ≤ (1 + Real.log x / 2) * B + Real.log x * D :=
        add_le_add (mul_le_mul coefficient price (abs_nonneg _) (by positivity))
          (mul_le_mul_of_nonneg_left derivativePrice logNonneg)
  have denominator : 0 < x * Real.sqrt x := mul_pos positive (Real.sqrt_pos.mpr positive)
  rw [(logarithmic_profile_hasDerivAt positive hF).deriv, abs_div,
    abs_of_pos denominator, ← add_div]
  exact div_le_div_of_nonneg_right numerator denominator.le

end

end GRWTSK.Analysis.IntegralTransforms.LogarithmicProfileDerivative
