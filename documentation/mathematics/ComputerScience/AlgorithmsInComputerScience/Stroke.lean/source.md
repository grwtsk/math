# Stroke — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c096a75287b8738e25e43fe7e0923a413f80bf5` · SHA-256 `a44f5fbac409ae34d1bfbf693a2fb91c43f53c433c2d01884ccafcf1063734ee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Set.Basic

/-!
# Stroke and continuous-region semantics

The client renders these choices numerically. This module fixes their exact
vocabulary and the point-set meaning of region combination without making a
raster-accuracy claim.
-/

namespace BitMatrix.Geometry.Stroke

/-- Endpoint treatment for a rendered stroke. -/
inductive Cap where
  | butt
  | square
  | round
  deriving DecidableEq, Repr

/-- Internal join treatment for a rendered stroke. -/
inductive Join where
  | miter
  | round
  | bevel
  | square
  | configuredSquare
  deriving DecidableEq, Repr

/-- Placement of stroke width relative to its source path. -/
inductive Alignment where
  | inside
  | center
  | outside
  deriving DecidableEq, Repr

/-- A positive-width stroke style. -/
structure Style where
  width : ℝ
  widthPositive : 0 < width
  alignment : Alignment
  cap : Cap
  join : Join
  miterLimit : ℝ
  miterLimitAtLeastOne : 1 ≤ miterLimit

/-- A continuous region is represented extensionally by point membership. -/
abbrev Region (Point : Type) := Set Point

/-- The four supported continuous set operations. -/
inductive SetOperation where
  | union
  | subtract
  | intersect
  | exclude
  deriving DecidableEq, Repr

/-- Exact point-set semantics applied before raster sampling. -/
def combine {Point : Type}
    (operation : SetOperation)
    (left right : Region Point) : Region Point :=
  match operation with
  | .union => left ∪ right
  | .subtract => left \ right
  | .intersect => left ∩ right
  | .exclude => (left \ right) ∪ (right \ left)

end BitMatrix.Geometry.Stroke
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=89f1bc3ba0a2753d3edd71fa89d57fbe12acae80b462cb8367ff54bc9c3809c4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stroke/Varianta44f5fbac409ae34d1bfbf693a2fb91c43f53c433c2d01884ccafcf1063734ee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
