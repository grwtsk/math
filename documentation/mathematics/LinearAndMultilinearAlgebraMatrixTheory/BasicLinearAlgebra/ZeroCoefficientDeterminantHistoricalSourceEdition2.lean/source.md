# Complete source: GRWTSK.Algebra.LinearAlgebra.JacobiTransfer.Checks.Negative.ZeroCoefficientDeterminant

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `05aa3e6ff976c43d6a03e2767c97b561f49eb0c8` · SHA-256 `06fbd95c484ccffbd408938e0a858595c36a1c67e53ea0f4b5f1517aed6dd007`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.JacobiTransfer
open GRWTSK.LinearAlgebra.JacobiTransfer
example : (weightedJacobiTransfer (0 : ℚ) 0 0).det = 1 := by norm_num [weightedJacobiTransfer, Matrix.det_fin_two]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6973d314ecb14c69e7d44e29a592f3a37aefe4e10668e37e30577fc564b59266 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/JacobiTransfer/Checks/Negative/ZeroCoefficientDeterminant__SourceOccurrence19c9b33005c68ad8a702128e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
