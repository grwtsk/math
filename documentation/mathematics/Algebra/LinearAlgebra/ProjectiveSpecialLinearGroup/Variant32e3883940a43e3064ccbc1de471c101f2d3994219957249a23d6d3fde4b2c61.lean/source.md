# Complete source: GRWTSK.Algebra.LinearAlgebra.ProjectiveSpecialLinearGroup.Variant32e3883940a43e3064ccbc1de471c101f2d3994219957249a23d6d3fde4b2c61

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `537c3acc449a2fc878e3e00301efea0a0bbe95a3` · SHA-256 `32e3883940a43e3064ccbc1de471c101f2d3994219957249a23d6d3fde4b2c61`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Wen Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wen Yang
-/
import Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup

/-!
# Projective Special Linear Group

## Notation

In the `MatrixGroups` locale:

* `PSL(n, R)` is a shorthand for `Matrix.ProjectiveSpecialLinearGroup (Fin n) R`
-/

namespace Matrix

universe u v

open Matrix LinearMap

open scoped MatrixGroups

variable (n : Type u) [DecidableEq n] [Fintype n] (R : Type v) [CommRing R]

/-- A projective special linear group is the quotient of a special linear group by its center. -/
abbrev ProjectiveSpecialLinearGroup : Type _ :=
    SpecialLinearGroup n R ⧸ Subgroup.center (SpecialLinearGroup n R)

/-- `PSL(n, R)` is the projective special linear group `SL(n, R)/Z(SL(n, R))`. -/
scoped[MatrixGroups] notation "PSL(" n ", " R ")" => Matrix.ProjectiveSpecialLinearGroup (Fin n) R

end Matrix
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e489e33f32c4f8921d15ac355b4a17feb37cd4c30e42f994da36c760805c9d3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ProjectiveSpecialLinearGroup/Variant32e3883940a43e3064ccbc1de471c101f2d3994219957249a23d6d3fde4b2c61.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
