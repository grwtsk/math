# Complete source: GRWTSK.Algebra.LinearAlgebra.OrderedTransfer.Checks.Negative.MissingEndpointOrder

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e961b41eb4f47d7d7edf28147e90069880fa4162` · SHA-256 `9a7053bdc827dd895079230d8184be610d6b29588a261b3558ccf41ae9cb0565`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.OrderedTransfer
open GRWTSK.LinearAlgebra.OrderedTransfer GRWTSK.Algebra

example : (![1, 0] : Fin 2 → ℚ) =
    (orderedTransfer (fun _ => !![(2 : ℚ), 0; 0, 1]) 0 1).mulVec ![2, 0] := by
  norm_num [orderedTransfer, orderedProduct, funext_iff, Fin.forall_fin_two]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cda56b6b64906a8188f0dca0718807d63aff54b734829e9b3a35126b4158e345 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/OrderedTransfer/Checks/Negative/MissingEndpointOrder__SourceOccurrence1e9d8a2275971c6faac9ef12.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
