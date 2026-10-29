import Folder.Cellular.Cube

/-!
# Folder.Cellular.Phase

Radiation role: phase-connection
BinaryMatrix spine: This module turns BinaryMatrix-radiated cell data into finite phase, scan, or connection data.
Ontology: cellular.phase
Pivot role: none
Zero typology: shell
Contract boundary: definition
Composite stack role: phase
-/


namespace Folder
namespace Cellular

abbrev Phase (m : Nat) := ZMod m

structure PhaseQuantizer (m : Nat) where
  quantize : ℝ → Phase m

structure CubeSpectralField (d k : Nat) where
  value : CubeAddress d k → ℝ
  in_unit_interval : ∀ x, 0 ≤ value x ∧ value x ≤ 1

structure CubeHeatFlow (d k : Nat) where
  heat : NNReal → CubeSpectralField d k → CubeSpectralField d k

def quantizedField
    (Q : PhaseQuantizer m)
    (F : CubeSpectralField d k) :
    CubeAddress d k → Phase m :=
  fun x => Q.quantize (F.value x)

end Cellular
end Folder
