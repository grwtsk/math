-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Quotient.Variant551ad8e997b3fdecb606099d610a4d01675caa27aa51a314d764162d94dceb7a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"551ad8e997b3fdecb606099d610a4d01675caa27aa51a314d764162d94dceb7a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Quotient.Variant551ad8e997b3fdecb606099d610a4d01675caa27aa51a314d764162d94dceb7a","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"551ad8e997b3fdecb606099d610a4d01675caa27aa51a314d764162d94dceb7a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/CharP/Quotient.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau, Eric Wieser
-/
import Mathlib.Algebra.CharP.Basic
import Mathlib.RingTheory.Ideal.Quotient


namespace GRWTSK.Algebra.Quotient.Variant551ad8e997b3fdecb606099d610a4d01675caa27aa51a314d764162d94dceb7a

#align_import algebra.char_p.quotient from "leanprover-community/mathlib"@"85e3c05a94b27c84dc6f234cf88326d5e0096ec3"

/-!
# Characteristic of quotients rings
-/


universe u v

namespace CharP

theorem quotient (R : Type u) [CommRing R] (p : ℕ) [hp1 : Fact p.Prime] (hp2 : ↑p ∈ nonunits R) :
    CharP (R ⧸ (Ideal.span ({(p : R)} : Set R) : Ideal R)) p :=
  have hp0 : (p : R ⧸ (Ideal.span {(p : R)} : Ideal R)) = 0 :=
    map_natCast (Ideal.Quotient.mk (Ideal.span {(p : R)} : Ideal R)) p ▸
      Ideal.Quotient.eq_zero_iff_mem.2 (Ideal.subset_span <| Set.mem_singleton _)
  ringChar.of_eq <|
    Or.resolve_left ((Nat.dvd_prime hp1.1).1 <| ringChar.dvd hp0) fun h1 =>
      hp2 <|
        isUnit_iff_dvd_one.2 <|
          Ideal.mem_span_singleton.1 <|
            Ideal.Quotient.eq_zero_iff_mem.1 <|
              @Subsingleton.elim _ (@CharOne.subsingleton _ _ (ringChar.of_eq h1)) _ _
#align char_p.quotient CharP.quotient

/-- If an ideal does not contain any coercions of natural numbers other than zero, then its quotient
inherits the characteristic of the underlying ring. -/
theorem quotient' {R : Type*} [CommRing R] (p : ℕ) [CharP R p] (I : Ideal R)
    (h : ∀ x : ℕ, (x : R) ∈ I → (x : R) = 0) : CharP (R ⧸ I) p :=
  ⟨fun x => by
    rw [← cast_eq_zero_iff R p x, ← map_natCast (Ideal.Quotient.mk I)]
    refine' Ideal.Quotient.eq.trans (_ : ↑x - 0 ∈ I ↔ _)
    rw [sub_zero]
    exact ⟨h x, fun h' => h'.symm ▸ I.zero_mem⟩⟩
#align char_p.quotient' CharP.quotient'

end CharP

theorem Ideal.Quotient.index_eq_zero {R : Type*} [CommRing R] (I : Ideal R) :
    (↑I.toAddSubgroup.index : R ⧸ I) = 0 := by
  rw [AddSubgroup.index, Nat.card_eq]
  split_ifs with hq; swap; simp
  by_contra h
  -- TODO: can we avoid rewriting the `I.to_add_subgroup` here?
  letI : Fintype (R ⧸ I) := @Fintype.ofFinite _ hq
  have h : (Fintype.card (R ⧸ I) : R ⧸ I) ≠ 0 := h
  simp at h
#align ideal.quotient.index_eq_zero Ideal.Quotient.index_eq_zero
