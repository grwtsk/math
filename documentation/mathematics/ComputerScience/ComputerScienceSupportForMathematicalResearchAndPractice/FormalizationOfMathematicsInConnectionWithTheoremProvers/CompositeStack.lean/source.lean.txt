import Folder.Core.CompositeStack

/-!
# Folder.Theorem.Core.CompositeStack

Radiation role: theorem-wrapper
BinaryMatrix spine: This theorem wrapper exposes composite-stack pivot facts for downstream finite carriers.
Ontology: proof.core.composite_stack
Pivot role: dual
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/

namespace Folder
namespace Theorem
namespace Core

theorem default_stack_pivots
    (S : Folder.Core.CompositeStack)
    (h : S.pivots = Folder.Core.defaultDualPivot) :
    S.hasArithmeticPivot ∧ S.hasSpectralPivot :=
  Folder.Core.default_stack_pivots S h

end Core
end Theorem
end Folder
