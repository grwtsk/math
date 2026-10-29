import Mathlib.Data.Finset.Basic
import Mathlib.Tactic.DeriveFintype
import Mathematics.Core.SemanticIdentity

/-! # Typed whole-system strata and boundaries -/

namespace Mathematics.Mutation

inductive Stratum
  | human
  | jurisCapability
  | semantic
  | globalPlanner
  | localElement
  | formal
  | runtime
  | client
  | world
  deriving DecidableEq, Repr, Fintype

abbrev StratumSet := Finset Stratum

inductive SystemEdgeKind
  | dependsOn
  | authorizes
  | restricts
  | calls
  | reads
  | writes
  | renders
  | validates
  | derives
  | transmits
  | retains
  | delegates
  | supersedes
  | revokes
  | implements
  | projects
  deriving DecidableEq, Repr, Fintype

inductive BoundaryKind
  | humanToSystem
  | jurisdictionChange
  | operatingSystemPermission
  | localToRemote
  | modelToTool
  | leanToRust
  | rustToClient
  | clientToWorld
  | deviceHandoff
  | corpusVisibility
  deriving DecidableEq, Repr, Fintype

abbrev BoundarySet := Finset BoundaryKind

end Mathematics.Mutation
