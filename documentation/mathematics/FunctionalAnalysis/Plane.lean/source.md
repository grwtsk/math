# Plane — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `584df3f304b56e26a9713b217e783a85e0f8e6e8` · SHA-256 `ff625ea610b2a18aadb3a7d285638f827839ad8211c41ccfb9de9e2d375da191`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.InnerProductSpace.PiL2

/-!
# Real Euclidean plane

The affine carrier is Mathlib's canonical two-dimensional Euclidean space.
Cartesian display coordinates are constructors and projections of that carrier,
not a second point structure.
-/

namespace Mathematics.Geometry

/-- The real Euclidean plane with its canonical inner-product metric. -/
abbrev PlanePoint := EuclideanSpace ℝ (Fin 2)

namespace PlanePoint

/-- Construct a plane point from two Cartesian coordinates. -/
def cartesian (horizontal vertical : ℝ) : PlanePoint :=
  !₂[horizontal, vertical]

@[simp] theorem cartesian_horizontal (horizontal vertical : ℝ) :
    cartesian horizontal vertical 0 = horizontal := by
  simp [cartesian]

@[simp] theorem cartesian_vertical (horizontal vertical : ℝ) :
    cartesian horizontal vertical 1 = vertical := by
  simp [cartesian]

end PlanePoint

end Mathematics.Geometry
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ffde13ba894febf34047a686a6f9ba059d944451f0621d073b0ee2a2374fdfef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Plane/Variantff625ea610b2a18aadb3a7d285638f827839ad8211c41ccfb9de9e2d375da191.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
