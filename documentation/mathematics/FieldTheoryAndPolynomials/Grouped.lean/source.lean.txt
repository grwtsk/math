/-
Copyright (c) 2026. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import GRWTSK.Algebra.FiniteField.GF128.Arithmetic

namespace GRWTSK.Algebra.FiniteField.GF128

/-- Split the exact multiply accumulator into adjacent groups of right-hand bits. -/
theorem mulFuel_add (m n : Nat) (a b : Word) :
    mulFuel (m + n) a b = mulFuel m a b ^^^
      mulFuel n (iter m a) (b >>> m) := by
  induction m generalizing a b with
  | zero => simp only [Nat.zero_add, mulFuel, iter, BitVec.ushiftRight_zero, word_zero_xor]
  | succ m ih =>
    rw [Nat.succ_add, mulFuel, mulFuel, ih]
    simp only [iter, ← BitVec.shiftRight_add, Nat.add_comm 1 m]
    rw [BitVec.xor_assoc]

/-- A table block consumes exactly `bits` consecutive bits and advances its base accordingly. -/
def groupedFuel (bits : Nat) : Nat → Word → Word → Word
  | 0, _, _ => 0
  | chunks + 1, a, b => mulFuel bits a b ^^^
      groupedFuel bits chunks (iter bits a) (b >>> bits)

theorem groupedFuel_eq (bits chunks : Nat) (a b : Word) :
    groupedFuel bits chunks a b = mulFuel (bits * chunks) a b := by
  induction chunks generalizing a b with
  | zero => rfl
  | succ chunks ih =>
    simp only [groupedFuel, ih, Nat.mul_succ]
    rw [Nat.add_comm (bits * chunks) bits, mulFuel_add]

/-- Rust groups the same 128 bit steps into 32 nibble positions. -/
theorem nibble_grouping (a b : Word) : groupedFuel 4 32 a b = mul a b := by
  rw [groupedFuel_eq]
  rfl

/-- Python groups the same 128 bit steps into 16 byte positions. -/
theorem byte_grouping (a b : Word) : groupedFuel 8 16 a b = mul a b := by
  rw [groupedFuel_eq]
  rfl

end GRWTSK.Algebra.FiniteField.GF128
