import Folder.DerivedSheaf.ChernRealization

/-!
# Folder.Theorem.DerivedSheaf.ChernRealization

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports Chern realization facts, not BinaryMatrix data.
Ontology: derived.chern_realization
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem chern_realization_additive
    {M : Folder.DerivedSheaf.MellKTheory}
    {H : Folder.CrystallineIndex.CohomologyTheory}
    (ch : Folder.DerivedSheaf.ChernRealization M H) :
    ch.additive :=
  Folder.DerivedSheaf.chern_realization_additive ch

theorem chern_realization_compatible
    {M : Folder.DerivedSheaf.MellKTheory}
    {H : Folder.CrystallineIndex.CohomologyTheory}
    (ch : Folder.DerivedSheaf.ChernRealization M H) :
    ch.compatibleWithPerfectComplexes :=
  Folder.DerivedSheaf.chern_realization_compatible ch

end DerivedSheaf
end Theorem
end Folder
