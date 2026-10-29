# Complete source: GRWTSK.LinearAlgebra.SchrodingerTransfer.Checks.Negative.IdentifyDistinctSLElements

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f6d40f3eba49865c3804fa03db001c4f9070b2a` · SHA-256 `dbbf4e260ebcf35a6bdaa603c527e14a40dfff1affe5d7c64d0b6c5ff87624e2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.SchrodingerTransfer
open GRWTSK.LinearAlgebra.SchrodingerTransfer
example : (schrodingerSL (0 : ℚ) 0 : Matrix (Fin 2) (Fin 2) ℚ) = (schrodingerSL (1 : ℚ) 0 : Matrix (Fin 2) (Fin 2) ℚ) := by rfl
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=836ac99ea046b507fa7e3a4dd862cca9840b56c091ab298b73ac6049d168fd44 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/SchrodingerTransfer/Checks/Negative/IdentifyDistinctSLElements__SourceOccurrence055cb6fbeda6074ca83e221f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
