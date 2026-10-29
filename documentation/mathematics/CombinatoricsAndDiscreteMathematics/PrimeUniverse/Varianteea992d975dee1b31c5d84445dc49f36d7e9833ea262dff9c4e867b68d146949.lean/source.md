# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeUniverse.Varianteea992d975dee1b31c5d84445dc49f36d7e9833ea262dff9c4e867b68d146949

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc6cb1bc44b99e49604ad7048f98bc36cb9baa7a` · SHA-256 `eea992d975dee1b31c5d84445dc49f36d7e9833ea262dff9c4e867b68d146949`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Finset.Basic

/-!
# Finite prime universes with an archimedean anchor

Executable cuts range over one finite universe.  `Place.archimedean` is not a
member that callers may omit: `AnchoredPrimeCut.contains` includes it by
definition.
-/

namespace Mathematics.SemiLocalDefect

inductive Place (Prime : Type u)
  | archimedean
  | finite (prime : Prime)
deriving DecidableEq, Repr

structure FinitePrimeUniverse
    (Prime : Type u)
    [DecidableEq Prime] where
  universeId : String
  primes : Finset Prime
  canonicalOrderRef : String

structure AnchoredPrimeCut
    (Prime : Type u)
    [DecidableEq Prime] where
  primeUniverse : FinitePrimeUniverse Prime
  cutId : String
  primes : Finset Prime
  subset_universe : primes ⊆ primeUniverse.primes

def AnchoredPrimeCut.contains
    {Prime : Type u}
    [DecidableEq Prime]
    (cut : AnchoredPrimeCut Prime) :
    Place Prime → Prop
  | .archimedean => True
  | .finite prime => prime ∈ cut.primes

theorem archimedean_anchor_present
    {Prime : Type u}
    [DecidableEq Prime]
    (cut : AnchoredPrimeCut Prime) :
    cut.contains (.archimedean : Place Prime) :=
  trivial

theorem finite_place_present_iff
    {Prime : Type u}
    [DecidableEq Prime]
    (cut : AnchoredPrimeCut Prime)
    (prime : Prime) :
    cut.contains (.finite prime) ↔ prime ∈ cut.primes :=
  Iff.rfl

end Mathematics.SemiLocalDefect
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=65647d8dd0ca8ae6d181f49edeed4808d725df98c40f67d7877c851a09f95683 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeUniverse/Varianteea992d975dee1b31c5d84445dc49f36d7e9833ea262dff9c4e867b68d146949.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
