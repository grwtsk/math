import Folder.Prismatic.PrismaticRealization

/-!
# Folder.Prismatic.WittComparison

Radiation role: research-boundary
BinaryMatrix spine: This module records Witt comparison contracts, not BinaryMatrix data.
Ontology: prismatic_realization
Pivot role: prismatic
Zero typology: none
Contract boundary: contract
Composite stack role: canonical-path
-/

namespace Folder
namespace Prismatic

/-- Abstract Witt realization object. -/
structure WittRealization where
  objectLabel : String
  wittLabel : String

/-- Contract-level Witt comparison; not a theorem. -/
structure PrismaticWittComparison where
  prismatic : PrismaticCohomology
  witt : WittRealization
  comparisonLabel : String

theorem prismatic_witt_comparison_has_prismatic_side
    (C : PrismaticWittComparison) :
    ∃ P : PrismaticCohomology, C.prismatic = P :=
  ⟨C.prismatic, rfl⟩

theorem prismatic_witt_comparison_has_witt_side
    (C : PrismaticWittComparison) :
    ∃ W : WittRealization, C.witt = W :=
  ⟨C.witt, rfl⟩

end Prismatic
end Folder
