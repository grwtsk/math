import Folder.DerivedSheaf.Degree
import Folder.DerivedSheaf.SectionComplex
import Folder.DerivedSheaf.HandleComplex
import Folder.DerivedSheaf.DerivedObject
import Folder.DerivedSheaf.PerfectComplex
import Folder.DerivedSheaf.EulerCharacteristic
import Folder.DerivedSheaf.EulerTransport
import Folder.DerivedSheaf.RodgersTaoEulerTransport
import Folder.DerivedSheaf.RodgersTaoQuasiIsomorphism
import Folder.DerivedSheaf.BaseCaseLFunction
import Folder.DerivedSheaf.CriticalCenterNormalization
import Folder.DerivedSheaf.BaseCaseEllipticCurve
import Folder.DerivedSheaf.BaseCaseSectionComplex
import Folder.DerivedSheaf.BaseCaseIndex
import Folder.DerivedSheaf.BaseCaseIndexAnchor
import Folder.DerivedSheaf.BaseCasePropagation
import Folder.DerivedSheaf.StandardReferenceBaseCase
import Folder.DerivedSheaf.BaseCaseUnresolvedIssues
import Folder.DerivedSheaf.DerivedCategoryBoundary
import Folder.DerivedSheaf.DerivedIndex
import Folder.DerivedSheaf.KTheoryClass
import Folder.DerivedSheaf.ModuliStackKTheory
import Folder.DerivedSheaf.KTheoryIndex
import Folder.DerivedSheaf.ChernRealization
import Folder.DerivedSheaf.WittRealization
import Folder.DerivedSheaf.ArithmeticBoundaryBridge
import Folder.DerivedSheaf.CrystallineIndexBridge
import Folder.DerivedSheaf.SpectralKTheoryBridge
import Folder.DerivedSheaf.DiracKTraceFormula
import Folder.DerivedSheaf.UnresolvedIssues

/-!
# Folder.DerivedSheaf.Roadmap

Radiation role: research-boundary
BinaryMatrix spine: This module summarizes derived-sheaf index modules, not BinaryMatrix data.
Ontology: derived.roadmap
Pivot role: none
Zero typology: none
Contract boundary: roadmap
Composite stack role: derived-sheaf

Boundary                                      Status
Section complex                               Definition/contract
Handle complex using Folder.Sheaf.Handle      Definition/contract
Derived object                                Contract
Perfect complex                               Contract
Euler characteristic                          Contract
Euler-preserving transport                    Contract/proved field exposure
Rodgers-Tao derived transport                 External analytic data plus supplied transport
Rodgers-Tao quasi-isomorphism                 External analytic data plus supplied quasi-isomorphism
Base-case index anchor                        External witness plus Euler/K-index bridge
Standard-reference base case                  Toy regression witness
K(M_ell)                                      Contract
K-theory index                                Primary index object
Chern realization                             Contract
Witt realization                              Contract
Arithmetic support for K-index                Contract bridge
Spectral object -> K-index                    Contract bridge
Dirac/K trace formula                         Contract bridge
Full derived category                         Not claimed
Actual K(M_ell) computation                   Not claimed
-/

namespace Folder
namespace DerivedSheaf

def roadmapLabel : String :=
  "Derived sheaf index: section complex -> perfect complex -> K(M_ell) -> optional Witt realization"

end DerivedSheaf
end Folder
