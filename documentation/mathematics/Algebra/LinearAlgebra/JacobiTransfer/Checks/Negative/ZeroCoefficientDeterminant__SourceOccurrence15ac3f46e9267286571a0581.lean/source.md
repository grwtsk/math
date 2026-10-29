# Complete source: GRWTSK.LinearAlgebra.JacobiTransfer.Checks.Negative.ZeroCoefficientDeterminant

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2174f34aabc2a46fc378f6d5b08c3cb4b784712` · SHA-256 `09e4f47e1895aa768a7b483d02a399e20e4d1f13a3cea657af1baa1d9935ad54`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.JacobiTransfer
open GRWTSK.LinearAlgebra.JacobiTransfer
example : (weightedJacobiTransfer (0 : ℚ) 0 0).det = 1 := by norm_num [weightedJacobiTransfer, Matrix.det_fin_two]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e85f37e2c9269d44a509698171aca62caa4976f372bbfca6cfdae55d48cd7bba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/JacobiTransfer/Checks/Negative/ZeroCoefficientDeterminant__SourceOccurrence15ac3f46e9267286571a0581.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
