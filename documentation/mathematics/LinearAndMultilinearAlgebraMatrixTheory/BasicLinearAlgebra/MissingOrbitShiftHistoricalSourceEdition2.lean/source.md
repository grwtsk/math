# Complete source: GRWTSK.Algebra.LinearAlgebra.CocycleProduct.Checks.Negative.MissingOrbitShift

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b4d1ae0d9646c19acab728b8de7825c32263af64` · SHA-256 `7e358e3f2b5e321482deef07f0436eb27ef2a54e1c79797f290509457ef161eb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.CocycleProduct
open GRWTSK.LinearAlgebra.CocycleProduct GRWTSK.Algebra GRWTSK.LinearAlgebra.SchrodingerTransfer
example : cocycleProduct Nat.succ (fun i => i + 2) 2 0 =
    cocycleProduct Nat.succ (fun i => i + 2) 1 0 * cocycleProduct Nat.succ (fun i => i + 2) 1 0 := by
  norm_num [cocycleProduct, Function.iterate_succ_apply']
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9116d89c0bf464d7fad17f8ce8f00d8d289051c358104edbb629bc6f900117d8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CocycleProduct/Checks/Negative/MissingOrbitShift__SourceOccurrence1154b15735ce1cf04963af25.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
