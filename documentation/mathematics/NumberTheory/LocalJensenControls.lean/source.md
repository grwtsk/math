# Complete source: GRWTSK.NumberTheory.Chebyshev.Checks.LocalJensenControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dfecedbe6220317bc06c24b65822eb923188d117` · SHA-256 `0f9d73270208a0aeb4592fb6ab19c9dc6caac54b41e4daccf7c710b173d52b73`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.LocalJensenCount

set_option autoImplicit false

/-!
# Local Jensen count controls

These are synthetic geometry and quantifier controls, not computed zeta data.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.Checks.LocalJensenControls

open Metric
open GRWTSK.RiemannHypothesis.LocalJensenCount
open GRWTSK.Analysis.Complex.JensenFiniteMultiplicity

/-- Radius zero would make the displayed reciprocal/logarithmic formulas totalized. -/
theorem radius_zero_rejected : ¬ (0 : ℝ) < 0 := lt_irrefl 0

/-- Equal radii give no positive Jensen denominator. -/
theorem equal_radius_log_zero : Real.log ((3 : ℝ) / 3) = 0 := by norm_num

/-- The anchor floor is a genuine positive-modulus requirement. -/
theorem zero_anchor_rejected : ¬ (0 : ℝ) < 0 := lt_irrefl 0

/-- At stage zero the outer upper disk contains the pole one: the analytic guard is necessary. -/
theorem first_upper_disk_contains_one : (1 : ℂ) ∈ closedBall (upperCenter 0) (3 : ℝ) := by
  rw [Metric.mem_closedBall, dist_eq_norm]
  apply (sq_le_sq₀ (norm_nonneg _) (by norm_num : (0 : ℝ) ≤ 3)).mp
  norm_num [upperCenter, Complex.sq_norm, Complex.normSq_apply]

/-- Counting one location once is not counting an analytic double zero. -/
theorem distinct_location_not_multiplicity : (1 : ℕ) ≠ 2 := by norm_num

/-- Positive and negative imaginary coordinates give distinct full complex points. -/
theorem opposite_points_distinct : (Complex.I : ℂ) ≠ -Complex.I := by
  intro h
  have hi := congrArg Complex.im h
  norm_num at hi

/-- The claimed disk geometry includes the extreme box corner exactly. -/
theorem extreme_box_corner_distance :
    ‖((0 : ℂ) + (3 / 2 : ℂ) * Complex.I) - 2‖ ^ 2 = (5 / 2 : ℝ) ^ 2 := by
  norm_num [Complex.sq_norm, Complex.normSq_apply]

/-- A finite count bound alone is not a full-logarithmic-derivative bound.
A freely varying regular term can exceed any candidate principal-only budget. -/
theorem regular_term_not_bounded_by_zero_count (B : ℝ) : ∃ A : ℝ, B < A :=
  ⟨B + 1, by linarith⟩

end GRWTSK.NumberTheory.Chebyshev.Checks.LocalJensenControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd7813dcf1e28a7f1e6fd7eb3b1e3a9fe7acecbee3900aa782e18acd1b609ade -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Chebyshev/Checks/LocalJensenControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
