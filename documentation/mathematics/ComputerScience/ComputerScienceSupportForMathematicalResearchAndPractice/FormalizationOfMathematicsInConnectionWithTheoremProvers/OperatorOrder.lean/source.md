# Operator Order — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d369f64a568cbd63412d452bc657e748a3e049d` · SHA-256 `6253d8adccded8e623f0d1006046eb40c739a9e1d0bdc81a56fa6320f090b837`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Algebra.Order.Pi
import Mathlib.Data.Rat.Lemmas
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-!
# Exact rational diagonal operator order

This is a deliberately finite-coordinate, exact-arithmetic kernel.  It proves
the order algebra needed by the early capacity packages without claiming a
general bounded-operator or infinite-dimensional realization.
-/

namespace Mathematics.SemiLocalDefect

abbrev DiagonalOperator (Coordinate : Type u) :=
  Coordinate → ℚ

def OperatorNonnegative
    {Coordinate : Type u}
    (operator : DiagonalOperator Coordinate) : Prop :=
  ∀ coordinate, 0 ≤ operator coordinate

def OperatorLe
    {Coordinate : Type u}
    (left right : DiagonalOperator Coordinate) : Prop :=
  ∀ coordinate, left coordinate ≤ right coordinate

def identityOperator
    (Coordinate : Type u) :
    DiagonalOperator Coordinate :=
  fun _ => 1

theorem operatorLe_refl
    {Coordinate : Type u}
    (operator : DiagonalOperator Coordinate) :
    OperatorLe operator operator :=
  fun _ => le_rfl

theorem operatorLe_trans
    {Coordinate : Type u}
    {first second third : DiagonalOperator Coordinate}
    (first_second : OperatorLe first second)
    (second_third : OperatorLe second third) :
    OperatorLe first third :=
  fun coordinate =>
    le_trans
      (first_second coordinate)
      (second_third coordinate)

theorem operator_increment_nonnegative
    {Coordinate : Type u}
    {source target : DiagonalOperator Coordinate}
    (ordered : OperatorLe source target) :
    OperatorNonnegative (target - source) :=
  fun coordinate =>
    sub_nonneg.mpr (ordered coordinate)

theorem nonnegative_add
    {Coordinate : Type u}
    {left right : DiagonalOperator Coordinate}
    (left_nonnegative : OperatorNonnegative left)
    (right_nonnegative : OperatorNonnegative right) :
    OperatorNonnegative (left + right) :=
  fun coordinate =>
    add_nonneg
      (left_nonnegative coordinate)
      (right_nonnegative coordinate)

end Mathematics.SemiLocalDefect
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=765bd7c8bec488d4cb227d994de3b33c74e6f2786398a3637f52ad7cf395761a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperatorOrder/Variant6253d8adccded8e623f0d1006046eb40c739a9e1d0bdc81a56fa6320f090b837.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
