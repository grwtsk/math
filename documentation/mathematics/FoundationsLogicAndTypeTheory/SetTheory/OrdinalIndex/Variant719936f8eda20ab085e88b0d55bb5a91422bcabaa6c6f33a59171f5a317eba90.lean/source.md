# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.OrdinalIndex.Variant719936f8eda20ab085e88b0d55bb5a91422bcabaa6c6f33a59171f5a317eba90

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf53f0c7b304a1651688b7dfd570636edcb485e9` · SHA-256 `719936f8eda20ab085e88b0d55bb5a91422bcabaa6c6f33a59171f5a317eba90`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3bbc883295cc26239ccd21e1411c136f5d3bd6cd0373df6b5ce84cfb344d29bc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/OrdinalIndex/Variant719936f8eda20ab085e88b0d55bb5a91422bcabaa6c6f33a59171f5a317eba90.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
