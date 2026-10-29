import Folder.Basic

/-!
# Folder.CrystallineIndex.UnresolvedIssues

Radiation role: research-boundary
BinaryMatrix spine: This module names unresolved crystalline index boundaries, not BinaryMatrix claims.
Ontology: crystalline_index.unresolved_issues
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-target
Composite stack role: crystalline-index
-/

namespace Folder
namespace CrystallineIndex

structure CrystallineIndexUnresolvedIssues where
  deRhamWittTarget : String :=
    "UNRESOLVED-INDEX-1: de Rham-Witt / crystalline cohomology target"
  crystallineDirac : String :=
    "UNRESOLVED-INDEX-2: construction of D_crys"
  crystallineWittenGenus : String :=
    "UNRESOLVED-INDEX-3: crystalline A-hat/Witten genus formula"
  crystallineTraceFormula : String :=
    "UNRESOLVED-INDEX-4: crystalline trace formula"
  nonzeroIndexForcesKernel : String :=
    "UNRESOLVED-INDEX-5: nonzero crystalline index forces kernel/fixed tensor"
  indexToCriticalLine : String :=
    "UNRESOLVED-INDEX-6: nonzero crystalline index forces spectral boundary alignment"
  actualAtiyahSinger : String :=
    "UNRESOLVED-INDEX-7: actual Atiyah-Singer theorem in crystalline/TMF setting"

def unresolvedIssues : CrystallineIndexUnresolvedIssues := {}

end CrystallineIndex
end Folder
