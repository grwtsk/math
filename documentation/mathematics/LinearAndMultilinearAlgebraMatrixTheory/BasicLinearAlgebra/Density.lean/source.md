# Density — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f9cc46e54461863abbd5fd92cfe6db963bd40b0f` · SHA-256 `7a140e48533f083681b12578bf78d99fee785c2dcb0b8e68a950e9ba2e29d4e2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Bitspace.Density

/-!
# Folder.Theorem.BinaryMatrix.Density

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.binary_matrix.density
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Theorem
namespace BinaryMatrix

theorem checkerboard_count_imbalance_abs_le_one
    (m n : Nat) :
    Int.natAbs (Bitspace.imbalance (Bitspace.checkerboard m n)) ≤ 1 :=
  Bitspace.checkerboard_count_imbalance_abs_le_one m n

end BinaryMatrix
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bae7a067ae3643ec87a8aed2a90cea88c33162a1006fe260b012d81fee5b1f92 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Density/Variant7a140e48533f083681b12578bf78d99fee785c2dcb0b8e68a950e9ba2e29d4e2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
