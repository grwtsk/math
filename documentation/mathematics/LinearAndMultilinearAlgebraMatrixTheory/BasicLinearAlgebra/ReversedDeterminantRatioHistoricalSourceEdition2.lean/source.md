# Complete source: GRWTSK.LinearAlgebra.JacobiTransfer.Checks.Negative.ReversedDeterminantRatio

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `48813da55c9f4964e9e2a5b0b53c5a15dcab3597` · SHA-256 `74389f8c972664cd2afb3881a63516b0402a574edae2bef6d2dca01dc8ad0bc2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.JacobiTransfer
open GRWTSK.LinearAlgebra.JacobiTransfer
example {K : Type*} [Field K] (E b a p : K) : (rawJacobiTransfer E b a p).det = a / p := det_rawJacobiTransfer E b a p
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=96ffc24cc4676845b3409c322a5ce8aaf7e33793c19cfb1ef47368fa51a5aa36 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/JacobiTransfer/Checks/Negative/ReversedDeterminantRatio__SourceOccurrence2bf4a44457f5c2c4e3ecd879.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
