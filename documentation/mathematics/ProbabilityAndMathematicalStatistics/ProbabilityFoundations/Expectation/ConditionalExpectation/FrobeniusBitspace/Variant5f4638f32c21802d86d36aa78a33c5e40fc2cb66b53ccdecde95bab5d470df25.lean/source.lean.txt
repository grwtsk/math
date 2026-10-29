import Folder.Carrier.BinaryMatrixStream

/-!
# Folder.Bitspace.FrobeniusBitspace

Radiation role: shell-filtration
BinaryMatrix spine: This module organizes boundary, shell, or expansion layers radiating out from BinaryMatrix-shaped finite carriers.
Ontology: bitspace.frobenius_bitspace
Pivot role: spectral
Zero typology: spectral
Contract boundary: definition
Composite stack role: field
-/


namespace Folder
namespace Bitspace

open Carrier

structure FrobeniusBitspace where
  stream : BinaryMatrixStream
  capacity : Nat
  fits : stream.length ≤ capacity

namespace FrobeniusBitspace

def bitValue (b : Bit) : ℝ :=
  if b = 0 then 0 else 1

def bitNormSq (b : Bit) : ℝ :=
  bitValue b * bitValue b

theorem bitNormSq_le_one (b : Bit) :
    bitNormSq b ≤ 1 := by
  by_cases h : b = 0 <;> simp [bitNormSq, bitValue, h]

end FrobeniusBitspace
end Bitspace
end Folder
