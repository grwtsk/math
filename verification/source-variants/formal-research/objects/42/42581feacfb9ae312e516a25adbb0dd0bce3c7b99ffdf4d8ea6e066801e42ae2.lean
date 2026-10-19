import MathDiscovery.Refactor.Profile

/-! # Hard module-planning constraints -/

namespace MathDiscovery.Refactor

open MathDiscovery

inductive ConstraintKind
  | exactlyOneModule
  | mustLink
  | cannotLink
  | acyclicImports
  | reconstructibleContext
  | publicNamePreservation
  | statementPreservation
  | trustNonincrease
  | safetyPreservation
  | stableLayering
  | canonicalRootIsolation
  | importOnlyUmbrella
  deriving DecidableEq, Repr, Inhabited

structure Constraint where
  id : StableId
  kind : ConstraintKind
  atomIds : Array SourceAtomId
  moduleIds : Array TargetModuleId
  evidenceDigest : Digest
  satisfied : Bool
  deriving DecidableEq, Repr

end MathDiscovery.Refactor
