# Complete source: GRWTSK.LinearAlgebra.OrderedTransfer.Checks.Negative.MissingStepPremise

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `33282e68b128831960bbfd9e398c8e1d7c2261b6` · SHA-256 `67a593dde23d47f1c96858aebdfedaee3596865ed8cc64cb29efe26f0745f83a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.OrderedTransfer
open GRWTSK.LinearAlgebra.OrderedTransfer GRWTSK.Algebra

example : (![(1 : ℚ), 0] : Fin 2 → ℚ) =
    (orderedProduct (fun _ => (1 : Matrix (Fin 2) (Fin 2) ℚ)) 0 1).mulVec ![0, 0] := by
  norm_num [orderedProduct, funext_iff, Fin.forall_fin_two]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2355e6f7855df6e79ea64170ef4be023d569f70530e5e9e095096f15ce57cd7c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/OrderedTransfer/Checks/Negative/MissingStepPremise__SourceOccurrenceff39cd58829840e63e59b8ba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
