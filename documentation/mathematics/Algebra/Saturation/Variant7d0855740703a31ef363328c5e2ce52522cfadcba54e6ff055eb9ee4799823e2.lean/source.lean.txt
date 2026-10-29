-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.MemSaturationIffIsUnitAlgebraMap.Variantd5125d1f6fe1c888556897d9361253077b087bae2963b7d22ee4dcf070b9c345","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d5125d1f6fe1c888556897d9361253077b087bae2963b7d22ee4dcf070b9c345","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.MemSaturationIffIsUnitAlgebraMap.Variantd5125d1f6fe1c888556897d9361253077b087bae2963b7d22ee4dcf070b9c345","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"d5125d1f6fe1c888556897d9361253077b087bae2963b7d22ee4dcf070b9c345","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/Localization/Saturation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/
module

public import Mathlib.Algebra.Group.Submonoid.Saturation
public import Mathlib.RingTheory.Localization.Basic

/-! # Localization and submonoid saturation

In this file we show that `A` is a localization of `R` on the submonoid `S` if and only if it is so
on the saturation of `S`.

Crucially, the saturation of `S` is precisely the elements that become a unit in `A`.

-/


namespace GRWTSK.Algebra.MemSaturationIffIsUnitAlgebraMap.Variantd5125d1f6fe1c888556897d9361253077b087bae2963b7d22ee4dcf070b9c345

@[expose] public section

namespace IsLocalization
variable {R : Type*} [CommRing R] {S T : Submonoid R} {A : Type*} [CommRing A] [Algebra R A]

open Submonoid

variable (S A) in
theorem mem_saturation_iff_isUnit_algebraMap [IsLocalization S A] {x : R} :
    x ∈ S.saturation ↔ IsUnit (algebraMap R A x) := by
  rw [IsLocalization.algebraMap_isUnit_iff S, Submonoid.mem_saturation_iff_exists_dvd]

@[simp]
theorem saturation_iff : IsLocalization S.saturation.toSubmonoid A ↔ IsLocalization S A :=
  .symm <| iff_of_le_of_exists_dvd _ _ le_toSubmonoid_saturation <| by
    simp [mem_saturation_iff_exists_dvd]

variable (S T) in
theorem of_saturation_eq [IsLocalization S A] (ih : S.saturation = T.saturation) :
    IsLocalization T A := by
  rwa [← saturation_iff, ← ih, saturation_iff]

variable (S T) in
theorem isLocalization_iff_of_saturation_eq (ih : S.saturation = T.saturation) :
    IsLocalization S A ↔ IsLocalization T A := by
  rw [← saturation_iff, ih, saturation_iff]

variable (S T) in
theorem ext_saturation [IsLocalization S A] [IsLocalization T A] : S.saturation = T.saturation :=
  SaturatedSubmonoid.ext <| Submonoid.ext fun x ↦ by
    simp [mem_saturation_iff_isUnit_algebraMap S A, mem_saturation_iff_isUnit_algebraMap T A]

end IsLocalization
