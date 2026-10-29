# Derivative — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8c6795c84ae9d0af98ce85bb8e8cb7aaecc40895` · SHA-256 `52967e88ac2bf661470b1955d4df0cce536bb4500bb30ee6e162527847903074`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Polynomial.Cubic

/-!
# Cubic derivative

Algebraic differentiation remains inside the canonical polynomial ring.
-/

namespace Mathematics.Polynomial

open _root_.Polynomial

/-- Differentiating a cubic yields its coefficient-correct quadratic. -/
@[simp] theorem derivative_cubic (a b c d : ℝ) :
    derivative (cubic a b c d) = quadratic (3 * a) (2 * b) c := by
  simp only [
    cubic,
    quadratic,
    derivative_add,
    derivative_C_mul_X_pow,
    derivative_C_mul_X,
    derivative_C
  ]
  ring_nf

end Mathematics.Polynomial
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=56f48973a65662143a66971bde427064ab5423826e4adba1874c5a3b5a75b6ad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variant52967e88ac2bf661470b1955d4df0cce536bb4500bb30ee6e162527847903074.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
