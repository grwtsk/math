# Map — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d5bdd3d7cf09a14819f112f2d2812a7454de9115` · SHA-256 `56be85dbe2043be394067077f550fc7646405ac7077ff6a94155836e5b51f5ef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Std

/-!
# Reflective construction maps

This namespace is deliberately independent of runtime ownership.  A map is a
total Lean function, while its declared operational domain and invariant-domain
evidence remain explicit data.
-/

namespace Mathematics.Stability

abbrev StableId := String

inductive ProofDisposition
  | proved
  | open
  | refuted
  deriving DecidableEq, Repr

inductive StabilityUnknown
  | invariantDomain
  | fixedPointExistence
  | fixedPointUniqueness
  | derivativeBound
  | contractionMargin
  | inverseConditioning
  | logarithmDomain
  | logarithmBranch
  | higherOrderRemainder
  | residualFloor
  | basinMembership
  | expansionLowerBound
  | escapeSet
  | periodicOrbit
  | cycleLength
  | cycleMultiplier
  | dampingPreservation
  | dampingContraction
  | defectPotentialCompleteness
  | pathGain
  | globalConvergence
  | verification
  | correctionValidity
  | periodicStability
  | terminalBoundary
  deriving DecidableEq, Repr

structure DeclaredDomain (X : Type) where
  contains : X → Prop

structure ReflectiveMap (X : Type) where
  mapId : StableId
  apply : X → X
  domain : DeclaredDomain X

def ReflectiveMap.mapsDeclaredDomain
    {X : Type}
    (construction : ReflectiveMap X) : Prop :=
  ∀ x, construction.domain.contains x →
    construction.domain.contains (construction.apply x)

structure InvariantDomainCertificate
    {X : Type}
    (construction : ReflectiveMap X) where
  invariant : construction.mapsDeclaredDomain

theorem construction_map_is_total
    {X : Type}
    (construction : ReflectiveMap X)
    (x : X) :
    ∃ y, construction.apply x = y :=
  ⟨construction.apply x, rfl⟩

def iterate
    {X : Type}
    (construction : X → X) :
    Nat → X → X
  | 0, x => x
  | n + 1, x => construction (iterate construction n x)

@[simp] theorem iterate_zero
    {X : Type}
    (construction : X → X)
    (x : X) :
    iterate construction 0 x = x :=
  rfl

@[simp] theorem iterate_succ
    {X : Type}
    (construction : X → X)
    (n : Nat)
    (x : X) :
    iterate construction (n + 1) x =
      construction (iterate construction n x) :=
  rfl

structure OpenObligation where
  obligationId : StableId
  unknown : StabilityUnknown
  statement : Prop
  disposition : ProofDisposition

end Mathematics.Stability
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=730e0b51ac7644d3a5659abf7f8a5397e9d6d760cc6ea719caf6703bebf0089b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variant56be85dbe2043be394067077f550fc7646405ac7077ff6a94155836e5b51f5ef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
