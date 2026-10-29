# Divisor — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `209cb48bf0079193f302419520da6ed2dd93e830` · SHA-256 `938d1c8159b0e1116630176f2af5f77786b8454695a3b5c72a08751c54a42e65`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.RHIsolation.Cell
import Mathlib.Algebra.Order.BigOperators.Group.Finset

/-!
# Finite analytic zero divisors

The divisor explicitly records every zero in one admitted cell together with
its positive multiplicity.  A rejected or absent proof object never inserts a
point into this divisor.
-/

namespace Mathematics.RHIsolation

open scoped BigOperators

structure AnalyticZeroDivisor
    (xi : ℂ → ℂ)
    (region : Set ℂ) where
  points : Finset ℂ
  multiplicity : ℂ → Nat
  mem_iff :
    ∀ z,
      z ∈ points ↔
        z ∈ region ∧ xi z = 0
  multiplicity_pos :
    ∀ z ∈ points,
      0 < multiplicity z

def AnalyticZeroDivisor.count
    {xi : ℂ → ℂ}
    {region : Set ℂ}
    (divisor : AnalyticZeroDivisor xi region) :
    Nat :=
  ∑ z ∈ divisor.points, divisor.multiplicity z

theorem AnalyticZeroDivisor.card_le_count
    {xi : ℂ → ℂ}
    {region : Set ℂ}
    (divisor : AnalyticZeroDivisor xi region) :
    divisor.points.card ≤ divisor.count := by
  rw [Finset.card_eq_sum_ones,
    AnalyticZeroDivisor.count]
  exact Finset.sum_le_sum fun z hz =>
    divisor.multiplicity_pos z hz

theorem AnalyticZeroDivisor.nonempty_of_count_pos
    {xi : ℂ → ℂ}
    {region : Set ℂ}
    (divisor : AnalyticZeroDivisor xi region)
    (positive : 0 < divisor.count) :
    divisor.points.Nonempty := by
  by_contra empty
  have pointsEmpty : divisor.points = ∅ :=
    Finset.not_nonempty_iff_eq_empty.mp empty
  simp [AnalyticZeroDivisor.count, pointsEmpty] at positive

theorem AnalyticZeroDivisor.exists_zero_of_count_pos
    {xi : ℂ → ℂ}
    {region : Set ℂ}
    (divisor : AnalyticZeroDivisor xi region)
    (positive : 0 < divisor.count) :
    ∃ z, z ∈ region ∧ xi z = 0 := by
  obtain ⟨z, hz⟩ :=
    divisor.nonempty_of_count_pos positive
  exact ⟨z, (divisor.mem_iff z).mp hz⟩

end Mathematics.RHIsolation
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4ac1f476a2172974bb70892b5aad51f9a0722370a933ede1ff4199442c703ffc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Divisor/Variant938d1c8159b0e1116630176f2af5f77786b8454695a3b5c72a08751c54a42e65.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
