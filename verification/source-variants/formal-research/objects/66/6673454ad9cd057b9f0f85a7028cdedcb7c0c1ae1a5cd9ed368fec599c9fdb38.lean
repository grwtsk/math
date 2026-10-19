import Mathematics.Orbit.All

/-! # Orbit boundaries and obstructions -/

namespace Mathematics.Surgery

inductive ObstructionKind
  | orbitTypeBoundary
  | endpointFailure
  | regularityFailure
  | residualDivergence
  | cohomologyClass
  deriving DecidableEq, Repr

structure Obstruction where
  kind : ObstructionKind
  evidence : EvidenceId
  explanation : String
  deriving DecidableEq, Repr

end Mathematics.Surgery
