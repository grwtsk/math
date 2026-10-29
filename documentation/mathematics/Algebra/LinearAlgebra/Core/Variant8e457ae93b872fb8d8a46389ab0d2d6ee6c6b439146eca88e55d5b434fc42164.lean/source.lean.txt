import Std

/-!
# BooleanMatrix carrier

The universal carrier is a Boolean matrix indexed by two natural numbers.
-/

namespace BooleanMatrix

/--
The universal Boolean-matrix carrier.

Both dimensions are countably infinite. Finite matrices, streams, chains,
programs, state, data, and metadata can be represented by choosing suitable
regions and encodings.
-/
abbrev Matrix :=
  Nat → Nat → Bool

namespace Matrix

/-- Two matrices are equal when every entry is equal. -/
theorem ext
    {left right : Matrix}
    (h : ∀ row column, left row column = right row column) :
    left = right := by
  funext row column
  exact h row column

/-- The matrix containing `false` at every coordinate. -/
def empty : Matrix :=
  fun _ _ => false

@[simp]
theorem empty_apply (row column : Nat) :
    empty row column = false :=
  rfl

end Matrix

end BooleanMatrix
