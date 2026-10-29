# Binary Matrix Encoding Binary Matrix Arithmetic Encoding — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1da403a8fd8f3521259def16038e187387599344` · SHA-256 `a3e7ec4deedacc19e257600b99e78daa6ea0dab832d429da572921781df8347a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Carrier.BinaryMatrix
import Folder.CellularArithmetic.CellularRepresentation

/-!
# Folder.CellularArithmetic.BinaryMatrixEncoding

Radiation role: cellular-arithmetic
BinaryMatrix spine: This module organizes prime-factor cellular arithmetic before data is encoded into BinaryMatrix carriers.
Ontology: bm.unary_arithmetic_encoding
Pivot role: arithmetic
Zero typology: none
Contract boundary: proved
Composite stack role: arithmetic
-/

namespace Folder
namespace CellularArithmetic

structure BinaryMatrixArithmeticEncoding where
  number : NumberTheory.PositiveNat
  representation : CellularArithmeticRepresentation
  matrix : Carrier.BinaryMatrix
  decoded_matches : representation.decode = number.val

def unaryBinaryMatrixOfNat
    (n : NumberTheory.PositiveNat) :
    Carrier.BinaryMatrix :=
  Carrier.BinaryMatrix.constant 1 n.val 1

theorem unaryBinaryMatrix_shape
    (n : NumberTheory.PositiveNat) :
    (unaryBinaryMatrixOfNat n).m = 1 ∧
    (unaryBinaryMatrixOfNat n).n = n.val :=
  ⟨rfl, rfl⟩

noncomputable def unaryEncoding
    (n : NumberTheory.PositiveNat) :
    BinaryMatrixArithmeticEncoding where
  number := n
  representation := encodePositiveNat n
  matrix := unaryBinaryMatrixOfNat n
  decoded_matches := decode_encode_positiveNat n

end CellularArithmetic
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6ff9492756d0fc98255de031510c0df6616b982831021b135cb892235063bb56 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/BinaryMatrixEncoding/Varianta3e7ec4deedacc19e257600b99e78daa6ea0dab832d429da572921781df8347a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
