# Pivot — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e6455c3de5bbd240ec7b5e287769b14b07d67aee` · SHA-256 `241fdd44ba8e99eda9fa8369ea4ea3e3a018cc6a0d83f392e5c9a322ab95d34d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Linear.Matrix

/-!
# Folder.Linear.Pivot

Radiation role: boolean-linear-analysis
BinaryMatrix spine: This module contains auxiliary Boolean, linear, or analytic mathematics adjacent to the BinaryMatrix spine.
Ontology: linear.pivot
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Linear

structure PivotPosition (m n : Nat) where
  row : Fin m
  col : Fin n
deriving Repr

structure PivotCertificate
    {m n : Nat}
    {α : Type _}
    [Zero α]
    (A : Matrix m n α) where
  pos : PivotPosition m n
  nonzero : A pos.row pos.col ≠ 0

theorem pivot_nonzero
    {m n : Nat}
    {α : Type _}
    [Zero α]
    {A : Matrix m n α}
    (C : PivotCertificate A) :
    A C.pos.row C.pos.col ≠ 0 :=
  C.nonzero

end Linear
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bb84e7cf2eb41c02c0e8747f763fa2afe34ab2df943e86f0a3d71d1c0ea4a0f3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Pivot/Variant241fdd44ba8e99eda9fa8369ea4ea3e3a018cc6a0d83f392e5c9a322ab95d34d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
