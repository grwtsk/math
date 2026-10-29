# Complete source: GRWTSK.LinearAlgebra.SchrodingerTransfer.Checks.Negative.WrongDeterminantSign

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `98182205ba7ef7a260ca7c12e62d6c7d11915983` · SHA-256 `23bb5c1fcba29f469eb03e1eefbaf0dbedb70c9c45d31355acd5a94e5928309a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.SchrodingerTransfer
open GRWTSK.LinearAlgebra.SchrodingerTransfer
example : (schrodingerTransfer (0 : ℚ) 0).det = -1 := by norm_num [schrodingerTransfer, Matrix.det_fin_two]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f197c8ee83367e72016cb3c04fa4dcef27244e2c566ad0a58d0dff47f988b91d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/SchrodingerTransfer/Checks/Negative/WrongDeterminantSign__SourceOccurrence18526623b205d9cb567ffd13.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
