# Complete source: GRWTSK.Algebra.LinearAlgebra.ProjectiveSpecialLinearGroup.Variant1d70fd07e900dd09f6f2447ebf7464294ffd3793c02a5c2b618a1d8deaa9cc45

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d4ea5c6b122ada69edf700acddf30e76ad006c1c` · SHA-256 `1d70fd07e900dd09f6f2447ebf7464294ffd3793c02a5c2b618a1d8deaa9cc45`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Wen Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wen Yang
-/
module

public import Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup

/-!
# Projective Special Linear Group

## Notation

In the `MatrixGroups` locale:

* `PSL(n, R)` is a shorthand for `Matrix.ProjectiveSpecialLinearGroup (Fin n) R`
-/

public section

namespace Matrix

universe u v

open Matrix

open scoped MatrixGroups

variable (n : Type u) [DecidableEq n] [Fintype n] (R : Type v) [CommRing R]

/-- A projective special linear group is the quotient of a special linear group by its center. -/
abbrev ProjectiveSpecialLinearGroup : Type _ :=
    SpecialLinearGroup n R ⧸ Subgroup.center (SpecialLinearGroup n R)

/-- `PSL(n, R)` is the projective special linear group `SL(n, R)/Z(SL(n, R))`. -/
scoped[MatrixGroups] notation "PSL(" n ", " R ")" => Matrix.ProjectiveSpecialLinearGroup (Fin n) R

end Matrix
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3a4d309dff90874eb0e1ca5536f49c0400b8fe20da89a64d23c30958e532f3f1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ProjectiveSpecialLinearGroup/Variant1d70fd07e900dd09f6f2447ebf7464294ffd3793c02a5c2b618a1d8deaa9cc45.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
