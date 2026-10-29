# Complete source: GRWTSK.LinearAlgebra.Matrix.Checks.Negative.TraceRankMissingHermitian

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0a2dfa9eae1166e4f6de49f011b91fe0671071e2` · SHA-256 `cdf692545dd4cc4270770ee802bb31c4d3c90271c85a9754d7e1d7d942220a5f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Intentionally rejected: without Hermitian symmetry, even the second
spectral moment can be negative. The intended false inequality is 0 ≤ -1. -/
import GRWTSK.LinearAlgebra.Matrix.TraceRank
import Mathlib.Tactic.NormNum

example : 0 ≤ (((Matrix.diagonal (fun _ : Unit => Complex.I)) ^ 2).trace).re := by
  have hv : (((Matrix.diagonal (fun _ : Unit => Complex.I)) ^ 2).trace).re = -1 := by
    norm_num [Matrix.diagonal_pow, Function.comp_def, Matrix.trace]
  rw [hv]
  exact (show (0 : ℝ) ≤ 1 by norm_num)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=27fbda12ecdf703a9f9f023f89ed3c1875b34f6c4fc64c4cf7fbe432453195d9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/MatrixTheory/Checks/Negative/TraceRankMissingHermitian__SourceOccurrencec8325afdc7f8d64aa1077f96.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
