# Complete source: GRWTSK.Algebra.LinearAlgebra.Determinant.OrderedProduct.Checks.Negative.MissingNonzeroCoefficient

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67392f4c3e367dafcb20905474ba385e8e916aa1` · SHA-256 `128791d7ea14e3e6c0c02d6fdddb4cd684d93607a2a393792e3443fe10ace261`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.OrderedProductDeterminant
open GRWTSK.LinearAlgebra.OrderedProductDeterminant GRWTSK.Algebra GRWTSK.LinearAlgebra.JacobiTransfer

example : (orderedProduct (fun _ => weightedJacobiTransfer (0 : ℚ) 0 0) 0 1).det = 1 := by
  norm_num [orderedProduct, weightedJacobiTransfer, Matrix.det_fin_two]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dec5bcb746e7bf8a0379eaaef0342d2fb372261ac0b827151446b6e26f56c192 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Determinant/OrderedProduct/Checks/Negative/MissingNonzeroCoefficient__SourceOccurrenced4a8a88ff4beb2608fe8cb0d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
