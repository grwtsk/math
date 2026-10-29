# Complete source: GRWTSK.NumberTheory.Chebyshev.Checks.RationalLogControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `423192f44d69211177182eba82ff4586421b79ea` · SHA-256 `d957f39078058bdc2cbaceefcf3aa9428c14a59a35e2f29b3127332c257e0607`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.CanonicalTentLogEvaluation

set_option autoImplicit false

/-! Pure source controls. NOT_RUN / NOT_KERNEL_AUDITED.
These are rational identities and domain/error counterexamples, not zero data. -/

namespace GRWTSK.NumberTheory.Chebyshev.Checks.RationalLogControls

open GRWTSK.Analysis.Real.RationalLogEnclosure

theorem ratio_two : ratio 2 = (1 / 3 : ℚ) := by norm_num [ratio]

theorem one_has_zero_width (K : ℕ) : lower 1 K = 0 ∧ width 1 K = 0 := by
  simp [lower, width, ratio]

theorem empty_prefix_has_remainder : lower 2 0 = 0 ∧ width 2 0 = (3 / 4 : ℚ) := by
  norm_num [lower, width, ratio]

theorem first_term_and_full_width : lower 2 1 = (2 / 3 : ℚ) ∧
    width 2 1 = (1 / 12 : ℚ) := by
  norm_num [lower, width, ratio, Finset.sum_range_succ]

theorem midpoint_not_lower_endpoint :
    (DyadicInput.direct 2 (by norm_num) 0).center = (3 / 8 : ℚ) ∧
    (DyadicInput.direct 2 (by norm_num) 0).error = (3 / 8 : ℚ) := by
  norm_num [DyadicInput.direct, DyadicInput.center, DyadicInput.error,
    DyadicInput.lowerValue, DyadicInput.totalWidth, lower, width, ratio]

/-- Halving the width without moving to its midpoint can miss the actual log. -/
theorem half_width_at_lower_is_unsound : ¬ |Real.log 2| ≤ (3 / 8 : ℝ) := by
  have h := (log_bounds 2 (by norm_num) 1).1
  norm_num [lower, ratio, Finset.sum_range_succ] at h
  have ha := le_abs_self (Real.log 2)
  linarith

theorem exponent_scales_log_two_error :
    (DyadicInput.reduced 4 2 0 (by norm_num)).error = (3 / 4 : ℚ) := by
  norm_num [DyadicInput.reduced, DyadicInput.error, DyadicInput.totalWidth, width, ratio]

theorem wrong_dyadic_source_rejected : ¬ (8 : ℝ) = (2 : ℝ) ^ 1 * (2 : ℚ) := by norm_num

theorem invalid_mantissa_rejected : ¬ (1 : ℚ) ≤ 0 := by norm_num

theorem unreduced_ratio_can_exceed_third : (1 / 3 : ℚ) < ratio (5 / 2) := by
  norm_num [ratio]

theorem log_accuracy_does_not_discharge_exp_degree :
    ¬ (10 : ℝ) / ((2 : ℕ) + 1) ≤ 1 / 2 := by norm_num

theorem coarse_log_displacement_rejected : ¬ (10 : ℝ) * (3 / 8) ≤ 1 := by norm_num

end GRWTSK.NumberTheory.Chebyshev.Checks.RationalLogControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c63927712ae493c8786bf2949413eac92804a8ff3fc84d91122d8bee314d9bc9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Chebyshev/Checks/RationalLogControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
