import Folder.NumberTheory.FundamentalTheorem
import Folder.CellularArithmetic.CellularRepresentation
import Folder.CellularArithmetic.BinaryMatrixEncoding
import Folder.Core.Ontology

/-!
# Folder.Core.PrimeFactorCellularArithmetic

Radiation role: core
BinaryMatrix spine: This module organizes prime-factor cellular arithmetic before data is encoded into BinaryMatrix carriers.
Ontology: concept.prime_factor_cellular_arithmetic
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/

namespace Folder
namespace Core

theorem prime_factor_cellular_decode_encode
    (n : NumberTheory.PositiveNat) :
    (CellularArithmetic.encodePositiveNat n).decode = n.val :=
  CellularArithmetic.decode_encode_positiveNat n

end Core
end Folder
