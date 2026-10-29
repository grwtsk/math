# Complete source: GRWTSK.Spectral.FiniteVolume.Checks.Negative.MissingDefectEquality

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `59f18764f2cb973a8576ffde6ea55f6e3dcf3f03` · SHA-256 `35fdd185bacac671c991d6df6b145f5e1c8f3617e4bf46a0ecbc8088d51d00ab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Spectral.MatrixCountComparison
open GRWTSK.Spectral.MatrixCountComparison
example {ι : Type*} [Fintype ι] [DecidableEq ι] {A B : Matrix ι ι ℝ}
    (hA : A.IsHermitian) (hB : B.IsHermitian)
    (K : EuclideanSpace ℝ ι →ₗ[ℝ] ℝ) (E : ℝ) :
    eigenvalueCount hB E ≤ eigenvalueCount hA E + Module.finrank ℝ ℝ := by
  exact eigenvalueCount_le_add_finrank_of_kernel hA hB K E
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=db247cdd7d4a5a2a67c8f7f1cb934373a060ee3c5f563d36c9404109d834972d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Negative/MissingDefectEquality__SourceOccurrenced2ef80c3a559d5022d62e0bf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
