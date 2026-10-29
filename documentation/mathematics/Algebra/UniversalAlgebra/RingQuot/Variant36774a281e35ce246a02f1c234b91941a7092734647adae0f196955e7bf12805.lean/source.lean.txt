-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.RelStar.Variant409c1e546b4f3bc78f17e22acba16f12e70d7681d09e14ab8e12e54f50f315a7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"409c1e546b4f3bc78f17e22acba16f12e70d7681d09e14ab8e12e54f50f315a7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.RelStar.Variant409c1e546b4f3bc78f17e22acba16f12e70d7681d09e14ab8e12e54f50f315a7","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"409c1e546b4f3bc78f17e22acba16f12e70d7681d09e14ab8e12e54f50f315a7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Star/RingQuot.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.RingQuot
import Mathlib.Algebra.Star.Basic

/-!
# The *-ring structure on suitable quotients of a *-ring.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.RelStar.Variant409c1e546b4f3bc78f17e22acba16f12e70d7681d09e14ab8e12e54f50f315a7

namespace RingQuot

universe u

variable {R : Type u} [Semiring R] (r : R → R → Prop)

section StarRing

variable [StarRing R]

theorem Rel.star (hr : ∀ a b, r a b → r (star a) (star b))
    ⦃a b : R⦄ (h : Rel r a b) : Rel r (star a) (star b) := by
  induction h with
  | of h          => exact Rel.of (hr _ _ h)
  | add_left _ h  => rw [star_add, star_add]
                     exact Rel.add_left h
  | mul_left _ h  => rw [star_mul, star_mul]
                     exact Rel.mul_right h
  | mul_right _ h => rw [star_mul, star_mul]
                     exact Rel.mul_left h

private irreducible_def star' (hr : ∀ a b, r a b → r (star a) (star b)) : RingQuot r → RingQuot r
  | ⟨a⟩ => ⟨Quot.map (star : R → R) (Rel.star r hr) a⟩

theorem star'_quot (hr : ∀ a b, r a b → r (star a) (star b)) {a} :
    (star' r hr ⟨Quot.mk _ a⟩ : RingQuot r) = ⟨Quot.mk _ (star a)⟩ := star'_def _ _ _

/-- Transfer a star_ring instance through a quotient, if the quotient is invariant to `star` -/
def starRing {R : Type u} [Semiring R] [StarRing R] (r : R → R → Prop)
    (hr : ∀ a b, r a b → r (star a) (star b)) : StarRing (RingQuot r) where
  star := star' r hr
  star_involutive := by
    rintro ⟨⟨⟩⟩
    simp [star'_quot]
  star_mul := by
    rintro ⟨⟨⟩⟩ ⟨⟨⟩⟩
    simp [star'_quot, mul_quot, star_mul]
  star_add := by
    rintro ⟨⟨⟩⟩ ⟨⟨⟩⟩
    simp [star'_quot, add_quot, star_add]

end StarRing

end RingQuot
