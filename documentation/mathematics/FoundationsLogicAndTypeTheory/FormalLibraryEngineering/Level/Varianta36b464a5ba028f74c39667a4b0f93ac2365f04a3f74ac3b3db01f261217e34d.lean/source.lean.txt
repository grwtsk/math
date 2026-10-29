import Mathematics.Core.Id

/-! # Relaxation granularity -/

namespace Mathematics.Relaxation

inductive Level
  | declaration
  | file
  | module
  | project
  | bridge
  | federation
  deriving DecidableEq, Repr

end Mathematics.Relaxation
