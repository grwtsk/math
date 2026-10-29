import Folder.Core.FrobeniusTypology
import Folder.Spectral.Energy

/-!
# Folder.Harmonic.FrobeniusEnergy

Radiation role: harmonic-control
BinaryMatrix spine: This module names analytic Frobenius energy controls downstream of finite cellular carriers.
Ontology: harmonic.frobenius_energy
Pivot role: spectral
Zero typology: spectral
Contract boundary: contract
Composite stack role: field
-/

namespace Folder
namespace Harmonic

abbrev AnalyticFrobeniusEnergy :=
  Core.AnalyticFrobeniusEnergy

theorem frobenius_energy_nonnegative
    (F : AnalyticFrobeniusEnergy)
    (x : F.carrier) :
    0 ≤ F.normSq x :=
  Core.analytic_frobenius_nonnegative F x

end Harmonic
end Folder
