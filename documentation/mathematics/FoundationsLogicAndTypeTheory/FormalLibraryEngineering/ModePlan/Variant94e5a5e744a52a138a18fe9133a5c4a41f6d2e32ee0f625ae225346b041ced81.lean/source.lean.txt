import Mathematics.GraphAccess.Mode

/-!
# Certified mode plans

Primary modes carry semantic support proofs.  Tie breakers are separately
restricted so they cannot silently replace the primary objective key.
-/

namespace Mathematics.GraphAccess

inductive TieBreaker
  | canonicalOrder
  | rotor
deriving DecidableEq, Repr

inductive TieBreakerAllowed :
    TraversalMode → TieBreaker → Prop
  | canonical (mode : TraversalMode) :
      TieBreakerAllowed mode .canonicalOrder
  | rotorBfs :
      TieBreakerAllowed .bfs .rotor
  | rotorDijkstra :
      TieBreakerAllowed .dijkstra .rotor
  | rotorAStar :
      TieBreakerAllowed .astar .rotor

structure ModePlan
    (objective : AccessObjective) where
  primary : TraversalMode
  supports : Supports primary objective
  tieBreaker : TieBreaker
  tieBreakerAllowed :
    TieBreakerAllowed primary tieBreaker
  revision : ModeRevision

def canonicalPrimaryMode :
    AccessObjective → TraversalMode
  | .minimumHop => .bfs
  | .minimumCost => .dijkstra
  | .goalDirectedCost => .astar
  | .fairExploration => .rotor
  | .universalCoverage => .universalSequence
  | .finitePatternCoverage => .debruijn
  | .invariantSampling => .lowDiscrepancy
  | .multiscaleDiversification => .recaman
  | .primitiveObstruction => .obstruction
  | .limitCylinderAccess => .cylinder

theorem canonicalPrimaryMode_supports
    (objective : AccessObjective) :
    Supports (canonicalPrimaryMode objective) objective := by
  cases objective <;> constructor

structure ModeProfileFamily
    (G : GraphCut) where
  Profile : TraversalMode → Type
  digest :
    ∀ mode, Profile mode → ProfileDigest

end Mathematics.GraphAccess
