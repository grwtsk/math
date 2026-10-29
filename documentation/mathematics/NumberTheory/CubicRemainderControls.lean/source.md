# Complete source: GRWTSK.NumberTheory.Chebyshev.Checks.CubicRemainderControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `66338ce4012097de214ab6a18473e05be7a8a0b9` · SHA-256 `a05c5a093594a1e06d3a5ed53551cdd15b39d533b016f5e19192a5daa8977292`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CubicRemainderHolomorphic

set_option autoImplicit false

/-! Pure source controls. None has been executed by Lean. No zeta sample is used. -/
namespace GRWTSK.NumberTheory.Chebyshev.Checks.CubicRemainderControls

open scoped BigOperators
open GRWTSK.Analysis.Real.PowerCellMajorant
open GRWTSK.RiemannHypothesis.CubicPowerSummation
open GRWTSK.RiemannHypothesis.CubicRemainder
open GRWTSK.RiemannHypothesis.CubicRemainderHolomorphic

noncomputable section

/-- Empty included data retains the full remainder budget, not a zero tail. -/
theorem empty_prefix_retains_budget (s : ℂ) (hs : -1 ≤ s.re) :
    ‖cubicRemainder s - ∑ k ∈ Finset.range 0, cellRemainder ((k : ℝ) + 1) (-s)‖ ≤
      (1 / 48 : ℝ) := by simpa using norm_sub_prefix_le_inverse s hs 0

/-- After one included cell the first omitted left endpoint is two. -/
theorem one_cell_tail_bound (s : ℂ) (hs : -1 ≤ s.re) :
    ‖cubicRemainder s - cellRemainder 1 (-s)‖ ≤ (1 / 96 : ℝ) := by
  simpa using norm_sub_prefix_le_inverse s hs 1

/-- The remainder is analytic at one even though the separate zeta expression has a pole there. -/
theorem remainder_analytic_at_one : AnalyticAt ℂ cubicRemainder 1 :=
  analyticOnNhd_cubicRemainder 1 (by norm_num)

theorem remainder_bound_at_one : ‖cubicRemainder 1‖ ≤ (1 / 144 : ℝ) := by
  simpa using norm_cubicRemainder_le 1 (by norm_num)

/-- The totalized p=0 quotient is not the positive integral represented for p>0. -/
theorem zero_margin_totalizes (q : ℝ) : powerCell q 0 = 0 := by simp [powerCell]

/-- Negative-exponent order reverses below one, outside the half-plane-majorant cell domain. -/
theorem below_one_reverses_exponent_bound :
    (1 / (1 / 2 : ℝ) ^ 3) < 1 / (1 / 2 : ℝ) ^ 4 := by norm_num

/-- At a zero cubic prefactor, multiplication cannot recover the remainder. -/
theorem zero_prefactor_does_not_identify_remainder :
    ((-1 : ℂ) * (-1 + 1) * (-1 + 2)) * 0 =
      ((-1 : ℂ) * (-1 + 1) * (-1 + 2)) * 1 ∧ (0 : ℂ) ≠ 1 := by norm_num

/-- Analytic bounds alone do not identify the arithmetic source. -/
theorem same_bound_distinct_constants :
    ‖(0 : ℂ)‖ ≤ (1 / 48 : ℝ) ∧ ‖(1 / 96 : ℂ)‖ ≤ (1 / 48 : ℝ) ∧
      (0 : ℂ) ≠ 1 / 96 := by norm_num

end
end GRWTSK.NumberTheory.Chebyshev.Checks.CubicRemainderControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=14b52a52d6747776af78d30d45ee51c71a20f984af6918e3f4b26fc5265f7b20 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Chebyshev/Checks/CubicRemainderControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
