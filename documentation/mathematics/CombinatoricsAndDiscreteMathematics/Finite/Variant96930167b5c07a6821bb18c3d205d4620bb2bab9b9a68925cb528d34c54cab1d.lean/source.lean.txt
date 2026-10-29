-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Equiv.Variantaf74f2b78695ad65c8cffa781589e713e0726667b760b905fe51277b13b4da70","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"af74f2b78695ad65c8cffa781589e713e0726667b760b905fe51277b13b4da70","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Equiv.Variantaf74f2b78695ad65c8cffa781589e713e0726667b760b905fe51277b13b4da70","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"af74f2b78695ad65c8cffa781589e713e0726667b760b905fe51277b13b4da70","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Group/Equiv/Finite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Algebra.Group.Equiv.Defs
import Mathlib.Data.Fintype.Defs

/-!
# Finite types with addition/multiplications

This file contains basic results and instances for finite types that have an
addition/multiplication operator.

## Main results

* `Fintype.decidableEqMulEquivFintype`: `MulEquiv`s on finite types have decidable equality
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Equiv.Variantaf74f2b78695ad65c8cffa781589e713e0726667b760b905fe51277b13b4da70

assert_not_exists MonoidWithZero MulAction

open Function

open Nat

universe u v

variable {α β γ : Type*}

open Function

namespace Fintype

section BundledHoms

@[to_additive]
instance decidableEqMulEquivFintype {α β : Type*} [DecidableEq β] [Fintype α] [Mul α] [Mul β] :
    DecidableEq (α ≃* β) :=
  fun a b => decidable_of_iff ((a : α → β) = b) (Injective.eq_iff DFunLike.coe_injective)

end BundledHoms

end Fintype
