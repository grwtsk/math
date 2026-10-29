import Folder.Spectral.Energy
import Folder.Spectral.Expansion

/-!
# Folder.Spectral.Witness

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: spectral.witness
Pivot role: spectral
Zero typology: spectral
Contract boundary: definition
Composite stack role: field
-/


namespace Folder
namespace Spectral

open Carrier

structure Witness (α β : Type _) where
  observe : α → β

def Consistent {α β γ : Type _}
    (W : Witness α β)
    (encode : α → γ)
    (decode : γ → α) :
    Prop :=
  ∀ x, W.observe (decode (encode x)) = W.observe x

noncomputable def meanWitness (s : GridShape) (k : Nat) :
    Witness (SpectralTensor s k) ℝ where
  observe := SpectralTensor.mean

noncomputable def energyWitness {s : GridShape} (k : Nat)
    (G : CellGraph s) :
    Witness (SpectralTensor s k) ℝ where
  observe := energy G

def cellCountWitness (s : GridShape) (k : Nat) :
    Witness (SpectralTensor s k) Nat where
  observe := fun _ => s.rows * s.cols * k

end Spectral
end Folder
