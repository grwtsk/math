# Complete source: GRWTSK.Algebra.LinearAlgebra.SchrodingerTransfer.Checks.Negative.ReverseNextStateCoordinates

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `86df876bb87866bc9f07ab7b550e406604178072` · SHA-256 `21e8c84460b5ab1106565ed9d8925efe3e732ff8495e7a41ba0d91bc92f3dc87`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.SchrodingerTransfer
open GRWTSK.LinearAlgebra.SchrodingerTransfer
example {R : Type*} [CommRing R] (E V previous current next : R) : next + previous + V * current = E * current ↔ rawState current next = (schrodingerTransfer E V).mulVec (rawState current previous) := schrodinger_recurrence_iff_transfer E V previous current next
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f29899931a0a12a2851e1df548d633a1e5302533841a3cc5ff5925551859fa0a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/SchrodingerTransfer/Checks/Negative/ReverseNextStateCoordinates__SourceOccurrencecc02a3256ca9c136b1834d1f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
