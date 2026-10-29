# Complete source: GRWTSK.LinearAlgebra.OrientedRealLine.Checks.Negative.MissingCycleCommutativity

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c0afdd7d3e02e090d83242d89ded971018720237` · SHA-256 `cd4c001412d209860a2968372f136f246b636fdb8379822fda58d9719a762997`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT. Intended type rejection. -/
import GRWTSK.LinearAlgebra.OrientedRealLine.PositiveScale

set_option autoImplicit false

open GRWTSK.LinearAlgebra.OrientedRealLine
open scoped BigOperators

example (C : Chain) (n : ℕ)
    (close : PositiveScaleEquiv (C.object n) (C.object 0)) :
    close.scale * (∏ i ∈ Finset.range n, (C.edge i).scale) = 1 := by
  exact C.cycle_scale n close
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=053831521d26c30803debe271f78940bd11ae22628fd5637a3d6e646d6ef4e42 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/OrientedRealLine/Checks/Negative/MissingCycleCommutativity.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
