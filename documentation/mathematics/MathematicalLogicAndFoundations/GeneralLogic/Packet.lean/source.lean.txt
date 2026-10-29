import Mathlib.Data.Rat.Lemmas

/-!
# Finite exact packet coordinates

This record is a rational finite-coordinate packet used by the exact diagonal
kernel.  It is not a claim about a general Hilbert--Schmidt realization.
-/

namespace Mathematics.SemiLocalDefect

structure Packet (Coordinate : Type u) where
  packetId : String
  amplitude : Coordinate → ℚ

end Mathematics.SemiLocalDefect
