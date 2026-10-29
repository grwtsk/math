import Folder.Core.CompositeStack
import Folder.Core.ContractTypology
import Folder.Core.ZeroTypology
import Folder.Core.FrobeniusTypology
import Folder.Core.ModularLocus
import Folder.Core.PrimeFactorCellularArithmetic

/-!
# Folder.Core.Architecture

Radiation role: core-architecture
BinaryMatrix spine: This module gathers the architecture taxonomy before it is interpreted by concrete BinaryMatrix carriers.
Ontology: core.architecture
Pivot role: dual
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/

namespace Folder
namespace Core

def dualPivotArchitectureClaim : TypedClaim where
  name := "Arithmetic pivot 1 times spectral pivot 1/2"
  status := ClaimStatus.definition
  description :=
    "The project keeps the multiplicative arithmetic pivot and analytic spectral midpoint as a product, not an equality."

def shaderMirrorBoundaryClaim : TypedClaim where
  name := "Shader mirrors are runtime witnesses"
  status := ClaimStatus.shaderMirror
  description :=
    "Shader code mirrors checked arithmetic splits; it is not a Lean proof or arithmetic-geometry proof engine."

end Core
end Folder
