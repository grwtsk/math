# Complete source: GRWTSK.Analysis.MeromorphicOrder.Variant42943ca8cb817fde80b76821d62395f1678c9d5372202d915144c29c108801e7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8cb1080eb7bde37b10ffa28db83334b75d7c2941` · SHA-256 `42943ca8cb817fde80b76821d62395f1678c9d5372202d915144c29c108801e7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
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
@[expose]
def rectangleDivisor (f : ℂ → ℂ) (z w : ℂ) :
    Function.locallyFinsuppWithin (closedRectangle z w) ℤ :=
  MeromorphicOn.divisor f (closedRectangle z w)

/-- Pointwise divisor coefficients are totalized meromorphic orders. -/
@[surface_adapter, surface_published]
theorem rectangleDivisor_apply
    {f : ℂ → ℂ} {z w s : ℂ}
    (hf : MeromorphicOn f (closedRectangle z w))
    (hs : s ∈ closedRectangle z w) :
    rectangleDivisor f z w s = (meromorphicOrderAt f s).untop₀ := by
  exact MeromorphicOn.divisor_apply hf hs

/-- A compact rectangle meets the zero/pole divisor in only finitely many
points. -/
@[surface_novel, surface_published]
theorem rectangleDivisor_support_finite
    {f : ℂ → ℂ} {z w : ℂ}
    (hf : MeromorphicOn f (closedRectangle z w)) :
    (rectangleDivisor f z w).support.Finite := by
  exact hf.divisor_support_finite_of_subset
    (isCompact_closedRectangle z w) Subset.rfl

/-- Finite support set used by future finite contour bookkeeping. -/
@[expose]
def rectangleDivisorSupportFinset
    (f : ℂ → ℂ) (z w : ℂ)
    (hf : MeromorphicOn f (closedRectangle z w)) : Finset ℂ :=
  (rectangleDivisor_support_finite hf).toFinset

@[surface_adapter, simp]
theorem mem_rectangleDivisorSupportFinset
    {f : ℂ → ℂ} {z w s : ℂ}
    (hf : MeromorphicOn f (closedRectangle z w)) :
    s ∈ rectangleDivisorSupportFinset f z w hf ↔
      rectangleDivisor f z w s ≠ 0 := by
  simp [rectangleDivisorSupportFinset, Function.mem_support]

end

end Surface.Core.ComplexAnalysis
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a2cc22d96578f7efa704b9212595f5747a0dded3717e2251f25ff6e328b348d1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeromorphicOrder/Variant42943ca8cb817fde80b76821d62395f1678c9d5372202d915144c29c108801e7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
