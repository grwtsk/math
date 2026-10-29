# Complete source: GRWTSK.LinearAlgebra.SchrodingerTransfer.Checks.Negative.ReverseNextStateCoordinates

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8b79efd93d22a2cec5ab957d6e42395c4759d010` · SHA-256 `dddb1769e2cbf5203990393eaa3ac77e73a4a6947268b61e9f45862e0e4a2f8d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.SchrodingerTransfer
open GRWTSK.LinearAlgebra.SchrodingerTransfer
example {R : Type*} [CommRing R] (E V previous current next : R) : next + previous + V * current = E * current ↔ rawState current next = (schrodingerTransfer E V).mulVec (rawState current previous) := schrodinger_recurrence_iff_transfer E V previous current next
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3bbd8281a52907ea9a47335fd58198c35e72f80c2921681f262336b3e8cc6687 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/SchrodingerTransfer/Checks/Negative/ReverseNextStateCoordinates__SourceOccurrenceba8d2518c8af46e3d01a3b28.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
