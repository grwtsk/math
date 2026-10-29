# Complete source: GRWTSK.Algebra.LinearAlgebra.MatrixTheory.Checks.Negative.TraceRankZeroSecondMoment

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ce3c23007d27b8de730c255637db49a54e39d56` · SHA-256 `86ba14d1dceb4d822ca182034a89bbcebe654bc5640ec8168b3cd2fbccd9001a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Intentionally rejected: the zero Hermitian matrix does not have strictly
positive second moment. The intended false inequality is 0 < 0. -/
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.TraceRank

example : 0 < (((0 : Matrix Unit Unit ℂ) ^ 2).trace).re := by
  have hv : (((0 : Matrix Unit Unit ℂ) ^ 2).trace).re = 0 := by simp
  rw [hv]
  exact (show (0 : ℝ) ≤ 0 from le_rfl)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bdfcda52e0c4128d1fca17c69f991fadc54f52d966301cae51c4d73d43cc51af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/MatrixTheory/Checks/Negative/TraceRankZeroSecondMoment__SourceOccurrence8f4c26bde252c91f3ebec3da.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
