# Complete source: GRWTSK.LinearAlgebra.CocycleProduct.Checks.Positive.GenericMonoidAndGroup

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e0c85f4cec3e2ae3d31c7ab4922b0e2a29f1f77b` · SHA-256 `3bc8767f7d578ddb2d9be01cfeeea419b6a7b9a6a5f17c45ec7212f444cabb04`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.CocycleProduct
open GRWTSK.LinearAlgebra.CocycleProduct GRWTSK.Algebra GRWTSK.LinearAlgebra.SchrodingerTransfer
universe u v
example {S : Type u} {G : Type v} [Monoid G] (T : S → S) (A : S → G) (n : ℕ) (x : S) :
    cocycleProduct T A n x = orderedProduct (fun k => A (T^[k] x)) 0 n :=
  cocycleProduct_eq_orderedProduct T A n x
example {S : Type u} {G : Type v} [Monoid G] (T : S → S) (A : S → G) (m n : ℕ) (x : S) :
    cocycleProduct T A (m+n) x = cocycleProduct T A m (T^[n] x) * cocycleProduct T A n x :=
  cocycleProduct_add T A m n x
example {S : Type u} {G : Type v} [Group G] (T : S → S) (A B : S → G) (n : ℕ) (x : S) :
    cocycleProduct T (cocycleGaugeTransfer T A B) n x = (B (T^[n] x))⁻¹ * cocycleProduct T A n x * B x :=
  cocycleProduct_gauge T A B n x
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=92319edae24bc58a9553db8b47af6318e3fa47455b6aed3fa0ecc79b8f69a90b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CocycleProduct/Checks/Positive/GenericMonoidAndGroup__SourceOccurrence8bb102d054f0afefc10bab8d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
