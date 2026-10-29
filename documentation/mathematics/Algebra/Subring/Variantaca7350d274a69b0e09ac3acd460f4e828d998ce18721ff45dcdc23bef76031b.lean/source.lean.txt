-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CharPCenterIff.Varianta33c54f8c99035fa89a7b61a670f32036fa687646bf0f9148c9d83ce5e618d09","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a33c54f8c99035fa89a7b61a670f32036fa687646bf0f9148c9d83ce5e618d09","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.CharPCenterIff.Varianta33c54f8c99035fa89a7b61a670f32036fa687646bf0f9148c9d83ce5e618d09","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"a33c54f8c99035fa89a7b61a670f32036fa687646bf0f9148c9d83ce5e618d09","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/CharP/Subring.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/
import Mathlib.Algebra.CharP.Algebra

/-!
# Characteristic of subrings
-/



namespace GRWTSK.Algebra.CharPCenterIff.Varianta33c54f8c99035fa89a7b61a670f32036fa687646bf0f9148c9d83ce5e618d09

universe u v

namespace CharP

instance subsemiring (R : Type u) [Semiring R] (p : ℕ) [CharP R p] (S : Subsemiring R) :
    CharP S p :=
  ⟨fun x =>
    Iff.symm <|
      (CharP.cast_eq_zero_iff R p x).symm.trans
        ⟨fun h => Subtype.eq <| show S.subtype x = 0 by rw [map_natCast, h], fun h =>
          map_natCast S.subtype x ▸ by rw [h, RingHom.map_zero]⟩⟩

instance subring (R : Type u) [Ring R] (p : ℕ) [CharP R p] (S : Subring R) : CharP S p :=
  ⟨fun x =>
    Iff.symm <|
      (CharP.cast_eq_zero_iff R p x).symm.trans
        ⟨fun h => Subtype.eq <| show S.subtype x = 0 by rw [map_natCast, h], fun h =>
          map_natCast S.subtype x ▸ by rw [h, RingHom.map_zero]⟩⟩

instance subring' (R : Type u) [CommRing R] (p : ℕ) [CharP R p] (S : Subring R) : CharP S p :=
  CharP.subring R p S

/-- The characteristic of a division ring is equal to the characteristic
  of its center -/
theorem charP_center_iff {R : Type u} [Ring R] {p : ℕ} :
    CharP (Subring.center R) p ↔ CharP R p :=
  (algebraMap (Subring.center R) R).charP_iff Subtype.val_injective p

end CharP

namespace ExpChar

theorem expChar_center_iff {R : Type u} [Ring R] {p : ℕ} :
    ExpChar (Subring.center R) p ↔ ExpChar R p :=
  (algebraMap (Subring.center R) R).expChar_iff Subtype.val_injective p

end ExpChar
