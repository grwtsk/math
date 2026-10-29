# Complete source: GRWTSK.LinearAlgebra.CocycleProduct.Checks.Negative.MissingOrbitShift

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ca37986002a1539c04fb1ba965bc0c31aa3b8e77` · SHA-256 `bbad997fd02b291841d86bb81a8158b7bde04f9643f1fc44b66ca2246d013d86`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.CocycleProduct
open GRWTSK.LinearAlgebra.CocycleProduct GRWTSK.Algebra GRWTSK.LinearAlgebra.SchrodingerTransfer
example : cocycleProduct Nat.succ (fun i => i + 2) 2 0 =
    cocycleProduct Nat.succ (fun i => i + 2) 1 0 * cocycleProduct Nat.succ (fun i => i + 2) 1 0 := by
  norm_num [cocycleProduct, Function.iterate_succ_apply']
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9609c3ad39a3908c8faf5fdeade2b173a9cdf2fce520d44987597bacbdbc96bf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CocycleProduct/Checks/Negative/MissingOrbitShift__SourceOccurrence0b22f2361978837861c99e97.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
