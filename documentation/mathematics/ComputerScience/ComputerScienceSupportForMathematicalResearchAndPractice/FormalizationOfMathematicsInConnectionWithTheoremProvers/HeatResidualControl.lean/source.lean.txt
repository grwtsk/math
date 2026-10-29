import Folder.Harmonic.HeatResidualControl

/-!
# Folder.Theorem.Harmonic.HeatResidualControl

Radiation role: theorem-wrapper
BinaryMatrix spine: This theorem wrapper exposes lifted heat visible/residual reconstruction for composite stack control.
Ontology: proof.harmonic.heat_residual_control
Pivot role: spectral
Zero typology: harmonic
Contract boundary: theorem-wrapper
Composite stack role: residual
-/

namespace Folder
namespace Theorem
namespace Harmonic

theorem heat_visible_plus_fiber
    {s : Folder.Carrier.GridShape}
    {k : Nat}
    (H : Folder.Spectral.GraphHeat s k)
    (t : NNReal)
    (X : Folder.Spectral.SpectralTensor s k) :
    Folder.Harmonic.heatVisible H t X +
      Folder.Harmonic.heatFiber H t X = X :=
  Folder.Harmonic.heat_visible_plus_fiber H t X

end Harmonic
end Theorem
end Folder
