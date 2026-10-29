import Folder.AdelicInfinityTopos.SheafOfSpectra

/-!
# Folder.Theorem.AdelicInfinityTopos.SheafOfSpectra

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports sheaf-of-spectra contract exposures.
Ontology: proof.adelic.sheaf_of_spectra
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: adelic-infinity-topos
-/

namespace Folder
namespace Theorem
namespace AdelicInfinityTopos
namespace SheafOfSpectra

theorem sheaf_of_spectra_has_descent
    {C : Folder.ResearchTopos.SiteCategory}
    {J : Folder.ResearchTopos.GrothendieckTopology C}
    (F : Folder.AdelicInfinityTopos.SheafOfSpectra J) :
    F.descent :=
  Folder.AdelicInfinityTopos.sheaf_of_spectra_has_descent F

theorem sheaf_of_spectra_has_hyperdescent
    {C : Folder.ResearchTopos.SiteCategory}
    {J : Folder.ResearchTopos.GrothendieckTopology C}
    (F : Folder.AdelicInfinityTopos.SheafOfSpectra J) :
    F.hyperdescent :=
  Folder.AdelicInfinityTopos.sheaf_of_spectra_has_hyperdescent F

end SheafOfSpectra
end AdelicInfinityTopos
end Theorem
end Folder
