import Mathematics.Refactor.Profile

/-! # Hard module-planning constraints -/

namespace Mathematics.Refactor

open Mathematics

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
  elementIds : Array SourceElementId
  moduleIds : Array TargetModuleId
  evidenceDigest : Digest
  satisfied : Bool
  deriving DecidableEq, Repr

end Mathematics.Refactor
