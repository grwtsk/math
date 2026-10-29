import Folder.Basic

/-!
# Folder.Shader.BijectiveSplit

Radiation role: shader-spec
BinaryMatrix spine: This module proves the arithmetic visible/residual split mirrored by runtime shader code downstream of BinaryMatrix-radiated phase data.
Ontology: shader.bijective_split
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: residual
-/

namespace Folder
namespace Shader

structure QuantizedSplit where
  raw : Nat
  step : Nat
  step_pos : 0 < step
  visible : Nat
  residual : Nat
  visible_eq : visible = raw / step
  residual_eq : residual = raw % step

def split
    (raw step : Nat)
    (hstep : 0 < step) :
    QuantizedSplit where
  raw := raw
  step := step
  step_pos := hstep
  visible := raw / step
  residual := raw % step
  visible_eq := rfl
  residual_eq := rfl

def reconstruct (S : QuantizedSplit) : Nat :=
  S.visible * S.step + S.residual

theorem reconstruct_split
    (raw step : Nat)
    (hstep : 0 < step) :
    reconstruct (split raw step hstep) = raw := by
  simpa [reconstruct, split, Nat.mul_comm] using Nat.div_add_mod raw step

theorem residual_lt_step
    (S : QuantizedSplit) :
    S.residual < S.step := by
  rw [S.residual_eq]
  exact Nat.mod_lt S.raw S.step_pos

end Shader
end Folder
