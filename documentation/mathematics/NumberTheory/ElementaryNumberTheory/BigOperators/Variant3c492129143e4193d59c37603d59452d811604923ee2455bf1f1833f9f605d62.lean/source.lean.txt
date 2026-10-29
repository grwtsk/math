-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.CoprimeListProdLeftIff.Variant66da21a0db90f18b5a3595091e125c099c3bfee7a27982987236ca81c5fbcd34","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"66da21a0db90f18b5a3595091e125c099c3bfee7a27982987236ca81c5fbcd34","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.PrimeArithmetic.SourceCorpus.CoprimeListProdLeftIff.Variant66da21a0db90f18b5a3595091e125c099c3bfee7a27982987236ca81c5fbcd34","mathematical_subject":"NumberTheory.PrimeArithmetic","original_sha256":"66da21a0db90f18b5a3595091e125c099c3bfee7a27982987236ca81c5fbcd34","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Nat/GCD/BigOperators.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura
-/
import Batteries.Data.Nat.Gcd
import Mathlib.Algebra.BigOperators.Group.Finset.Defs

/-! # Lemmas about coprimality with big products.

These lemmas are kept separate from `Data.Nat.GCD.Basic` in order to minimize imports.
-/



namespace GRWTSK.NumberTheory.ElementaryNumberTheory.CoprimeListProdLeftIff.Variant66da21a0db90f18b5a3595091e125c099c3bfee7a27982987236ca81c5fbcd34

namespace Nat

variable {ι : Type*}

theorem coprime_list_prod_left_iff {l : List ℕ} {k : ℕ} :
    Coprime l.prod k ↔ ∀ n ∈ l, Coprime n k := by
  induction l <;> simp [Nat.coprime_mul_iff_left, *]

theorem coprime_list_prod_right_iff {k : ℕ} {l : List ℕ} :
    Coprime k l.prod ↔ ∀ n ∈ l, Coprime k n := by
  simp_rw [coprime_comm (n := k), coprime_list_prod_left_iff]

theorem coprime_multiset_prod_left_iff {m : Multiset ℕ} {k : ℕ} :
    Coprime m.prod k ↔ ∀ n ∈ m, Coprime n k := by
  induction m using Quotient.inductionOn; simpa using coprime_list_prod_left_iff

theorem coprime_multiset_prod_right_iff {k : ℕ} {m : Multiset ℕ} :
    Coprime k m.prod ↔ ∀ n ∈ m, Coprime k n := by
  induction m using Quotient.inductionOn; simpa using coprime_list_prod_right_iff

theorem coprime_prod_left_iff {t : Finset ι} {s : ι → ℕ} {x : ℕ} :
    Coprime (∏ i ∈ t, s i) x ↔ ∀ i ∈ t, Coprime (s i) x := by
  simpa using coprime_multiset_prod_left_iff (m := t.val.map s)

theorem coprime_prod_right_iff {x : ℕ} {t : Finset ι} {s : ι → ℕ} :
    Coprime x (∏ i ∈ t, s i) ↔ ∀ i ∈ t, Coprime x (s i) := by
  simpa using coprime_multiset_prod_right_iff (m := t.val.map s)

/-- See `IsCoprime.prod_left` for the corresponding lemma about `IsCoprime` -/
alias ⟨_, Coprime.prod_left⟩ := coprime_prod_left_iff

/-- See `IsCoprime.prod_right` for the corresponding lemma about `IsCoprime` -/
alias ⟨_, Coprime.prod_right⟩ := coprime_prod_right_iff

theorem coprime_fintype_prod_left_iff [Fintype ι] {s : ι → ℕ} {x : ℕ} :
    Coprime (∏ i, s i) x ↔ ∀ i, Coprime (s i) x := by
  simp [coprime_prod_left_iff]

theorem coprime_fintype_prod_right_iff [Fintype ι] {x : ℕ} {s : ι → ℕ} :
    Coprime x (∏ i, s i) ↔ ∀ i, Coprime x (s i) := by
  simp [coprime_prod_right_iff]

end Nat
