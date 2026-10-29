-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.UnitsIntUniv.Variantfd97ddfdeb93526257ca4ae9d74b9190410400e03ceba650e7903e2c03cc4c88","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fd97ddfdeb93526257ca4ae9d74b9190410400e03ceba650e7903e2c03cc4c88","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.UnitsIntUniv.Variantfd97ddfdeb93526257ca4ae9d74b9190410400e03ceba650e7903e2c03cc4c88","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"fd97ddfdeb93526257ca4ae9d74b9190410400e03ceba650e7903e2c03cc4c88","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Fintype/Units.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Algebra.Ring.Int.Units
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sum
import Mathlib.SetTheory.Cardinal.Finite

/-!
# fintype instances relating to units
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.UnitsIntUniv.Variantfd97ddfdeb93526257ca4ae9d74b9190410400e03ceba650e7903e2c03cc4c88

assert_not_exists Field

variable {α : Type*}

instance UnitsInt.fintype : Fintype ℤˣ :=
  ⟨{1, -1}, fun x ↦ by cases Int.units_eq_one_or x <;> simp [*]⟩

@[simp]
theorem UnitsInt.univ : (Finset.univ : Finset ℤˣ) = {1, -1} := rfl

@[simp]
theorem Fintype.card_units_int : Fintype.card ℤˣ = 2 := rfl

instance [Monoid α] [Fintype α] [DecidableEq α] : Fintype αˣ :=
  Fintype.ofEquiv _ (unitsEquivProdSubtype α).symm

instance [Monoid α] [Finite α] : Finite αˣ := Finite.of_injective _ Units.ext

variable (α)

theorem Nat.card_units [GroupWithZero α] :
    Nat.card αˣ = Nat.card α - 1 := by
  classical
  rw [Nat.card_congr unitsEquivNeZero, eq_comm, ← Nat.card_congr (Equiv.sumCompl (· = (0 : α)))]
  rcases finite_or_infinite {a : α // a ≠ 0}
  · rw [Nat.card_sum, Nat.card_unique, add_tsub_cancel_left]
  · rw [Nat.card_eq_zero_of_infinite, Nat.card_eq_zero_of_infinite, zero_tsub]

theorem Nat.card_eq_card_units_add_one [GroupWithZero α] [Finite α] :
    Nat.card α = Nat.card αˣ + 1 := by
  rw [Nat.card_units, tsub_add_cancel_of_le Nat.card_pos]

theorem Fintype.card_units [GroupWithZero α] [Fintype α] [DecidableEq α] :
    Fintype.card αˣ = Fintype.card α - 1 := by
  rw [← Nat.card_eq_fintype_card, Nat.card_units, Nat.card_eq_fintype_card]

theorem Fintype.card_eq_card_units_add_one [GroupWithZero α] [Fintype α] [DecidableEq α] :
    Fintype.card α = Fintype.card αˣ + 1 := by
  rw [Fintype.card_units, tsub_add_cancel_of_le Fintype.card_pos]
