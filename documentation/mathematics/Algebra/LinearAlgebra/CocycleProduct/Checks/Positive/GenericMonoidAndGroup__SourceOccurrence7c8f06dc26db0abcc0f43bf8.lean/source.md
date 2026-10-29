# Complete source: GRWTSK.Algebra.LinearAlgebra.CocycleProduct.Checks.Positive.GenericMonoidAndGroup

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `25e98d5d83e073efe53f0595f626b4e83da02938` · SHA-256 `c3c21c9a0275d644246ad0172c0358df691c6521a808e20e7a3c51460b1a79b8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.CocycleProduct
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

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e69f7208c06bb6966b8204f3ca117adadc924513faa56faeaa85a4203ff8432c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CocycleProduct/Checks/Positive/GenericMonoidAndGroup__SourceOccurrence7c8f06dc26db0abcc0f43bf8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
