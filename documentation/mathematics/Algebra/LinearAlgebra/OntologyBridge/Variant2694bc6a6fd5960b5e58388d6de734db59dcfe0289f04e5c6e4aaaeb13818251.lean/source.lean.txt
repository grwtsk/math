import Folder.CellularArithmetic.BinaryMatrixEncoding
import Folder.CellularArithmetic.CubeEncoding

/-!
# Folder.CellularArithmetic.OntologyBridge

Radiation role: cellular-arithmetic
BinaryMatrix spine: This module organizes prime-factor cellular arithmetic before data is encoded into BinaryMatrix carriers.
Ontology: ca.ontology_bridge
Pivot role: arithmetic
Zero typology: none
Contract boundary: definition
Composite stack role: arithmetic
-/

namespace Folder
namespace CellularArithmetic

structure OntologyBridge where
  arithmeticId : String
  cellularId : String
  relation : String

def positiveNatToCellularBridge : OntologyBridge where
  arithmeticId := "nt.positive_nat"
  cellularId := "ca.cellular_arithmetic_representation"
  relation := "encodes"

end CellularArithmetic
end Folder
