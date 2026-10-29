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
