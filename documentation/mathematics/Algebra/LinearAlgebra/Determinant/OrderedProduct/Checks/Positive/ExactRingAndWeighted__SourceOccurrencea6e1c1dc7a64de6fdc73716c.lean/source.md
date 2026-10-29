# Complete source: GRWTSK.LinearAlgebra.Determinant.OrderedProduct.Checks.Positive.ExactRingAndWeighted

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e9e126610f5be2b9c9cd0f0ffbd8fb015b5e8d58` · SHA-256 `c28589d246b9b7bbf4538eb8b0fa6c0ff921445d5d70f4a8fe940e1d515f1be7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.OrderedProductDeterminant
open GRWTSK.LinearAlgebra.OrderedProductDeterminant GRWTSK.Algebra GRWTSK.LinearAlgebra.JacobiTransfer

example (A : ℕ → Matrix (Fin 2) (Fin 2) ℤ)
    (hdet : ∀ n, (A n).det = 1) (n k : ℕ) :
    (orderedProduct A n k).det = 1 := det_orderedProduct_eq_one A hdet n k
example {K : Type} [Field K] (E : K) (a b : ℕ → K)
    (ha : ∀ n, a n ≠ 0) (n k : ℕ) :
    (orderedProduct (fun i => weightedJacobiTransfer E (b i) (a i)) n k).det = 1 :=
  det_weightedJacobi_orderedProduct E a b ha n k
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=550df6ddc2e16a676e54109756248b9f776a95884ccc58a054fff465441d80f1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Determinant/OrderedProduct/Checks/Positive/ExactRingAndWeighted__SourceOccurrencea6e1c1dc7a64de6fdc73716c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
