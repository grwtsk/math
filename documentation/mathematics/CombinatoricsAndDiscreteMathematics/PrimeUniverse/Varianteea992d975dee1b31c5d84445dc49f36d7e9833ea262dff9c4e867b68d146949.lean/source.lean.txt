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
