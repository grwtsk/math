-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.NatDegreeLePred.Variant684dbcc5e66a6835e2a5250a442228387cac5801c656d7b3365d30e367651ef7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"684dbcc5e66a6835e2a5250a442228387cac5801c656d7b3365d30e367651ef7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.NatDegreeLePred.Variant684dbcc5e66a6835e2a5250a442228387cac5801c656d7b3365d30e367651ef7","mathematical_subject":"Algebra.Polynomials","original_sha256":"684dbcc5e66a6835e2a5250a442228387cac5801c656d7b3365d30e367651ef7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Polynomial/Degree/Monomial.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Johannes Hölzl, Kim Morrison, Jens Wagemaker
-/
module

public import Mathlib.Algebra.Polynomial.Degree.Defs
public import Mathlib.Algebra.Polynomial.Monomial
public import Mathlib.Data.Nat.SuccPred

/-!
# Degree of univariate monomials
-/


namespace GRWTSK.Algebra.CommutativeAlgebra.NatDegreeLePred.Variant684dbcc5e66a6835e2a5250a442228387cac5801c656d7b3365d30e367651ef7

public section

noncomputable section

open Finset Polynomial

namespace Polynomial

universe u v

variable {R : Type u} {a : R} {n : ℕ}

section Semiring

variable [Semiring R] {p : R[X]}

lemma natDegree_le_pred (hf : p.natDegree ≤ n) (hn : p.coeff n = 0) : p.natDegree ≤ n - 1 := by
  obtain _ | n := n
  · exact hf
  · refine (Nat.le_succ_iff_eq_or_le.1 hf).resolve_left fun h ↦ ?_
    rw [← Nat.succ_eq_add_one, ← h, coeff_natDegree, leadingCoeff_eq_zero] at hn
    simp_all

theorem monomial_natDegree_leadingCoeff_eq_self (h : #p.support ≤ 1) :
    monomial p.natDegree p.leadingCoeff = p := by
  classical
  rcases card_support_le_one_iff_monomial.1 h with ⟨n, a, rfl⟩
  by_cases ha : a = 0 <;> simp [ha]

theorem C_mul_X_pow_eq_self (h : #p.support ≤ 1) : C p.leadingCoeff * X ^ p.natDegree = p := by
  rw [C_mul_X_pow_eq_monomial, monomial_natDegree_leadingCoeff_eq_self h]

end Semiring

end Polynomial
