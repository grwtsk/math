# Complete source: GRWTSK.Algebra.LinearAlgebra.Determinant.OrderedProduct.Checks.Negative.MissingFactorDeterminant

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `668a978939289e0cb6d90b1fb246f127b7210337` · SHA-256 `be0bda4431e62b6ce8067dba98389cc2140bee70ef3b1e3d14c9987569d6c630`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.OrderedProductDeterminant
open GRWTSK.LinearAlgebra.OrderedProductDeterminant GRWTSK.Algebra GRWTSK.LinearAlgebra.JacobiTransfer

example : (orderedProduct (fun _ => !![(2 : ℚ), 0; 0, 1]) 0 1).det = 1 := by
  norm_num [orderedProduct, Matrix.det_fin_two]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd650001b811cd3d7f7dc9f4aa4ee957e7d7ca1a66ccd6291c60051463cdb971 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Determinant/OrderedProduct/Checks/Negative/MissingFactorDeterminant__SourceOccurrence61e820bf1eb7e1fe292b8056.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
