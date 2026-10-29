# Positive Capacity Positive Capacity — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a193c5dae348b1fa9153014e4bd8a0638fcd254d` · SHA-256 `984599a575dd3af9da4a2ce1083f231e89523ac28ab75899a501b3925ddc3c3c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.OperatorOrder
import Mathematics.SemiLocalDefect.PrimeUniverse

/-!
# Positive monotone diagonal capacities

`PositiveCapacity` is abstract-first at the finite rational diagonal level.
The structure stores the exact lower bound, identity upper bound, and
monotonicity laws.  No Hardy, Sonin, transfer, or arithmetic object appears in
its definition.
-/

namespace Mathematics.SemiLocalDefect

structure PositiveCapacity
    (Prime : Type u)
    (Coordinate : Type v)
    [DecidableEq Prime] where
  primeUniverse : FinitePrimeUniverse Prime
  capacityId : String
  value : Finset Prime → DiagonalOperator Coordinate
  nonnegative :
    ∀ cut,
      cut ⊆ primeUniverse.primes →
      OperatorNonnegative (value cut)
  bounded_by_identity :
    ∀ cut,
      cut ⊆ primeUniverse.primes →
      OperatorLe (value cut) (identityOperator Coordinate)
  monotone :
    ∀ source target,
      source ⊆ target →
      target ⊆ primeUniverse.primes →
      OperatorLe (value source) (value target)

def PositiveCapacity.increment
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (cut : Finset Prime)
    (prime : Prime) :
    DiagonalOperator Coordinate :=
  capacity.value (insert prime cut) - capacity.value cut

def PositiveCapacity.reduced
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (cut : Finset Prime) :
    DiagonalOperator Coordinate :=
  capacity.value cut - capacity.value ∅

theorem reduced_empty_zero
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate) :
    capacity.reduced ∅ = 0 := by
  funext coordinate
  simp [PositiveCapacity.reduced]

theorem capacity_increment_nonnegative
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (cut : Finset Prime)
    (prime : Prime)
    (cut_in_universe : cut ⊆ capacity.primeUniverse.primes)
    (prime_registered : prime ∈ capacity.primeUniverse.primes) :
    OperatorNonnegative (capacity.increment cut prime) := by
  apply operator_increment_nonnegative
  apply capacity.monotone cut (insert prime cut)
  · exact Finset.subset_insert prime cut
  · exact Finset.insert_subset
      prime_registered
      cut_in_universe

theorem capacity_value_bounded
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    (capacity : PositiveCapacity Prime Coordinate)
    (cut : Finset Prime)
    (cut_in_universe : cut ⊆ capacity.primeUniverse.primes) :
    OperatorLe
      (capacity.value cut)
      (identityOperator Coordinate) :=
  capacity.bounded_by_identity cut cut_in_universe

end Mathematics.SemiLocalDefect
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba7d548ce32cc80b7b1e8bd10743301c8dbc1172d9118fa2fe9f28f82263ce25 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant984599a575dd3af9da4a2ce1083f231e89523ac28ab75899a501b3925ddc3c3c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
