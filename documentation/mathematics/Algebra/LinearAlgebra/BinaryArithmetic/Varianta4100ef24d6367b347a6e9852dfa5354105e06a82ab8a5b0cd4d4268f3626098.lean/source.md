# Complete source: GRWTSK.Algebra.LinearAlgebra.BinaryArithmetic.Varianta4100ef24d6367b347a6e9852dfa5354105e06a82ab8a5b0cd4d4268f3626098

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `00f2abe6f2a60248e12517ef6974c07729176d77` · SHA-256 `a4100ef24d6367b347a6e9852dfa5354105e06a82ab8a5b0cd4d4268f3626098`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CellularArithmetic.BinaryMatrixEncoding
import Folder.CellularArithmetic.CellularRepresentation
import Folder.NumberTheory.FundamentalTheorem

/-!
# Folder.Rebuild.NumberTheory.BinaryArithmetic

Checked unary BinaryMatrix arithmetic facts reused by the rebuild branch.
-/

namespace Folder
namespace Rebuild
namespace NumberTheory

open Folder.NumberTheory
open Folder.CellularArithmetic

theorem unary_encoding_decodes
    (n : PositiveNat) :
    (unaryEncoding n).representation.decode = n.val :=
  (unaryEncoding n).decoded_matches

theorem unary_encoding_matrix_rows
    (n : PositiveNat) :
    (unaryEncoding n).matrix.m = 1 :=
  (unaryBinaryMatrix_shape n).1

theorem unary_encoding_matrix_cols
    (n : PositiveNat) :
    (unaryEncoding n).matrix.n = n.val :=
  (unaryBinaryMatrix_shape n).2

end NumberTheory
end Rebuild
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d083b575d08d17a0c333350950fb99a28f208ab718fb9a7e2e3ed2d4fbbab05b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/BinaryArithmetic/Varianta4100ef24d6367b347a6e9852dfa5354105e06a82ab8a5b0cd4d4268f3626098.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
