/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the MIT license; see LICENSE.
Developed with OpenAI Codex. Historical human/machine authoring split unknown.
Lean and mathlib retain upstream identities, named authors and licenses.
-/
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Tactic.NormNum

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace GRWTSK.Analysis.Polarization

/-!
# Signed quadratic polarization

The real inner product is a signed difference of two nonnegative quadratic
sectors. Their separate nonnegativity supplies no sign for that difference.
These are generic identities; no arithmetic weight or RH estimate is assumed.
-/


open scoped InnerProductSpace


variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℝ E]


/-- Real polarization, retaining the subtraction between the two sectors. -/
theorem real_inner_eq_signed_norm_square (x y : E) :
    ⟪x, y⟫_ℝ = (‖x + y‖ ^ 2 - ‖x - y‖ ^ 2) / 4 := by
  simpa only [RCLike.re_to_real, pow_two] using
    (re_inner_eq_norm_add_mul_self_sub_norm_sub_mul_self_div_four (𝕜 := ℝ) x y)



/-- Both squared sectors can be nonnegative while their signed difference is
strictly negative: the explicit pair is `x = 1`, `y = -1` in `ℝ`. -/
theorem nonnegative_sectors_negative_difference :
    0 ≤ ‖(1 : ℝ) + (-1)‖ ^ 2 ∧
    0 ≤ ‖(1 : ℝ) - (-1)‖ ^ 2 ∧
    (‖(1 : ℝ) + (-1)‖ ^ 2 - ‖(1 : ℝ) - (-1)‖ ^ 2) / 4 < 0 := by
  norm_num



/-- Scaling the second vector gives arbitrarily negative signed differences;
separate positivity cannot supply even a fixed universal lower bound. -/
theorem signed_difference_has_no_universal_lower_bound :
    ¬ ∃ C : ℝ, ∀ x y : ℝ,
      -C ≤ (‖x + y‖ ^ 2 - ‖x - y‖ ^ 2) / 4 := by
  rintro ⟨C, hC⟩
  have h := hC 1 (-C - 1)
  rw [← real_inner_eq_signed_norm_square] at h
  norm_num at h




end GRWTSK.Analysis.Polarization
