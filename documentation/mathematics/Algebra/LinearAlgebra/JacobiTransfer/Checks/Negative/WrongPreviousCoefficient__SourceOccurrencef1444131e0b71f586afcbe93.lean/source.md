# Complete source: GRWTSK.LinearAlgebra.JacobiTransfer.Checks.Negative.WrongPreviousCoefficient

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6350987a5eefb67bc0cedfa715137f4566224949` · SHA-256 `e0a990d9b192ed0975a841fb7ed30885a073d19d77c9f951b840483ab77ee02f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.JacobiTransfer
open GRWTSK.LinearAlgebra.JacobiTransfer
example {K : Type*} [Field K] (E b a p previous current next : K) (ha : a ≠ 0) : jacobiRecurrence E b a p previous current next ↔ weightedState a current next = (weightedJacobiTransfer E b a).mulVec (weightedState a previous current) := jacobi_recurrence_iff_weighted_transfer E b a p previous current next ha
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=83af628c31528d3780c089fa506c97a6d877813f96deb04bea618e82c702ca58 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/JacobiTransfer/Checks/Negative/WrongPreviousCoefficient__SourceOccurrencef1444131e0b71f586afcbe93.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
