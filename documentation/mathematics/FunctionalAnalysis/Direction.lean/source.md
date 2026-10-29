# Direction — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed1ffc84e88f66dceea17b2df6633ff581f165c3` · SHA-256 `39f40d9ad90face2a22a18da088ca4321fff8086e87eac7dce6e83cb4345a806`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.InnerProductSpace.PiL2

/-!
# Euclidean directions for Kakeya geometry

Ambient dimension is a type index.  A direction is an actual unit vector, not
a string label or a display coordinate.
-/

namespace Mathematics.Geometry.Kakeya

/-- The canonical real Euclidean carrier in dimension `dimension`. -/
abbrev AmbientPoint (dimension : Nat) :=
  EuclideanSpace ℝ (Fin dimension)

/-- An oriented unit direction in the ambient Euclidean carrier. -/
structure Direction (dimension : Nat) where
  vector : AmbientPoint dimension
  unit : ‖vector‖ = 1

theorem Direction.nonzero {dimension : Nat}
    (direction : Direction dimension) :
    direction.vector ≠ 0 := by
  intro zero
  have unit := direction.unit
  rw [zero, norm_zero] at unit
  norm_num at unit

end Mathematics.Geometry.Kakeya
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dcd824e4132aadc59780c8213c9928810765812f88c0608c62bdd77b61fb9729 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Direction/Variant39f40d9ad90face2a22a18da088ca4321fff8086e87eac7dce6e83cb4345a806.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
