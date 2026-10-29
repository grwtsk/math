-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.NatDegreeMul.Variantfc982e1e248a4bdc3f5da13593e8e97a64dd695d786fa4db281aee350a576c90","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fc982e1e248a4bdc3f5da13593e8e97a64dd695d786fa4db281aee350a576c90","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.NatDegreeMul.Variantfc982e1e248a4bdc3f5da13593e8e97a64dd695d786fa4db281aee350a576c90","mathematical_subject":"Algebra.Polynomials","original_sha256":"fc982e1e248a4bdc3f5da13593e8e97a64dd695d786fa4db281aee350a576c90","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Polynomial/Degree/Domain.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Johannes Hölzl, Kim Morrison, Jens Wagemaker
-/
module

public import Mathlib.Algebra.Polynomial.Degree.Operations

/-!
# Univariate polynomials form a domain

## Main results

* `Polynomial.instNoZeroDivisors`: `R[X]` has no zero divisors if `R` does not
* `Polynomial.instDomain`: `R[X]` is a domain if `R` is
-/


namespace GRWTSK.Algebra.CommutativeAlgebra.NatDegreeMul.Variantfc982e1e248a4bdc3f5da13593e8e97a64dd695d786fa4db281aee350a576c90

public section

noncomputable section

open Polynomial

namespace Polynomial

universe u v

variable {R : Type u} {S : Type v} {a : R} {n : ℕ}

section Semiring

variable [Semiring R] [NoZeroDivisors R] {p q : R[X]}

lemma natDegree_mul (hp : p ≠ 0) (hq : q ≠ 0) : (p * q).natDegree = p.natDegree + q.natDegree := by
  rw [← Nat.cast_inj (R := WithBot ℕ), ← degree_eq_natDegree (mul_ne_zero hp hq),
    Nat.cast_add, ← degree_eq_natDegree hp, ← degree_eq_natDegree hq, degree_mul]

omit [NoZeroDivisors R] in
variable (p) in
lemma natDegree_smul {S : Type*} [Semiring S] [IsDomain S] [Module S R] [Module.IsTorsionFree S R]
    {a : S} (ha : a ≠ 0) : (a • p).natDegree = p.natDegree := by
  by_cases hp : p = 0
  · simp only [hp, smul_zero]
  · apply natDegree_eq_of_le_of_coeff_ne_zero
    · exact (natDegree_smul_le _ _).trans (le_refl _)
    · simp only [coeff_smul]
      apply smul_ne_zero ha
      simp [hp]

@[simp]
lemma natDegree_pow (p : R[X]) (n : ℕ) : natDegree (p ^ n) = n * natDegree p := by
  obtain rfl | hp := eq_or_ne p 0
  · obtain rfl | hn := eq_or_ne n 0 <;> simp [*]
  exact natDegree_pow' <| by
    rw [← leadingCoeff_pow, Ne, leadingCoeff_eq_zero]; exact pow_ne_zero _ hp

lemma natDegree_le_of_dvd (h1 : p ∣ q) (h2 : q ≠ 0) : p.natDegree ≤ q.natDegree := by
  obtain ⟨q, rfl⟩ := h1
  rw [mul_ne_zero_iff] at h2
  rw [natDegree_mul h2.1 h2.2]; exact Nat.le_add_right _ _

lemma degree_le_of_dvd (h1 : p ∣ q) (h2 : q ≠ 0) : degree p ≤ degree q := by
  rcases h1 with ⟨q, rfl⟩; rw [mul_ne_zero_iff] at h2
  exact degree_le_mul_left p h2.2

lemma eq_zero_of_dvd_of_degree_lt (h₁ : p ∣ q) (h₂ : degree q < degree p) : q = 0 := by
  by_contra hc
  exact lt_iff_not_ge.mp h₂ (degree_le_of_dvd h₁ hc)

lemma eq_zero_of_dvd_of_natDegree_lt (h₁ : p ∣ q) (h₂ : natDegree q < natDegree p) :
    q = 0 := by
  by_contra hc
  exact lt_iff_not_ge.mp h₂ (natDegree_le_of_dvd h₁ hc)

lemma not_dvd_of_degree_lt (h0 : q ≠ 0) (hl : q.degree < p.degree) : ¬p ∣ q := by
  by_contra hcontra
  exact h0 (eq_zero_of_dvd_of_degree_lt hcontra hl)

lemma not_dvd_of_natDegree_lt (h0 : q ≠ 0) (hl : q.natDegree < p.natDegree) :
    ¬p ∣ q := by
  by_contra hcontra
  exact h0 (eq_zero_of_dvd_of_natDegree_lt hcontra hl)

/-- This lemma is useful for working with the `intDegree` of a rational function. -/
lemma natDegree_sub_eq_of_prod_eq {p₁ p₂ q₁ q₂ : R[X]} (hp₁ : p₁ ≠ 0) (hq₁ : q₁ ≠ 0)
    (hp₂ : p₂ ≠ 0) (hq₂ : q₂ ≠ 0) (h_eq : p₁ * q₂ = p₂ * q₁) :
    (p₁.natDegree : ℤ) - q₁.natDegree = (p₂.natDegree : ℤ) - q₂.natDegree := by
  rw [sub_eq_sub_iff_add_eq_add]
  norm_cast
  rw [← natDegree_mul hp₁ hq₂, ← natDegree_mul hp₂ hq₁, h_eq]

end Semiring

end Polynomial
