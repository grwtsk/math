import Folder.Basic

/-!
# Folder.NumberTheory.PositiveNat

Radiation role: number-theory
BinaryMatrix spine: This module organizes prime-factor cellular arithmetic before data is encoded into BinaryMatrix carriers.
Ontology: nt.positive_nat
Pivot role: arithmetic
Zero typology: none
Contract boundary: definition
Composite stack role: arithmetic
-/

namespace Folder
namespace NumberTheory

abbrev PositiveNat := { n : Nat // 0 < n }

namespace PositiveNat

def one : PositiveNat := ⟨1, by omega⟩

def val (n : PositiveNat) : Nat := n.1

@[simp]
theorem val_pos (n : PositiveNat) : 0 < n.val := n.2

@[ext]
theorem ext {a b : PositiveNat} (h : a.val = b.val) : a = b := by
  cases a
  cases b
  simp [val] at h
  subst h
  rfl

end PositiveNat
end NumberTheory
end Folder
