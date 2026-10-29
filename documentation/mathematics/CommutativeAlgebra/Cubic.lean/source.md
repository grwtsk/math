# Cubic — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3070e8e66793c24677dc92e40ecbe75b55a945eb` · SHA-256 `db80dee895cd6684214d5ea61b28d1264ef777ee084b851ac296090c6c5ac4fb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Polynomial.Quadratic

/-!
# Real cubic polynomials

This is the degree-three member of the same canonical polynomial carrier used
for quadratics.
-/

namespace Mathematics.Polynomial

open _root_.Polynomial
open scoped Polynomial

/-- The real polynomial `aX³ + bX² + cX + d`. -/
noncomputable def cubic (a b c d : ℝ) : ℝ[X] :=
  C a * X ^ 3 + C b * X ^ 2 + C c * X + C d

@[simp] theorem eval_cubic (a b c d x : ℝ) :
    (cubic a b c d).eval x =
      a * x ^ 3 + b * x ^ 2 + c * x + d := by
  simp [cubic]

end Mathematics.Polynomial
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ede3d3c6a7c943feef2fa95ad327340b1be2f2446ff053bdae18ac333d4fcbc3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Cubic/Variantdb80dee895cd6684214d5ea61b28d1264ef777ee084b851ac296090c6c5ac4fb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
