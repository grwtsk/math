import Mathematics.Core.Id

/-! # Positive-reflection destinations -/

namespace Mathematics.Reflection

inductive Destination
  | sourceProject
  | mathlib
  | bridgeProject
  | documentation
  | data
  deriving DecidableEq, Repr

end Mathematics.Reflection
