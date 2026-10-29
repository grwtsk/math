# Complete source: GRWTSK.Analysis.MeromorphicOrder.Variant9335ca7dcfbc4a98d57defaf1282dd4e0737a2579da3924135351dda85aaa6a7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd5a1b20583ecd828d3b79a7958deffcd25fab28` · SHA-256 `9335ca7dcfbc4a98d57defaf1282dd4e0737a2579da3924135351dda85aaa6a7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Surface.Core.ComplexAnalysis.RectangleContour
public import Mathlib.Analysis.Meromorphic.Divisor
import Mathlib.Tactic

/-!
# Meromorphic orders on compact rectangles

This module packages the multiplicity-bearing divisor already supplied by
mathlib and proves that its support on a compact rectangle is finite.  It does
not identify divisor coefficients with contour residues.
-/

public section

namespace Surface.Core.ComplexAnalysis

noncomputable section

open Set Complex

/-- Integer-valued meromorphic divisor restricted to a closed rectangle. -/
def rectangleDivisor (f : ℂ → ℂ) (z w : ℂ) :
    Function.locallyFinsuppWithin (closedRectangle z w) ℤ :=
  MeromorphicOn.divisor f (closedRectangle z w)

/-- Pointwise divisor coefficients are totalized meromorphic orders. -/
theorem rectangleDivisor_apply
    {f : ℂ → ℂ} {z w s : ℂ}
    (hf : MeromorphicOn f (closedRectangle z w))
    (hs : s ∈ closedRectangle z w) :
    rectangleDivisor f z w s = (meromorphicOrderAt f s).untop₀ := by
  exact MeromorphicOn.divisor_apply hf hs

/-- A compact rectangle meets the zero/pole divisor in only finitely many
points. -/
theorem rectangleDivisor_support_finite
    {f : ℂ → ℂ} {z w : ℂ}
    (hf : MeromorphicOn f (closedRectangle z w)) :
    (rectangleDivisor f z w).support.Finite := by
  exact hf.divisor_support_finite_of_subset
    (isCompact_closedRectangle z w) Subset.rfl

/-- Finite support set used by future finite contour bookkeeping. -/
def rectangleDivisorSupportFinset
    (f : ℂ → ℂ) (z w : ℂ)
    (hf : MeromorphicOn f (closedRectangle z w)) : Finset ℂ :=
  (rectangleDivisor_support_finite hf).toFinset

@[simp]
theorem mem_rectangleDivisorSupportFinset
    {f : ℂ → ℂ} {z w s : ℂ}
    (hf : MeromorphicOn f (closedRectangle z w)) :
    s ∈ rectangleDivisorSupportFinset f z w hf ↔
      rectangleDivisor f z w s ≠ 0 := by
  simp [rectangleDivisorSupportFinset, Function.mem_support]

end

end Surface.Core.ComplexAnalysis
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4d8ce7c1a8573968ef0fd6a3ebbcf2a56b3b12a78fc587665e7001d1468797f8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeromorphicOrder/Variant9335ca7dcfbc4a98d57defaf1282dd4e0737a2579da3924135351dda85aaa6a7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
