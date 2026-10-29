# Nat Sqrt Real Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f025599bdddbdf0ee8ba102b29622647bcf0a9c8` · SHA-256 `ffb435ab672b490b80bb7f2f307f6a412b6a793af1de9bdb029e47c8b4e06524`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Mathlib.Analysis.Real.Sqrt
public import Mathlib.Data.Rat.NatSqrt.Defs

/-!
# Rational approximations to square roots of naturals

Comparisons between rational approximations to the square root of a natural number
and the real square root.
-/

public section

namespace Nat

theorem ratSqrt_le_realSqrt (x : ℕ) {prec : ℕ} (h : 0 < prec) : ratSqrt x prec ≤ √x := by
  have := ratSqrt_sq_le (x := x) h
  have : (x.ratSqrt prec ^ 2 : ℝ) ≤ ↑x := by norm_cast
  have := Real.sqrt_monotone this
  rwa [Real.sqrt_sq] at this
  simpa only [Rat.cast_nonneg] using ratSqrt_nonneg _ _

theorem realSqrt_lt_ratSqrt_add_inv_prec (x : ℕ) {prec : ℕ} (h : 0 < prec) :
    √x < ratSqrt x prec + 1 / prec := by
  have := lt_ratSqrt_add_inv_prec_sq (x := x) h
  have : (x : ℝ) < ↑((x.ratSqrt prec + 1 / prec) ^ 2 : ℚ) := by norm_cast
  have := Real.sqrt_lt_sqrt (by simp) this
  rw [Rat.cast_pow, Real.sqrt_sq] at this
  · push_cast at this
    exact this
  · push_cast
    exact add_nonneg (by simpa using ratSqrt_nonneg _ _) (by simp)

theorem realSqrt_mem_Ico (x : ℕ) {prec : ℕ} (h : 0 < prec) :
    √x ∈ Set.Ico (ratSqrt x prec : ℝ) (ratSqrt x prec + 1 / prec : ℝ) := by
  grind [ratSqrt_le_realSqrt, realSqrt_lt_ratSqrt_add_inv_prec]

#adaptation_note
/--
nightly-2025-09-11
We're investigating changing the `grind` heuristics for selecting patterns.
Under one heuristic, the next proof would fail if we just passed `realSqrt_lt_ratSqrt_add_inv_prec`
to `grind` in the next proof.
So for robustness I'm explicitly setting the pattern here.
-/
local grind_pattern realSqrt_lt_ratSqrt_add_inv_prec => (x.ratSqrt prec : ℝ)

theorem ratSqrt_mem_Ioc (x : ℕ) {prec : ℕ} (h : 0 < prec) :
    (ratSqrt x prec : ℝ) ∈ Set.Ioc (√x - 1 / prec) √x := by
  grind [ratSqrt_le_realSqrt]

end Nat
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0e568f693ee038e23201f2d5da3cd81bd25e3318b856717b620cb85bb5eca9ec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Variantffb435ab672b490b80bb7f2f307f6a412b6a793af1de9bdb029e47c8b4e06524.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
