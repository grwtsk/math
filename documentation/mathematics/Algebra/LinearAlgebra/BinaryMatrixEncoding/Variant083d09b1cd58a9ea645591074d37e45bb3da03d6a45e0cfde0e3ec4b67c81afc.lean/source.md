# Complete source: GRWTSK.Algebra.LinearAlgebra.BinaryMatrixEncoding.Variant083d09b1cd58a9ea645591074d37e45bb3da03d6a45e0cfde0e3ec4b67c81afc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cc42ce9b4189d15cdab9e5aecc5deb51202e884c` · SHA-256 `083d09b1cd58a9ea645591074d37e45bb3da03d6a45e0cfde0e3ec4b67c81afc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CellularArithmetic.BinaryMatrixEncoding

/-!
# Folder.Theorem.CellularArithmetic.BinaryMatrixEncoding

Radiation role: theorem-wrapper
BinaryMatrix spine: This module participates in the finite carrier, cellular, spectral, torsion, or proof layer radiating from the BinaryMatrix spine.
Ontology: proof.cellular_arithmetic.binary_matrix_encoding
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/

namespace Folder
namespace Theorem
namespace CellularArithmetic

theorem unaryBinaryMatrix_shape
    (n : Folder.NumberTheory.PositiveNat) :
    (Folder.CellularArithmetic.unaryBinaryMatrixOfNat n).m = 1 ∧
    (Folder.CellularArithmetic.unaryBinaryMatrixOfNat n).n = n.val :=
  Folder.CellularArithmetic.unaryBinaryMatrix_shape n

end CellularArithmetic
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0c41e3dbda53d6ab4eb65c5b46fd80e61ffa7d89438e77f77027a2be3e0e190d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/BinaryMatrixEncoding/Variant083d09b1cd58a9ea645591074d37e45bb3da03d6a45e0cfde0e3ec4b67c81afc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
