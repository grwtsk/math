-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.IccMulIccSubsetPrime.Variant4f053f6a0fa0df5b006fc455273bdf0325f23a8d1bb711390795b304e0128a6e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4f053f6a0fa0df5b006fc455273bdf0325f23a8d1bb711390795b304e0128a6e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.IccMulIccSubsetPrime.Variant4f053f6a0fa0df5b006fc455273bdf0325f23a8d1bb711390795b304e0128a6e","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"4f053f6a0fa0df5b006fc455273bdf0325f23a8d1bb711390795b304e0128a6e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Group/Pointwise/Finset/Interval.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.Order.Group.Pointwise.Interval
import Mathlib.Order.Interval.Finset.Defs
import Mathlib.Algebra.Group.Pointwise.Finset.Basic

/-! # Pointwise operations on intervals

This should be kept in sync with `Mathlib/Data/Set/Pointwise/Interval.lean`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.IccMulIccSubsetPrime.Variant4f053f6a0fa0df5b006fc455273bdf0325f23a8d1bb711390795b304e0128a6e

variable {α : Type*}

namespace Finset

open scoped Pointwise

/-! ### Binary pointwise operations

Note that the subset operations below only cover the cases with the largest possible intervals on
the LHS: to conclude that `Ioo a b * Ioo c d ⊆ Ioo (a * c) (c * d)`, you can use monotonicity of `*`
and `Finset.Ico_mul_Ioc_subset`.

TODO: repeat these lemmas for the generality of `mul_le_mul` (which assumes nonnegativity), which
the unprimed names have been reserved for
-/

section ContravariantLE

variable [Mul α] [Preorder α] [DecidableEq α]
variable [MulLeftMono α] [MulRightMono α]

@[to_additive Icc_add_Icc_subset]
theorem Icc_mul_Icc_subset' [LocallyFiniteOrder α] (a b c d : α) :
    Icc a b * Icc c d ⊆ Icc (a * c) (b * d) :=
  Finset.coe_subset.mp <| by simpa using Set.Icc_mul_Icc_subset' _ _ _ _

@[to_additive Iic_add_Iic_subset]
theorem Iic_mul_Iic_subset' [LocallyFiniteOrderBot α] (a b : α) : Iic a * Iic b ⊆ Iic (a * b) :=
  Finset.coe_subset.mp <| by simpa using Set.Iic_mul_Iic_subset' _ _

@[to_additive Ici_add_Ici_subset]
theorem Ici_mul_Ici_subset' [LocallyFiniteOrderTop α] (a b : α) : Ici a * Ici b ⊆ Ici (a * b) :=
  Finset.coe_subset.mp <| by simpa using Set.Ici_mul_Ici_subset' _ _

end ContravariantLE

section ContravariantLT

variable [Mul α] [PartialOrder α] [DecidableEq α]
variable [MulLeftStrictMono α] [MulRightStrictMono α]

@[to_additive Icc_add_Ico_subset]
theorem Icc_mul_Ico_subset' [LocallyFiniteOrder α] (a b c d : α) :
    Icc a b * Ico c d ⊆ Ico (a * c) (b * d) :=
  Finset.coe_subset.mp <| by simpa using Set.Icc_mul_Ico_subset' _ _ _ _

@[to_additive Ico_add_Icc_subset]
theorem Ico_mul_Icc_subset' [LocallyFiniteOrder α] (a b c d : α) :
    Ico a b * Icc c d ⊆ Ico (a * c) (b * d) :=
  Finset.coe_subset.mp <| by simpa using Set.Ico_mul_Icc_subset' _ _ _ _

@[to_additive Ioc_add_Ico_subset]
theorem Ioc_mul_Ico_subset' [LocallyFiniteOrder α] (a b c d : α) :
    Ioc a b * Ico c d ⊆ Ioo (a * c) (b * d) :=
  Finset.coe_subset.mp <| by simpa using Set.Ioc_mul_Ico_subset' _ _ _ _

@[to_additive Ico_add_Ioc_subset]
theorem Ico_mul_Ioc_subset' [LocallyFiniteOrder α] (a b c d : α) :
    Ico a b * Ioc c d ⊆ Ioo (a * c) (b * d) :=
  Finset.coe_subset.mp <| by simpa using Set.Ico_mul_Ioc_subset' _ _ _ _

@[to_additive Iic_add_Iio_subset]
theorem Iic_mul_Iio_subset' [LocallyFiniteOrderBot α] (a b : α) : Iic a * Iio b ⊆ Iio (a * b) :=
  Finset.coe_subset.mp <| by simpa using Set.Iic_mul_Iio_subset' _ _

@[to_additive Iio_add_Iic_subset]
theorem Iio_mul_Iic_subset' [LocallyFiniteOrderBot α] (a b : α) : Iio a * Iic b ⊆ Iio (a * b) :=
  Finset.coe_subset.mp <| by simpa using Set.Iio_mul_Iic_subset' _ _

@[to_additive Ioi_add_Ici_subset]
theorem Ioi_mul_Ici_subset' [LocallyFiniteOrderTop α] (a b : α) : Ioi a * Ici b ⊆ Ioi (a * b) :=
  Finset.coe_subset.mp <| by simpa using Set.Ioi_mul_Ici_subset' _ _

@[to_additive Ici_add_Ioi_subset]
theorem Ici_mul_Ioi_subset' [LocallyFiniteOrderTop α] (a b : α) : Ici a * Ioi b ⊆ Ioi (a * b) :=
  Finset.coe_subset.mp <| by simpa using Set.Ici_mul_Ioi_subset' _ _

end ContravariantLT

end Finset
