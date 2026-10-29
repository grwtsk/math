# Complete source: GRWTSK.Algebra.LinearAlgebra.SchrodingerTransfer.Checks.Negative.WrongDeterminantSign

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `19433685417cd84c31000f68874ca33c1a0a8688` · SHA-256 `bad3c9c9cf84e5605c5499fe33257fd447814fa98bd684f6f2ca6c2ccb1802d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.SchrodingerTransfer
open GRWTSK.LinearAlgebra.SchrodingerTransfer
example : (schrodingerTransfer (0 : ℚ) 0).det = -1 := by norm_num [schrodingerTransfer, Matrix.det_fin_two]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e220620f88649baae5f02f22ce2c04cf4bdd9d38aa723738b903777704401a60 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/SchrodingerTransfer/Checks/Negative/WrongDeterminantSign__SourceOccurrenceb8bf1d7e69dcdfc16e9e743b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
