import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteSequences.IndexedDictionary

open GRWTSK.Logic.FiniteSequences.IndexedDictionary

-- Expected kernel failure: an absent dictionary slot cannot yield a payload.
-- This uses the actual decoder, so no missing-input error should satisfy the control.
example : unpack (⟨[7], [(11, 1)]⟩ : Packed Nat Nat) = some [(11, 7)] :=
  (show unpack (⟨[7], [(11, 1)]⟩ : Packed Nat Nat) = none from rfl)
