-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProdEqZeroIffExistsZeroNat.Variantbb49b1ed2ee634ec5c87e7224c64c959f9fd847d91830e62c45b669caa8e15a9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bb49b1ed2ee634ec5c87e7224c64c959f9fd847d91830e62c45b669caa8e15a9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ProdEqZeroIffExistsZeroNat.Variantbb49b1ed2ee634ec5c87e7224c64c959f9fd847d91830e62c45b669caa8e15a9","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"bb49b1ed2ee634ec5c87e7224c64c959f9fd847d91830e62c45b669caa8e15a9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/List/Nat/Prod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
import Init.Data.List.Lemmas
public import Init.BinderPredicates
public import Init.NotationExtra
import Init.Data.Nat.Lemmas


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProdEqZeroIffExistsZeroNat.Variantbb49b1ed2ee634ec5c87e7224c64c959f9fd847d91830e62c45b669caa8e15a9

public section

set_option linter.listVariables true -- Enforce naming conventions for `List`/`Array`/`Vector` variables.
set_option linter.indexVariables true -- Enforce naming conventions for index variables.

namespace List

protected theorem prod_eq_zero_iff_exists_zero_nat {l : List Nat} : l.prod = 0 ↔ ∃ x ∈ l, x = 0 := by
  induction l with
  | nil => simp
  | cons x xs ih =>
    simp [Nat.mul_eq_zero, ih, eq_comm (a := (0 : Nat))]

protected theorem prod_pos_iff_forall_pos_nat {l : List Nat} : 0 < l.prod ↔ ∀ x ∈ l, 0 < x := by
  induction l with
  | nil => simp
  | cons x xs ih =>
    simp only [prod_cons, mem_cons, forall_eq_or_imp, ← ih]
    constructor
    · intro h
      exact ⟨Nat.pos_of_mul_pos_right h, Nat.pos_of_mul_pos_left h⟩
    · exact fun ⟨hx, hxs⟩ => Nat.mul_pos hx hxs

@[simp]
theorem prod_replicate_nat {n : Nat} {a : Nat} : (replicate n a).prod = a ^ n := by
  induction n <;> simp_all [replicate_succ, Nat.pow_succ, Nat.mul_comm]

theorem prod_append_nat {l₁ l₂ : List Nat} : (l₁ ++ l₂).prod = l₁.prod * l₂.prod := by
  simp [prod_append]

theorem prod_reverse_nat (xs : List Nat) : xs.reverse.prod = xs.prod := by
  simp [prod_reverse]

theorem prod_eq_foldl_nat {xs : List Nat} : xs.prod = xs.foldl (init := 1) (· * ·) := by
  simp only [foldl_eq_foldr_reverse, Nat.mul_comm, ← prod_eq_foldr, prod_reverse_nat]

end List
