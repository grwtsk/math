import FormalResearch.RiemannHypothesis.SourceMangoldtNorm

/-!
# Pointwise full-norm comparison obstruction for the actual Mangoldt operator

Prepared from existing literal-source declarations; this ignored module is
UNCOMPILED. The inequality is an obstruction to bounded full-norm models.
It is not an upper bound on the matched source form or the signed RH residual.
No unbounded theta operator or unsupported common-carrier transport is assumed.

AI attribution: prepared with OpenAI Codex; no Lean verification claimed.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceMangoldtNorm
open SourceReflectionDuality SourceMangoldtInteraction

/-- Any full-norm comparison pays the actual source operator's proved lower mass. -/
theorem actual_full_operator_comparison_norm_lower {A : ℝ} (hA : 1 ≤ A)
    (B : ComplexL2 →L[ℂ] ComplexL2) :
    2 * A - Real.log 2 - 1 - ‖B‖ ≤ ‖mangoldtInteraction A - B‖ := by
  have hl := mangoldtInteraction_norm_lower hA
  have ht := norm_add_le (mangoldtInteraction A - B) B
  rw [sub_add_cancel] at ht
  linarith

end FormalResearch.RiemannHypothesis.SourceMangoldtNorm
