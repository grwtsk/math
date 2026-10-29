# Complete source: GRWTSK.LinearAlgebra.OrderedTransfer.Checks.Negative.MissingEndpointOrder

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b9fb09218f1a1bf379cba95632c0571df4ca395e` · SHA-256 `0d1129c9ae7b519b343c50ca07f5fb0948b4f2aa97412dbf89f37f6533d4e731`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.OrderedTransfer
open GRWTSK.LinearAlgebra.OrderedTransfer GRWTSK.Algebra

example : (![1, 0] : Fin 2 → ℚ) =
    (orderedTransfer (fun _ => !![(2 : ℚ), 0; 0, 1]) 0 1).mulVec ![2, 0] := by
  norm_num [orderedTransfer, orderedProduct, funext_iff, Fin.forall_fin_two]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d185b73ba0f110cdb32bfeddc898034bf860ffa8334a82e1e3d3c8c58b2eeb35 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/OrderedTransfer/Checks/Negative/MissingEndpointOrder__SourceOccurrencefac66d7a3de251215c21fc98.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
