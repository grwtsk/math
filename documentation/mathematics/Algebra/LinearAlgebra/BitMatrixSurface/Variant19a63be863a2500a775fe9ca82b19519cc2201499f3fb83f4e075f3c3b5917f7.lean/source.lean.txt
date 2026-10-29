import BitMatrix
import URSMContracts

/-! # Definitionally exact bridge between the two finite function squares. -/

namespace URSM.Bridge

open URSM.Contracts

abbrev asContractSquare (n : Nat) :
    BitMatrix n n → BitSquare n :=
  id

abbrev asBitMatrix (n : Nat) :
    BitSquare n → BitMatrix n n :=
  id

@[simp] theorem roundTripBitMatrix
    (matrix : BitMatrix n n) :
    asBitMatrix n (asContractSquare n matrix) = matrix :=
  rfl

@[simp] theorem roundTripContractSquare
    (matrix : BitSquare n) :
    asContractSquare n (asBitMatrix n matrix) = matrix :=
  rfl

end URSM.Bridge
