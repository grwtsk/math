# Complete source: GRWTSK.Algebra.LinearAlgebra.CocycleProduct.Checks.Negative.ReverseMultiplication

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f0b220c52b499e48440964423ab2c3bed1172792` · SHA-256 `6a403541fec10d7173543c6b5ee5b2dbd2482dc16a4755e13eb18928c5081b6c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.CocycleProduct
open GRWTSK.LinearAlgebra.CocycleProduct GRWTSK.Algebra GRWTSK.LinearAlgebra.SchrodingerTransfer
example : cocycleProduct Nat.succ (fun i => schrodingerTransfer (i : ℚ) 0) 2 0 =
    schrodingerTransfer (0 : ℚ) 0 * schrodingerTransfer (1 : ℚ) 0 := by
  apply Matrix.ext
  intro i j
  fin_cases i <;> fin_cases j <;>
    norm_num [cocycleProduct, Function.iterate_succ_apply', schrodingerTransfer,
      Matrix.mul_apply, Fin.sum_univ_two]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bde06936cb2f74d59a5352f057a139e4d42530a79e4e9dca4a7438927be536ef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CocycleProduct/Checks/Negative/ReverseMultiplication__SourceOccurrence1118587ab566011fb94632e4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
