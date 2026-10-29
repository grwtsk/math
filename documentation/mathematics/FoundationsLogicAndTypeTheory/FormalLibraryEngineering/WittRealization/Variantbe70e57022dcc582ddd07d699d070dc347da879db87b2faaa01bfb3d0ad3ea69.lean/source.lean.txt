import Folder.DerivedSheaf.WittRealization

/-!
# Folder.Theorem.DerivedSheaf.WittRealization

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports Witt realization facts, not BinaryMatrix data.
Ontology: derived.witt_realization
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem witt_realization_compatible
    {M : Folder.DerivedSheaf.MellKTheory}
    {W : Folder.CrystallineIndex.WittComplex}
    (R : Folder.DerivedSheaf.WittRealization M W) :
    R.compatibleWithChernCharacter :=
  Folder.DerivedSheaf.witt_realization_compatible R

theorem ktheory_index_witt_image_eq
    {M : Folder.DerivedSheaf.MellKTheory}
    {W : Folder.CrystallineIndex.WittComplex}
    {R : Folder.DerivedSheaf.WittRealization M W}
    {I : Folder.DerivedSheaf.KTheoryIndex M}
    (X : Folder.DerivedSheaf.KTheoryIndexWittImage R I) :
    X.image = R.realize I.indexClass :=
  Folder.DerivedSheaf.ktheory_index_witt_image_eq X

end DerivedSheaf
end Theorem
end Folder
