import Folder.CellularArithmetic.ArithmeticTree

/-!
# Folder.CellularArithmetic.PrimePowerCell

Radiation role: cellular-arithmetic
BinaryMatrix spine: This module organizes prime-factor cellular arithmetic before data is encoded into BinaryMatrix carriers.
Ontology: ca.prime_power_cell
Pivot role: arithmetic
Zero typology: none
Contract boundary: proved
Composite stack role: arithmetic
-/

namespace Folder
namespace CellularArithmetic

structure PrimePowerCell where
  label : NumberTheory.PrimePower
  addressDepth : Nat

def dilateTree
    (T : CellularArithmeticTree)
    (P : NumberTheory.PrimePower) :
    CellularArithmeticTree :=
  { factors := T.factors ++ [P] }

theorem decode_dilateTree
    (T : CellularArithmeticTree)
    (P : NumberTheory.PrimePower) :
    (dilateTree T P).decode = T.decode * P.value := by
  unfold dilateTree CellularArithmeticTree.decode
  induction T.factors with
  | nil =>
      simp
  | cons Q qs ih =>
      simp [ih, Nat.mul_assoc]

end CellularArithmetic
end Folder
