# Complete source: GRWTSK.Algebra.LinearAlgebra.Orthogonal.Variant4aa56a2cc4a27e071f1a45c9c6a76b5437718f2aecbeb04e8d21b502a774cf8d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d0bc1867f39f4761515742b1bf214878fc0f3227` · SHA-256 `4aa56a2cc4a27e071f1a45c9c6a76b5437718f2aecbeb04e8d21b502a774cf8d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Lu-Ming Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Lu-Ming Zhang
-/
import Mathlib.Data.Matrix.Mul

/-!
# Orthogonal

This file contains definitions and properties concerning orthogonality of rows and columns.

## Main results

- `matrix.HasOrthogonalRows`:
  `A.HasOrthogonalRows` means `A` has orthogonal (with respect to `dotProduct`) rows.
- `matrix.HasOrthogonalCols`:
  `A.HasOrthogonalCols` means `A` has orthogonal (with respect to `dotProduct`) columns.

## Tags

orthogonal
-/

assert_not_exists Field

namespace Matrix

variable {α n m : Type*}
variable [Mul α] [AddCommMonoid α]
variable (A : Matrix m n α)

open Matrix

/-- `A.HasOrthogonalRows` means matrix `A` has orthogonal rows (with respect to
`dotProduct`). -/
def HasOrthogonalRows [Fintype n] : Prop :=
  ∀ ⦃i₁ i₂⦄, i₁ ≠ i₂ → A i₁ ⬝ᵥ A i₂ = 0

/-- `A.HasOrthogonalCols` means matrix `A` has orthogonal columns (with respect to
`dotProduct`). -/
def HasOrthogonalCols [Fintype m] : Prop :=
  HasOrthogonalRows Aᵀ

/-- `Aᵀ` has orthogonal rows iff `A` has orthogonal columns. -/
@[simp]
theorem transpose_hasOrthogonalRows_iff_hasOrthogonalCols [Fintype m] :
    Aᵀ.HasOrthogonalRows ↔ A.HasOrthogonalCols :=
  Iff.rfl

/-- `Aᵀ` has orthogonal columns iff `A` has orthogonal rows. -/
@[simp]
theorem transpose_hasOrthogonalCols_iff_hasOrthogonalRows [Fintype n] :
    Aᵀ.HasOrthogonalCols ↔ A.HasOrthogonalRows :=
  Iff.rfl

variable {A}

theorem HasOrthogonalRows.hasOrthogonalCols [Fintype m] (h : Aᵀ.HasOrthogonalRows) :
    A.HasOrthogonalCols :=
  h

theorem HasOrthogonalCols.transpose_hasOrthogonalRows [Fintype m] (h : A.HasOrthogonalCols) :
    Aᵀ.HasOrthogonalRows :=
  h

theorem HasOrthogonalCols.hasOrthogonalRows [Fintype n] (h : Aᵀ.HasOrthogonalCols) :
    A.HasOrthogonalRows :=
  h

theorem HasOrthogonalRows.transpose_hasOrthogonalCols [Fintype n] (h : A.HasOrthogonalRows) :
    Aᵀ.HasOrthogonalCols :=
  h

end Matrix
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=01c3c27c619023e7d246f09140f2084dadfb91afdf8821c6339b8559873ff8fe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Orthogonal/Variant4aa56a2cc4a27e071f1a45c9c6a76b5437718f2aecbeb04e8d21b502a774cf8d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
