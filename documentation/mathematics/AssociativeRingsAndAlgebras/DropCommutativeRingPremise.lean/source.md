# Complete source: GRWTSK.LinearAlgebra.SchrodingerTransfer.Checks.Negative.DropCommutativeRingPremise

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `494e011a06cfd81e64a3aa9ce234615727b17ad5` · SHA-256 `a4cbb7c66467d082ef71804ad20c82dcb44cf397537ba74b2a9f90c2fb8dbc4b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.SchrodingerTransfer
open GRWTSK.LinearAlgebra.SchrodingerTransfer
example {R : Type*} [Ring R] (E V : R) : (schrodingerTransfer E V).det = 1 := det_schrodingerTransfer E V
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f87c43f30ba71cca95c6fcb7630750ea31c7c9f765b41548d2811e50daba2a47 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/SchrodingerTransfer/Checks/Negative/DropCommutativeRingPremise__SourceOccurrence06e1fe4060035d16dae55c33.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
