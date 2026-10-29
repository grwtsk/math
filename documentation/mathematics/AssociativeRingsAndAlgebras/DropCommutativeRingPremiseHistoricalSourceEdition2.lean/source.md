# Complete source: GRWTSK.Algebra.LinearAlgebra.SchrodingerTransfer.Checks.Negative.DropCommutativeRingPremise

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `264e1910a424dc5f10b6fcb2919bd788821d7144` · SHA-256 `fccad58dc8b567fdb06575da1ff6dc8de62e40923aba0e20cc80268032ca3564`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.SchrodingerTransfer
open GRWTSK.LinearAlgebra.SchrodingerTransfer
example {R : Type*} [Ring R] (E V : R) : (schrodingerTransfer E V).det = 1 := det_schrodingerTransfer E V
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=da623d01d477d7db38e5e37d2d4680ee461e47b3083520a234916c358da0d904 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/SchrodingerTransfer/Checks/Negative/DropCommutativeRingPremise__SourceOccurrencefcd64f6a67d84f6eb986e627.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
