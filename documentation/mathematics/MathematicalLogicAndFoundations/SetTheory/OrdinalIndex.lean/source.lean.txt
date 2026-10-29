import Mathematics.StratifiedBoundary.Frontier.LocalRank
import Mathematics.StratifiedBoundary.OrdinalTally.Stratum

/-!
# Strata, finite addresses, and persistent identity

The ordinal shadow identifies only a stratum.  A finite local rank identifies
a record inside one finite cut.  A compatible rank sequence and a persistent
identifier identify a projective boundary record.  None of these coordinates
is silently substituted for another.
-/

namespace Mathematics.StratifiedBoundary.Frontier

open Mathematics.StratifiedBoundary.OrdinalTally

universe uFrontier uPersistent uRecord

structure StratifiedFrontierCode where
  stratumBoundary : Ordinal
  ordinalShadow : Ordinal
  localRank : Nat

structure StratifiedFrontierIndex
    (limits : LimitSemantics)
    (Frontier : Type uFrontier) where
  stratum : OrdinalStratum limits
  local : LocalRankCertificate Frontier

namespace StratifiedFrontierIndex

def code
    {limits : LimitSemantics}
    {Frontier : Type uFrontier}
    (index :
      StratifiedFrontierIndex limits Frontier)
    (frontier : Frontier) :
    StratifiedFrontierCode where
  stratumBoundary :=
    Ordinal.omega ^ index.stratum.value
  ordinalShadow :=
    Ordinal.omega ^
        (index.stratum.value + 1) +
      index.local.rank frontier
  localRank := index.local.rank frontier

@[simp] theorem code_stratumBoundary
    {limits : LimitSemantics}
    {Frontier : Type uFrontier}
    (index :
      StratifiedFrontierIndex limits Frontier)
    (frontier : Frontier) :
    (index.code frontier).stratumBoundary =
      Ordinal.omega ^ index.stratum.value :=
  rfl

@[simp] theorem code_ordinalShadow
    {limits : LimitSemantics}
    {Frontier : Type uFrontier}
    (index :
      StratifiedFrontierIndex limits Frontier)
    (frontier : Frontier) :
    (index.code frontier).ordinalShadow =
      Ordinal.omega ^
          (index.stratum.value + 1) +
        index.local.rank frontier :=
  rfl

theorem stratified_frontier_index_injective
    {limits : LimitSemantics}
    {Frontier : Type uFrontier}
    (index :
      StratifiedFrontierIndex limits Frontier) :
    Function.Injective index.code := by
  intro left right equal
  apply index.local.injective
  exact congrArg StratifiedFrontierCode.localRank
    equal

end StratifiedFrontierIndex

structure PersistentFrontierLineage
    (PersistentId : Type uPersistent)
    (LowFrontier HighFrontier : Type*) where
  lowId : LowFrontier → PersistentId
  highId : HighFrontier → PersistentId
  project : HighFrontier → LowFrontier
  identityPreserved :
    ∀ frontier,
      highId frontier =
        lowId (project frontier)

structure BoundaryAddress where
  rank : Nat → Nat
  transitionCompatible : Prop
  transitionCompatibilityProof :
    transitionCompatible

structure LimitBoundaryCode
    (PersistentId : Type uPersistent) where
  stratumBoundary : Ordinal
  address : BoundaryAddress
  persistentId : PersistentId

def LimitBoundaryCode.ordinalProjection
    {PersistentId : Type uPersistent}
    (code : LimitBoundaryCode PersistentId) :
    Ordinal :=
  code.stratumBoundary

structure LimitAddressSeparationCertificate
    (Record : Type uRecord)
    (PersistentId : Type uPersistent) where
  encode :
    Record → LimitBoundaryCode PersistentId
  injective :
    Function.Injective encode
  ordinalProjectionAuthoritative : Bool := false
  ordinalProjectionNonauthoritative :
    ordinalProjectionAuthoritative = false := by
      rfl

structure StratumSeparationCertificate
    {limits : LimitSemantics}
    {LowFrontier HighFrontier : Type*}
    (low :
      StratifiedFrontierIndex
        limits LowFrontier)
    (high :
      StratifiedFrontierIndex
        limits HighFrontier) where
  stratumStrict :
    low.stratum.value <
      high.stratum.value
  allLowBelowAllHigh :
    ∀ lowFrontier highFrontier,
      (low.code lowFrontier).ordinalShadow <
        (high.code highFrontier).ordinalShadow

end Mathematics.StratifiedBoundary.Frontier
