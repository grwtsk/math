-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.RingKrullDimEqZeroOfField.Variantfbec40847035cd060f8742d280ed813f198ce7079edf6fd427cf8b0ff876b4dd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fbec40847035cd060f8742d280ed813f198ce7079edf6fd427cf8b0ff876b4dd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.RingKrullDimEqZeroOfField.Variantfbec40847035cd060f8742d280ed813f198ce7079edf6fd427cf8b0ff876b4dd","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"fbec40847035cd060f8742d280ed813f198ce7079edf6fd427cf8b0ff876b4dd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/KrullDimension/Field.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jujian Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Fangming Li, Jujian Zhang
-/
import Mathlib.RingTheory.KrullDimension.Basic

/-!
# The Krull dimension of a field

This file proves that the Krull dimension of a field is zero.
-/


namespace GRWTSK.Algebra.RingKrullDimEqZeroOfField.Variantfbec40847035cd060f8742d280ed813f198ce7079edf6fd427cf8b0ff876b4dd

open Order

@[simp]
theorem ringKrullDim_eq_zero_of_field (F : Type*) [Field F] : ringKrullDim F = 0 :=
  krullDim_eq_zero_of_unique

theorem ringKrullDim_eq_zero_of_isField {F : Type*} [CommRing F] (hF : IsField F) :
    ringKrullDim F = 0 :=
  @krullDim_eq_zero_of_unique _ _ <| @PrimeSpectrum.instUnique _ hF.toField
