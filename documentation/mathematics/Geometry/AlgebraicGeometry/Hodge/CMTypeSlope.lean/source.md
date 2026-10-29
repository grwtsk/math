# Complete source: GRWTSK.AlgebraicGeometry.Hodge.CMTypeSlope

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f363b701a19db6e847abc45b6525d877510fbfa8` · SHA-256 `8a533822988517f7d75610e2770ca7582185f05b0c50968cf79bb666b3e87104`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
External manuscript source:
openai/math@1581d4cbdd69a0faf34b2089614fe2a814316a6a,
The rational Hodge conjecture for CM abelian varieties,
build/sections/05c-cm-types.tex, eq:cm-sign-to-hodge-type.
This file formalizes only the rational arithmetic identity relating the sign,
valuation, and slope parameter. -/
import GRWTSK.AlgebraicGeometry.Hodge.CMFourBalance

set_option autoImplicit false

namespace GRWTSK.AlgebraicGeometry.Hodge.CMTypeSlope

open CMFourBalance

/-- The slope parameter used in the manuscript's active Hodge calculation. -/
def slopeFromValuation (nu : ℚ) : ℚ :=
  (1 / 2 : ℚ) - (1 / 3 : ℚ) * nu

/-- The valuation/sign identity forces the slope to be the elementary sign
selector `(1+v)/2`. -/
theorem slope_eq_signSelector
    {v : ℤ} (hv : IsSign v) {nu : ℚ}
    (hnu : nu = -(3 / 2 : ℚ) * (v : ℚ)) :
    slopeFromValuation nu = ((1 : ℚ) + (v : ℚ)) / 2 := by
  rcases hv with rfl | rfl <;>
    norm_num [slopeFromValuation] at hnu ⊢

/-- Positive CM sign gives pure slope one. -/
theorem slope_eq_one_of_positive
    {nu : ℚ} (hnu : nu = -(3 / 2 : ℚ)) :
    slopeFromValuation nu = 1 := by
  norm_num [slopeFromValuation] at hnu ⊢

/-- Negative CM sign gives pure slope zero. -/
theorem slope_eq_zero_of_negative
    {nu : ℚ} (hnu : nu = (3 / 2 : ℚ)) :
    slopeFromValuation nu = 0 := by
  norm_num [slopeFromValuation] at hnu ⊢

/-- Exact two-case slope conclusion from a CM sign and the selected valuation
identity. -/
theorem slope_zero_or_one_of_sign
    {v : ℤ} (hv : IsSign v) {nu : ℚ}
    (hnu : nu = -(3 / 2 : ℚ) * (v : ℚ)) :
    slopeFromValuation nu = 0 ∨ slopeFromValuation nu = 1 := by
  rcases hv with rfl | rfl
  · exact Or.inr (by norm_num [slopeFromValuation] at hnu ⊢)
  · exact Or.inl (by norm_num [slopeFromValuation] at hnu ⊢)

end GRWTSK.AlgebraicGeometry.Hodge.CMTypeSlope
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f3c9c58668a11d77a2e42db99639c7ffb35166e882a18402a8a02aa7af6b2132 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/Hodge/CMTypeSlope.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
