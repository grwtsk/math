import Folder.Spectral.Torsion
import Folder.Theorem.Spectral.HeatResidual

/-!
# Folder.Theorem.Spectral.FiberReconstruction

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.spectral.fiber_reconstruction
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Spectral

open Carrier

def transportShell {s : GridShape} {k : Nat}
    (τ : SpectralShellTorsion s k)
    (E : SpectralShellEncoded s k) :
    SpectralShellEncoded s k where
  center := E.center
  shell := SpectralShellTorsion.act τ E.shell

theorem heat_residual_reconstruct {s : GridShape} {k : Nat}
    (H : GraphHeat s k)
    (t : NNReal)
    (X : SpectralTensor s k) :
    reconstructHeat (liftedHeat H t X).1 (liftedHeat H t X).2 = X :=
  reconstruct_liftedHeat H t X

theorem torsion_inverse_reconstruct {s : GridShape} {k : Nat}
    (τ : SpectralShellTorsion s k)
    (E : SpectralShellEncoded s k) :
    transportShell (SpectralShellTorsion.inverse τ) (transportShell τ E) = E := by
  apply SpectralShellEncoded.ext
  · rfl
  · exact SpectralShellTorsion.act_invertible τ E.shell

theorem shell_decode_encode_reconstruct {s : GridShape} {k : Nat}
    (X : SpectralTensor (Expansion.expandedShape s) k) :
    decodeShell (encodeShell X) = X :=
  decode_encode_shell X

noncomputable def reconstructedLiftedShell {s : GridShape} {k : Nat}
    (H : GraphHeat (Expansion.expandedShape s) k)
    (t : NNReal)
    (τ : SpectralShellTorsion s k)
    (X : SpectralTensor (Expansion.expandedShape s) k) :
    SpectralTensor (Expansion.expandedShape s) k :=
  let lifted := liftedHeat H t X
  decodeShell
    (transportShell (SpectralShellTorsion.inverse τ)
      (transportShell τ
        (encodeShell (reconstructHeat lifted.1 lifted.2))))

theorem spectral_fiber_reconstruction {s : GridShape} {k : Nat}
    (H : GraphHeat (Expansion.expandedShape s) k)
    (t : NNReal)
    (τ : SpectralShellTorsion s k)
    (X : SpectralTensor (Expansion.expandedShape s) k) :
    reconstructedLiftedShell H t τ X = X := by
  unfold reconstructedLiftedShell
  change
    decodeShell
      (transportShell (SpectralShellTorsion.inverse τ)
        (transportShell τ
          (encodeShell
            (reconstructHeat (liftedHeat H t X).1 (liftedHeat H t X).2)))) = X
  rw [torsion_inverse_reconstruct]
  rw [decode_encode_shell]
  exact reconstruct_liftedHeat H t X

end Spectral
end Folder
