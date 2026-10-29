-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.SuccEqSucc.Variant75b440a55eb77682cf2b5ddcbaf6652c02c673d0c67b4140e779af26731b86f8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"75b440a55eb77682cf2b5ddcbaf6652c02c673d0c67b4140e779af26731b86f8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.SuccEqSucc.Variant75b440a55eb77682cf2b5ddcbaf6652c02c673d0c67b4140e779af26731b86f8","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"75b440a55eb77682cf2b5ddcbaf6652c02c673d0c67b4140e779af26731b86f8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Int/SuccPred.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Order.Ring.Int
import Mathlib.Data.Nat.SuccPred

/-!
# Successors and predecessors of integers

In this file, we show that `ℤ` is both an archimedean `SuccOrder` and an archimedean `PredOrder`.
-/



namespace GRWTSK.Algebra.UniversalAlgebra.SuccEqSucc.Variant75b440a55eb77682cf2b5ddcbaf6652c02c673d0c67b4140e779af26731b86f8

open Function Order

namespace Int

-- so that Lean reads `Int.succ` through `SuccOrder.succ`
@[instance] abbrev instSuccOrder : SuccOrder ℤ :=
  { SuccOrder.ofSuccLeIff succ fun {_ _} => Iff.rfl with succ := succ }

instance instSuccAddOrder : SuccAddOrder ℤ := ⟨fun _ => rfl⟩

-- so that Lean reads `Int.pred` through `PredOrder.pred`
@[instance] abbrev instPredOrder : PredOrder ℤ where
  pred := pred
  pred_le _ := (sub_one_lt_of_le le_rfl).le
  min_of_le_pred ha := ((sub_one_lt_of_le le_rfl).not_le ha).elim
  le_pred_of_lt {_ _} := le_sub_one_of_lt

instance instPredSubOrder : PredSubOrder ℤ := ⟨fun _ => rfl⟩

@[simp]
theorem succ_eq_succ : Order.succ = succ :=
  rfl

@[simp]
theorem pred_eq_pred : Order.pred = pred :=
  rfl

instance : IsSuccArchimedean ℤ :=
  ⟨fun {a b} h =>
    ⟨(b - a).toNat, by rw [succ_iterate, toNat_sub_of_le h, ← add_sub_assoc, add_sub_cancel_left]⟩⟩

instance : IsPredArchimedean ℤ :=
  ⟨fun {a b} h =>
    ⟨(b - a).toNat, by rw [pred_iterate, toNat_sub_of_le h, sub_sub_cancel]⟩⟩

/-! ### Covering relation -/


@[simp, norm_cast]
theorem natCast_covBy {a b : ℕ} : (a : ℤ) ⋖ b ↔ a ⋖ b := by
  rw [Order.covBy_iff_add_one_eq, Order.covBy_iff_add_one_eq]
  exact Int.natCast_inj

end Int

alias ⟨_, CovBy.intCast⟩ := Int.natCast_covBy
