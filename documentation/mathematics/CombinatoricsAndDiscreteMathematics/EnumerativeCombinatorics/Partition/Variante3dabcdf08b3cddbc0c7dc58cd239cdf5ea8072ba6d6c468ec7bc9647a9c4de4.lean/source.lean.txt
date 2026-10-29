import MathDiscovery.Refactor.Constraint

/-! # Deterministic constrained partitions -/

namespace MathDiscovery.Refactor

open MathDiscovery

structure LexicographicObjective where
  hardPolicyFailures : Nat
  atomCountPenalty : Nat
  largestAtom : Nat
  contextFrontierSize : Nat
  additionalImports : Nat
  compatibilityFacades : Nat
  changedBytes : Nat
  stableTieBreak : String
  deriving DecidableEq, Repr, Inhabited

structure Partition where
  assignments : Array MathDiscovery.Atom.ModuleAssignment
  constraints : Array Constraint
  objective : LexicographicObjective
  importGraphDigest : Digest
  deterministic : Bool
  acyclic : Bool
  deriving DecidableEq, Repr

end MathDiscovery.Refactor
