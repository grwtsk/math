import Lean

namespace NoeFixtures.ParentAuto

structure Base where
  n : Nat

structure Embedded extends Base where
  ready : True := by trivial

structure SharedLeft where
  n : Nat

structure SharedRight where
  n : Nat
  extra : Nat

structure Copied extends SharedLeft, SharedRight where
  ready : True := by trivial

end NoeFixtures.ParentAuto
