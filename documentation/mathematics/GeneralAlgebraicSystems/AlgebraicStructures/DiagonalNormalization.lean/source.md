# Complete source: GRWTSK.Algebra.Polynomial.DiagonalNormalization

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c39a19783791dd1f7592c05d624bed05cf51204e` · SHA-256 `09769d4252e91731ce6aae20e81a42a4dd97cece0b81b5ce597c8283eeb11fe7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Algebra.Polynomial.Coeff
import Mathlib.Tactic

/-! Correction check for the two distinct unpublished KL manuscript versions.
No Coxeter algebra, KL recurrence, or positivity-to-vanishing bridge is asserted. -/
namespace GRWTSK.Algebra.Polynomial

/-- The printed diagonal q² cannot equal the required diagonal 1 in ℤ[q]. -/
theorem X_sq_ne_one : (Polynomial.X : Polynomial ℤ) ^ 2 ≠ 1 := by
  intro h
  have hc := congrArg (fun p : Polynomial ℤ => p.coeff 0) h
  norm_num at hc

/-- A normalized polynomial family cannot have the printed q² diagonal. -/
theorem normalized_diagonal_ne_X_sq {W : Type*} (P : W → W → Polynomial ℤ)
    (diagonal : ∀ w, P w w = 1) (w : W) : P w w ≠ Polynomial.X ^ 2 := by
  rw [diagonal]
  exact Ne.symm X_sq_ne_one
end GRWTSK.Algebra.Polynomial
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c50430028d1b42eb80f401b4a7a811370d72462a75a0ba83fd59b0b4efa5946f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Polynomial/DiagonalNormalization.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
