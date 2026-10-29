# Complete source: GRWTSK.Algebra.CommutativeAlgebra.ReciprocalPolynomial.Variant82188cd3da5c0611e11f2245d451ee3ffdf874372e5fba15427ad80cca7547f6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad87e4f90c52840e03743ab1ad0d219cfe3c60e1` · SHA-256 `82188cd3da5c0611e11f2245d451ee3ffdf874372e5fba15427ad80cca7547f6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Algebra.Polynomial.Basic
import Mathlib.Tactic.Ring

namespace Noeoueue.Modular.ReciprocalPolynomial

open Polynomial

variable {R : Type} [CommRing R]

theorem generic_factorization (alpha beta : R) :
    (X - C alpha) * (X - C beta) = X ^ 2 - C (alpha + beta) * X + C (alpha * beta) := by
  calc
    (X - C alpha) * (X - C beta) = X ^ 2 - (C alpha + C beta) * X + C alpha * C beta := by ring
    _ = X ^ 2 - C (alpha + beta) * X + C (alpha * beta) := by simp

theorem determinant_one_polynomial (alpha beta : R) (hdet : alpha * beta = 1) :
    (X - C alpha) * (X - C beta) = X ^ 2 - C (alpha + beta) * X + 1 := by
  rw [generic_factorization, hdet]
  simp

variable {K : Type} [GroupWithZero K]

theorem inverse_involution (alpha : K) : (alpha⁻¹)⁻¹ = alpha := inv_inv alpha

/-- The central-character dual remains separately typed from plain inversion. -/
def characterDual (chi alpha : K) : K := chi * alpha⁻¹

end Noeoueue.Modular.ReciprocalPolynomial
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a5b299f99e0b8aa028939e8b6cdd8fa13d17b01cbda688643f34868b7a7f04c6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/ReciprocalPolynomial/Variant82188cd3da5c0611e11f2245d451ee3ffdf874372e5fba15427ad80cca7547f6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
