-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.CharZero.Variante5a0d0059255217430ebdb2635883d90c182cc9e70ac8159eee603ba0f283e26","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e5a0d0059255217430ebdb2635883d90c182cc9e70ac8159eee603ba0f283e26","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.CharZero.Variante5a0d0059255217430ebdb2635883d90c182cc9e70ac8159eee603ba0f283e26","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"e5a0d0059255217430ebdb2635883d90c182cc9e70ac8159eee603ba0f283e26","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Rat/Cast/OfScientific.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Mathlib.Data.Rat.Cast.CharZero
public import Mathlib.Data.Rat.Cast.Lemmas

/-!
# Scientific notation for characteristic-zero fields

The `OfScientific` instance for any characteristic zero field
is well-behaved with respect to the field operations.

It's probably possible, by adjusting the `OfScientific` instances,
to make this more general, but it's not needed at present.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.CharZero.Variante5a0d0059255217430ebdb2635883d90c182cc9e70ac8159eee603ba0f283e26

public section

set_option backward.isDefEq.respectTransparency false in
open Lean.Grind in
instance {K : Type*} [_root_.Field K] [CharZero K] : LawfulOfScientific K where
  ofScientific_def {m s e} := by
    rw [← NNRat.cast_ofScientific, NNRatCast.toOfScientific_def]
    simp only [LawfulOfScientific.ofScientific_def]
    split
    · norm_cast
      simp
    · norm_cast
