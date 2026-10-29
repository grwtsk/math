-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.HasOrthogonalRows.Variant4aa56a2cc4a27e071f1a45c9c6a76b5437718f2aecbeb04e8d21b502a774cf8d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4aa56a2cc4a27e071f1a45c9c6a76b5437718f2aecbeb04e8d21b502a774cf8d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.HasOrthogonalRows.Variant4aa56a2cc4a27e071f1a45c9c6a76b5437718f2aecbeb04e8d21b502a774cf8d","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"4aa56a2cc4a27e071f1a45c9c6a76b5437718f2aecbeb04e8d21b502a774cf8d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/Matrix/Orthogonal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.Algebra.LinearAlgebra.HasOrthogonalRows.Variant4aa56a2cc4a27e071f1a45c9c6a76b5437718f2aecbeb04e8d21b502a774cf8d

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
