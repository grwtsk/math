# Complete source: GRWTSK.Algebra.LinearAlgebra.JacobiTransfer.Checks.Negative.ReversedDeterminantRatio

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e21679bf6e9a8ff7d4d412411a5d05b27ac7da5c` · SHA-256 `2564614c798abb3c846959ef03d2c521620befcb2f9760a84a568c1fd897586c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.JacobiTransfer
open GRWTSK.LinearAlgebra.JacobiTransfer
example {K : Type*} [Field K] (E b a p : K) : (rawJacobiTransfer E b a p).det = a / p := det_rawJacobiTransfer E b a p
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f7b8f03abbe5d2d6a7c1715c34d6c9b1e9844f868fdf8c4bcc1a81d2ad97c27f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/JacobiTransfer/Checks/Negative/ReversedDeterminantRatio__SourceOccurrence136d51e24aae8ae50515e872.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
