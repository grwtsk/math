import Folder.Spectral.Heat
import Folder.Spectral.Residual

/-!
# Folder.Harmonic.HeatResidualControl

Radiation role: harmonic-control
BinaryMatrix spine: This module repackages lifted heat residual reconstruction for downstream BinaryMatrix-radiated stack control.
Ontology: harmonic.heat_residual_control
Pivot role: spectral
Zero typology: harmonic
Contract boundary: proved
Composite stack role: residual
-/

namespace Folder
namespace Harmonic

def heatVisible
    {s : Carrier.GridShape}
    {k : Nat}
    (H : Spectral.GraphHeat s k)
    (t : NNReal)
    (X : Spectral.SpectralTensor s k) :
    Spectral.SpectralTensor s k :=
  H.heat t X

def heatFiber
    {s : Carrier.GridShape}
    {k : Nat}
    (H : Spectral.GraphHeat s k)
    (t : NNReal)
    (X : Spectral.SpectralTensor s k) :
    Spectral.SpectralTensor s k :=
  Spectral.heatResidual H t X

theorem heat_visible_plus_fiber
    {s : Carrier.GridShape}
    {k : Nat}
    (H : Spectral.GraphHeat s k)
    (t : NNReal)
    (X : Spectral.SpectralTensor s k) :
    heatVisible H t X + heatFiber H t X = X :=
  Spectral.heat_add_residual H t X

end Harmonic
end Folder
