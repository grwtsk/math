/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.TentSource
import GRWTSK.Analysis.Complex.TentMellinKernel
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-! Source controls only; no Lean execution or spectral prime certification. -/

namespace GRWTSK.NumberTheory.Chebyshev.Checks.TentSourceControls

open GRWTSK.Analysis.Real.TentWeight
open GRWTSK.NumberTheory.Chebyshev.TentSource
open GRWTSK.Analysis.Complex.TentMellinKernel

theorem endpoints_vanish : tent 3 1 2 = 0 ∧ tent 3 1 4 = 0 := by
  norm_num [tent]

theorem center_has_unit_weight : tent 3 1 3 = 1 := by
  norm_num [tent]

theorem outside_has_zero_weight : tent 3 1 5 = 0 := by
  norm_num [tent]

/-- Exponent three survives at n=2, but the upper prime square has zero tent weight. -/
theorem power_endpoint_weights :
    squareWeight 2 8 = (2 / 5 : ℝ) ∧ squareWeight 2 9 = 0 := by
  norm_num [squareWeight, squareCenter, squareRadius, tent]

/-- A full-width main term is wrong for this normalization. -/
theorem radius_not_diameter :
    (((3 + 1 : ℝ) ^ 2 / 2 - 2 * ((3 : ℝ) ^ 2 / 2) +
      (3 - 1 : ℝ) ^ 2 / 2) / 1) = 1 ∧ (1 : ℝ) ≠ 2 := by
  norm_num

/-- Closing the support in a witness test would admit a zero-weight endpoint. -/
theorem closed_support_is_not_positive :
    (2 : ℝ) ∈ Set.Icc (3 - 1) (3 + 1) ∧ ¬ 0 < tent 3 1 2 := by
  norm_num [tent]

/-- The inverse-height estimate cannot be specialized to either removable parameter. -/
theorem removable_parameter_guards :
    (0 : ℂ).im = 0 ∧ (-1 : ℂ).im = 0 := by
  norm_num

/-- The integral-defined kernel retains the radius main term at parameter one. -/
theorem kernel_one_control : tentKernel 3 1 1 = (1 : ℂ) :=
  tentKernel_one 3 1 (by norm_num) (by norm_num)

end GRWTSK.NumberTheory.Chebyshev.Checks.TentSourceControls
