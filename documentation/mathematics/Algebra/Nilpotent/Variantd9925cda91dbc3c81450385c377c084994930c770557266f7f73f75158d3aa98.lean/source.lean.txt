-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.IdealIsRadicalIffQuotientReduced.Variant7e2d08ff0298ae51de8281fbd1b88f78d6dbc002404177c68cf7961002718d6a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7e2d08ff0298ae51de8281fbd1b88f78d6dbc002404177c68cf7961002718d6a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.IdealIsRadicalIffQuotientReduced.Variant7e2d08ff0298ae51de8281fbd1b88f78d6dbc002404177c68cf7961002718d6a","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"7e2d08ff0298ae51de8281fbd1b88f78d6dbc002404177c68cf7961002718d6a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Ideal/Quotient/Nilpotent.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Oliver Nash. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Oliver Nash
-/
import Mathlib.RingTheory.Ideal.Quotient.Operations
import Mathlib.RingTheory.Nilpotent.Lemmas

/-!
# Nilpotent elements in quotient rings
-/


namespace GRWTSK.Algebra.IdealIsRadicalIffQuotientReduced.Variant7e2d08ff0298ae51de8281fbd1b88f78d6dbc002404177c68cf7961002718d6a

theorem Ideal.isRadical_iff_quotient_reduced {R : Type*} [CommRing R] (I : Ideal R) :
    I.IsRadical ↔ IsReduced (R ⧸ I) := by
  conv_lhs => rw [← @Ideal.mk_ker R _ I]
  exact RingHom.ker_isRadical_iff_reduced_of_surjective Quotient.mk_surjective

variable {S : Type*} [CommRing S] (I : Ideal S)

/-- Let `P` be a property on ideals. If `P` holds for square-zero ideals, and if
  `P I → P (J ⧸ I) → P J`, then `P` holds for all nilpotent ideals. -/
theorem Ideal.IsNilpotent.induction_on (hI : IsNilpotent I)
    {P : ∀ ⦃S : Type _⦄ [CommRing S], Ideal S → Prop}
    (h₁ : ∀ ⦃S : Type _⦄ [CommRing S], ∀ I : Ideal S, I ^ 2 = ⊥ → P I)
    (h₂ : ∀ ⦃S : Type _⦄ [CommRing S], ∀ I J : Ideal S, I ≤ J → P I →
      P (J.map (Ideal.Quotient.mk I)) → P J) :
    P I := by
  obtain ⟨n, hI : I ^ n = ⊥⟩ := hI
  induction' n using Nat.strong_induction_on with n H generalizing S
  by_cases hI' : I = ⊥
  · subst hI'
    apply h₁
    rw [← Ideal.zero_eq_bot, zero_pow two_ne_zero]
  rcases n with - | n
  · rw [pow_zero, Ideal.one_eq_top] at hI
    haveI := subsingleton_of_bot_eq_top hI.symm
    exact (hI' (Subsingleton.elim _ _)).elim
  rcases n with - | n
  · rw [pow_one] at hI
    exact (hI' hI).elim
  apply h₂ (I ^ 2) _ (Ideal.pow_le_self two_ne_zero)
  · apply H n.succ _ (I ^ 2)
    · rw [← pow_mul, eq_bot_iff, ← hI, Nat.succ_eq_add_one]
      apply Ideal.pow_le_pow_right (by omega)
    · exact n.succ.lt_succ_self
  · apply h₁
    rw [← Ideal.map_pow, Ideal.map_quotient_self]

theorem IsNilpotent.isUnit_quotient_mk_iff {R : Type*} [CommRing R] {I : Ideal R}
    (hI : IsNilpotent I) {x : R} : IsUnit (Ideal.Quotient.mk I x) ↔ IsUnit x := by
  refine ⟨?_, fun h => h.map <| Ideal.Quotient.mk I⟩
  revert x
  apply Ideal.IsNilpotent.induction_on (S := R) I hI <;> clear hI I
  swap
  · introv e h₁ h₂ h₃
    apply h₁
    apply h₂
    exact
      h₃.map
        ((DoubleQuot.quotQuotEquivQuotSup I J).trans
              (Ideal.quotEquivOfEq (sup_eq_right.mpr e))).symm.toRingHom
  · introv e H
    obtain ⟨y, hy⟩ := Ideal.Quotient.mk_surjective (↑H.unit⁻¹ : S ⧸ I)
    have : Ideal.Quotient.mk I (x * y) = Ideal.Quotient.mk I 1 := by
      rw [map_one, map_mul, hy, IsUnit.mul_val_inv]
    rw [Ideal.Quotient.eq] at this
    have : (x * y - 1) ^ 2 = 0 := by
      rw [← Ideal.mem_bot, ← e]
      exact Ideal.pow_mem_pow this _
    have : x * (y * (2 - x * y)) = 1 := by
      rw [eq_comm, ← sub_eq_zero, ← this]
      ring
    exact isUnit_of_mul_eq_one _ _ this
