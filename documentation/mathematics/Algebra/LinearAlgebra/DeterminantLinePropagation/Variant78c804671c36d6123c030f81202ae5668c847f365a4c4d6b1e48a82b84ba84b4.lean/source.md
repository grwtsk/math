# Complete source: GRWTSK.Algebra.LinearAlgebra.DeterminantLinePropagation.Variant78c804671c36d6123c030f81202ae5668c847f365a4c4d6b1e48a82b84ba84b4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `68ff575be993329a69ba1d36263348c0e3b7be0a` · SHA-256 `78c804671c36d6123c030f81202ae5668c847f365a4c4d6b1e48a82b84ba84b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.DeterminantLinePropagation

/-!
# Folder.Theorem.CanonicalPath.DeterminantLinePropagation

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports determinant-line propagation facts.
Ontology: proof.canonical_path.determinant_line
Pivot role: spectral
Zero typology: k-zero
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem determinant_line_propagates_if_supplied
    {F : Folder.CanonicalPath.PerfectSectionComplexFamily}
    (D : Folder.CanonicalPath.DeterminantLineFamily F) :
    D.propagatesOnConnectedComponent :=
  Folder.CanonicalPath.determinant_line_propagates_if_supplied D

theorem determinant_line_has_nonzero_anchor
    {F : Folder.CanonicalPath.PerfectSectionComplexFamily}
    (D : Folder.CanonicalPath.DeterminantLineFamily F) :
    D.nonzeroAnchor :=
  Folder.CanonicalPath.determinant_line_has_nonzero_anchor D

end CanonicalPath
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fefb795b2c864dc9bb154d864a2be734aef8be16b64dfd0c372f3dd24e70ce41 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/DeterminantLinePropagation/Variant78c804671c36d6123c030f81202ae5668c847f365a4c4d6b1e48a82b84ba84b4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
