import BitMatrix.Runtime.FixedProgramInterpreter

/-! Focused kernel-checked examples for the bounded fixed interpreter profile. -/

namespace BitMatrix.Tests.FixedProgramInterpreter

open BitMatrix.Runtime.FixedProgramInterpreter

example : validateOperations [.pushTrue, .return] = some 1 := by
  native_decide

example : validateOperations [.return] = none := by
  rfl

example :
    evaluateOperations [.readSelf, .not, .return]
      (fun index => index == 3) 3 = some false := by
  native_decide

example :
    evaluateOperations [.indexBit ⟨0, by simp [programLengthBits]⟩, .return]
      zeroState 5 = some true := by
  native_decide

example
    (decoder : CheckedDecoder)
    (programCode input : State)
    (malformed : decoder.decode programCode = none) :
    interpretChecked decoder programCode input = none ∧
      interpretTotal decoder programCode input = zeroState := by
  exact ⟨
    interpretChecked_of_decode_none decoder programCode input malformed,
    interpretTotal_of_decode_none decoder programCode input malformed⟩

end BitMatrix.Tests.FixedProgramInterpreter
