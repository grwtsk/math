import Folder.Basic

/-!
# Folder.Cellular.Cube

Radiation role: cube-address
BinaryMatrix spine: This module generalizes BinaryMatrix indexing into finite cubical address spaces or adjacency data.
Ontology: cellular.cube
Pivot role: none
Zero typology: shell
Contract boundary: definition
Composite stack role: shell
-/


namespace Folder
namespace Cellular

def cubeSide (k : Nat) : Nat :=
  2 ^ k

theorem cubeSide_succ
    (k : Nat) :
    cubeSide (k + 1) = 2 * cubeSide k := by
  unfold cubeSide
  rw [pow_succ']

abbrev CubeAddress (d k : Nat) :=
  Fin d → Fin (cubeSide k)

def appendBits
    {d k : Nat}
    (x : CubeAddress d k)
    (b : Fin d → Fin 2) :
    CubeAddress d (k + 1) :=
  fun i =>
    ⟨2 * (x i).val + (b i).val, by
      have hx := (x i).isLt
      have hb := (b i).isLt
      rw [cubeSide_succ]
      omega⟩

def embedLow
    {d k : Nat}
    (x : CubeAddress d k) :
    CubeAddress d (k + 1) :=
  appendBits x (fun _ => 0)

theorem appendBits_coord_val
    {d k : Nat}
    (x : CubeAddress d k)
    (b : Fin d → Fin 2)
    (i : Fin d) :
    (appendBits x b i).val = 2 * (x i).val + (b i).val :=
  rfl

theorem embedLow_coord_val
    {d k : Nat}
    (x : CubeAddress d k)
    (i : Fin d) :
    (embedLow x i).val = 2 * (x i).val := by
  simp [embedLow, appendBits]

end Cellular
end Folder
