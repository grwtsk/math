import Folder.CrystallineIndex.CohomologyClass

/-!
# Folder.CrystallineIndex.GhostZeroObstruction

Radiation role: research-boundary
BinaryMatrix spine: This module records obstruction classes, not BinaryMatrix zeros.
Ontology: crystalline_index.ghost_zero_obstruction
Pivot role: spectral
Zero typology: l-function
Contract boundary: contract
Composite stack role: crystalline-index
-/

namespace Folder
namespace CrystallineIndex

/--
Typed obstruction class for local spectral/torsion mismatch.

This is not an L-function zero unless a separate bridge says so.
-/
structure GhostZeroObstruction
    (H : CohomologyTheory) where
  obstructionClass : CohomologyClass H
  nonzero : Prop
  nonzero_certified : nonzero
  describesTorsionMismatch : Prop
  describesTorsionMismatch_certified : describesTorsionMismatch
  sourceGraphLabel : String
  targetGraphLabel : String

theorem ghost_obstruction_nonzero
    {H : CohomologyTheory}
    (G : GhostZeroObstruction H) :
    G.nonzero :=
  G.nonzero_certified

theorem ghost_obstruction_describes_torsion_mismatch
    {H : CohomologyTheory}
    (G : GhostZeroObstruction H) :
    G.describesTorsionMismatch :=
  G.describesTorsionMismatch_certified

end CrystallineIndex
end Folder
