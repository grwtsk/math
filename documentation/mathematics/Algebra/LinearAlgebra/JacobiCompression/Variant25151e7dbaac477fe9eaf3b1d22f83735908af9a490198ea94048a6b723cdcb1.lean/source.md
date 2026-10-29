# Complete source: GRWTSK.Algebra.LinearAlgebra.JacobiCompression.Variant25151e7dbaac477fe9eaf3b1d22f83735908af9a490198ea94048a6b723cdcb1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f66f45beffbbb048f1e5e6350d9da9c40addc361` · SHA-256 `25151e7dbaac477fe9eaf3b1d22f83735908af9a490198ea94048a6b723cdcb1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.QSeries.OnePrimeMoment
import Mathlib.Data.Matrix.Basic

/-!
# Exact Jacobi compression data
-/

namespace Mathematics.SemiLocalDefect.QSeries

open scoped BigOperators

abbrev RationalMatrix (rank : Nat) :=
  Matrix (Fin rank) (Fin rank) ℚ

def rationalQuadraticForm
    {rank : Nat}
    (matrix : RationalMatrix rank)
    (vector : Fin rank → ℚ) : ℚ :=
  ∑ row, ∑ column,
    vector row * matrix row column * vector column

structure JacobiCompression
    (system : OnePrimeMomentSystem)
    (rank : Nat) where
  defect : RationalMatrix rank
  symmetric :
    ∀ row column,
      defect row column =
        defect column row
  exactEvaluation :
    ∀ row column,
      defect row column =
        (system.moment
          (row.val + column.val)).evaluateThrough
            rank system.q
  compressionDigest : CompressionId

end Mathematics.SemiLocalDefect.QSeries
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=048f12563c2e9c53000f99eee263c3e605cb9df3ba8c79945658a38f118eaf4c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/JacobiCompression/Variant25151e7dbaac477fe9eaf3b1d22f83735908af9a490198ea94048a6b723cdcb1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
