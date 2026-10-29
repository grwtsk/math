# Complete source: GRWTSK.LinearAlgebra.CocycleProduct.Checks.Negative.ReverseMultiplication

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fa26f5b21615ff543f260f39c28c217ea4db3269` · SHA-256 `25fded69d7fd67be09c16200ed75d8a4d74aac12adf08c02fba3a1f7131a52c3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.CocycleProduct
open GRWTSK.LinearAlgebra.CocycleProduct GRWTSK.Algebra GRWTSK.LinearAlgebra.SchrodingerTransfer
example : cocycleProduct Nat.succ (fun i => schrodingerTransfer (i : ℚ) 0) 2 0 =
    schrodingerTransfer (0 : ℚ) 0 * schrodingerTransfer (1 : ℚ) 0 := by
  apply Matrix.ext
  intro i j
  fin_cases i <;> fin_cases j <;>
    norm_num [cocycleProduct, Function.iterate_succ_apply', schrodingerTransfer,
      Matrix.mul_apply, Fin.sum_univ_two]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6cbbc2294fb52088481c9807ef88e42caf19819457cf01bb8c53f48b276f467b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CocycleProduct/Checks/Negative/ReverseMultiplication__SourceOccurrencef2f12653dd737a08181fb053.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
