# Complete source: GRWTSK.Algebra.LinearAlgebra.SchrodingerTransfer.Checks.Negative.IdentifyDistinctSLElements

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b1d1210e288875d4dd1c041e313bbaca1ea2cd1a` · SHA-256 `1a58ff7de6c70ddc272840dd4ee2478a62441345665d50bf3e94744f4a5bc3bb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.SchrodingerTransfer
open GRWTSK.LinearAlgebra.SchrodingerTransfer
example : (schrodingerSL (0 : ℚ) 0 : Matrix (Fin 2) (Fin 2) ℚ) = (schrodingerSL (1 : ℚ) 0 : Matrix (Fin 2) (Fin 2) ℚ) := by rfl
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=89fd062a31e2b9ebdc2fab0cf88a96ad5f5ad878343b61e42995e9bd773c8587 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/SchrodingerTransfer/Checks/Negative/IdentifyDistinctSLElements__SourceOccurrenceb86cd602236bbd5efb3ea48c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
