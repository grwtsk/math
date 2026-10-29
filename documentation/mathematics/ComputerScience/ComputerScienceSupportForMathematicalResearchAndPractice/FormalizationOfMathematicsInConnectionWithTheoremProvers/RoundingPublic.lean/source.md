# Rounding Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `93253c9db683605d3e1ad0dede46921f39e9ddd5` · SHA-256 `2f0c22f5bdfaf073ad078acdffc2364c1e151d680bb8cb1e4875f1867bac590b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Surface.Core.NetworkSurgery.Identity
public import Mathlib.Tactic

/-!
# Exact half-threshold frontier quantization

The quotient/remainder witness is part of the finite input contract.  It makes
the signed numerator interpretation explicit while keeping every admission
quantity integral.  Quantization selects an index only; it contains no edit or
source-mutation operation.
-/

public section

namespace Surface.Core.NetworkSurgery

@[surface_novel]
structure ExactRationalCoordinate where
  numerator : Int
  denominator : Nat
  denominatorPositive : 0 < denominator
  quotient : Int
  remainder : Nat
  decomposition : numerator = quotient * Int.ofNat denominator + Int.ofNat remainder
  remainderLt : remainder < denominator

@[expose] def inboundRound (coordinate : ExactRationalCoordinate) : Int :=
  if 2 * coordinate.remainder < coordinate.denominator then
    coordinate.quotient
  else
    coordinate.quotient + 1

@[expose] def outboundRound (coordinate : ExactRationalCoordinate) : Int :=
  if 2 * coordinate.remainder ≤ coordinate.denominator then
    coordinate.quotient
  else
    coordinate.quotient + 1

@[surface_novel, surface_published]
theorem inboundRound_below_half (coordinate : ExactRationalCoordinate)
    (below : 2 * coordinate.remainder < coordinate.denominator) :
    inboundRound coordinate = coordinate.quotient := by
  simp [inboundRound, below]

@[surface_novel, surface_published]
theorem inboundRound_at_half_up (coordinate : ExactRationalCoordinate)
    (atHalf : 2 * coordinate.remainder = coordinate.denominator) :
    inboundRound coordinate = coordinate.quotient + 1 := by
  simp [inboundRound, atHalf]

@[surface_novel, surface_published]
theorem inboundRound_above_half (coordinate : ExactRationalCoordinate)
    (above : coordinate.denominator < 2 * coordinate.remainder) :
    inboundRound coordinate = coordinate.quotient + 1 := by
  simp [inboundRound, Nat.not_lt.mpr (Nat.le_of_lt above)]

@[surface_novel, surface_published]
theorem outboundRound_below_half (coordinate : ExactRationalCoordinate)
    (below : 2 * coordinate.remainder < coordinate.denominator) :
    outboundRound coordinate = coordinate.quotient := by
  simp [outboundRound, Nat.le_of_lt below]

@[surface_novel, surface_published]
theorem outboundRound_at_half_down (coordinate : ExactRationalCoordinate)
    (atHalf : 2 * coordinate.remainder = coordinate.denominator) :
    outboundRound coordinate = coordinate.quotient := by
  simp [outboundRound, atHalf]

@[surface_novel, surface_published]
theorem outboundRound_above_half (coordinate : ExactRationalCoordinate)
    (above : coordinate.denominator < 2 * coordinate.remainder) :
    outboundRound coordinate = coordinate.quotient + 1 := by
  simp [outboundRound, Nat.not_le.mpr above]

@[surface_novel, surface_published]
theorem inbound_rounding_result_adjacent_to_floor
    (coordinate : ExactRationalCoordinate) :
    inboundRound coordinate = coordinate.quotient ∨
      inboundRound coordinate = coordinate.quotient + 1 := by
  unfold inboundRound
  split <;> simp

@[surface_novel, surface_published]
theorem outbound_rounding_result_adjacent_to_floor
    (coordinate : ExactRationalCoordinate) :
    outboundRound coordinate = coordinate.quotient ∨
      outboundRound coordinate = coordinate.quotient + 1 := by
  unfold outboundRound
  split <;> simp

@[expose] def clampCandidateIndex (candidate : Int) (count : Nat) : Nat :=
  if count = 0 then 0
  else min candidate.toNat (count - 1)

@[surface_novel, surface_published]
theorem rounding_preserves_bounds_after_clamp
    (candidate : Int) (count : Nat) (nonempty : 0 < count) :
    clampCandidateIndex candidate count < count := by
  rw [clampCandidateIndex, if_neg (Nat.ne_of_gt nonempty)]
  exact Nat.lt_of_le_of_lt (Nat.min_le_right _ _)
    (Nat.sub_lt nonempty (by omega))

end Surface.Core.NetworkSurgery
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fa719decd38a4e6fe8f6b25591f0c6f5cb610adfcb0ed982c19a402e061ef907 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rounding/Variant2f0c22f5bdfaf073ad078acdffc2364c1e151d680bb8cb1e4875f1867bac590b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
