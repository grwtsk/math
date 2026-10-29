# Complete source: GRWTSK.Algebra.LinearAlgebra.CubeSurface.Variant32057a5cba5d2570cc184abb3480ed8781a9447057dfa3ce0d31022f03078989

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3546c8d9aa808830a41ef2ada5d1c878bd3aca90` · SHA-256 `32057a5cba5d2570cc184abb3480ed8781a9447057dfa3ce0d31022f03078989`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Six-face cube presentation

This is the formal presentation shape used to classify the Rust `bits-to-cube`
mode. It is a finite layout, not a cubical-topology construction.
-/

namespace BitMatrix.Codec.CubeSurface

/-- Stable six-face serialization order. -/
inductive Face where
  | front
  | back
  | top
  | bottom
  | left
  | right
  deriving DecidableEq, Repr

/-- One square, six-face Boolean presentation with zero-padding capacity. -/
structure Presentation where
  side : Nat
  sidePositive : 0 < side
  sourceBitCount : Nat
  cell : Face → Fin side → Fin side → Bool
  sourceFits : sourceBitCount ≤ 6 * side * side

/-- Total number of presented face cells. -/
def Presentation.surfaceCapacity (presentation : Presentation) : Nat :=
  6 * presentation.side * presentation.side

/-- Padding is the unused suffix of the face presentation. -/
def Presentation.paddingBitCount (presentation : Presentation) : Nat :=
  presentation.surfaceCapacity - presentation.sourceBitCount

end BitMatrix.Codec.CubeSurface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b54d6cd4e78f0fdf3bc0b0929f8a6f800c9ec3c3784dab7980896c33e1492f94 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CubeSurface/Variant32057a5cba5d2570cc184abb3480ed8781a9447057dfa3ce0d31022f03078989.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
