# Complete source: GRWTSK.Algebra.LinearAlgebra.DeterminantWitness.Variant1e40811b31cdcf93322d2a045fae1eac90fb7f2397c40a87f14bbaf80b9daade

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2180370a5b6320d762f728dff042771bed725701` · SHA-256 `1e40811b31cdcf93322d2a045fae1eac90fb7f2397c40a87f14bbaf80b9daade`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Linear.Matrix

/-!
# Folder.Linear.DeterminantWitness

Radiation role: boolean-linear-analysis
BinaryMatrix spine: This module contains auxiliary Boolean, linear, or analytic mathematics adjacent to the BinaryMatrix spine.
Ontology: linear.determinant_witness
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Linear

structure DeterminantWitness
    {n : Nat}
    {α : Type _}
    [CommRing α]
    (A : Matrix n n α) where
  detValue : α
  certified : detValue = _root_.Matrix.det A

theorem determinant_witness_correct
    {n : Nat}
    {α : Type _}
    [CommRing α]
    {A : Matrix n n α}
    (W : DeterminantWitness A) :
    W.detValue = _root_.Matrix.det A :=
  W.certified

end Linear
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3ba5f0be2ea0b7df06eb538a351b57eb4b6428288410c2189e71e8e214c15876 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/DeterminantWitness/Variant1e40811b31cdcf93322d2a045fae1eac90fb7f2397c40a87f14bbaf80b9daade.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
