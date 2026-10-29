# Complete source: GRWTSK.Algebra.LinearAlgebra.OrderedTransfer.Checks.Positive.ExactMonoidAndSemiring

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c0bdc5996cdb5a432e40ff78ab4e7d6e120b5d82` · SHA-256 `8e1e773c5def4369ff8fedc3d806a12f034cb08cf89cc6f2c7fe5786c1b6c280`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.OrderedTransfer
open GRWTSK.LinearAlgebra.OrderedTransfer GRWTSK.Algebra

example {G : Type} [Monoid G] (A : ℕ → G) (m n : ℕ) :
    orderedTransfer A m n = orderedProduct A n (m - n) := rfl
example (A : ℕ → Matrix (Fin 2) (Fin 2) ℕ) (X : ℕ → Fin 2 → ℕ)
    (hstep : ∀ n, X (n+1) = (A n).mulVec (X n)) (n k : ℕ) :
    X (n+k) = (orderedProduct A n k).mulVec (X n) :=
  state_eq_orderedProduct_mulVec A X hstep n k
example (A : ℕ → Matrix (Fin 2) (Fin 2) ℕ) (X : ℕ → Fin 2 → ℕ)
    (hstep : ∀ n, X (n+1) = (A n).mulVec (X n)) (m n : ℕ) (hnm : n ≤ m) :
    X m = (orderedTransfer A m n).mulVec (X n) :=
  state_eq_orderedTransfer_mulVec A X hstep m n hnm
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=baeab232a0cd0249fed364d8235d0204c25d7577c6ff7ca6e84ac97bb39b976a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/OrderedTransfer/Checks/Positive/ExactMonoidAndSemiring__SourceOccurrencea21387159d6a4e18f77d7896.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
