-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.UncountableOfNotSmall.Variant1ee05f7ee78029e3077646674461db9f9df1c150a4115961d4199388550e0cb9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1ee05f7ee78029e3077646674461db9f9df1c150a4115961d4199388550e0cb9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.UncountableOfNotSmall.Variant1ee05f7ee78029e3077646674461db9f9df1c150a4115961d4199388550e0cb9","mathematical_subject":"Logic.Foundations","original_sha256":"1ee05f7ee78029e3077646674461db9f9df1c150a4115961d4199388550e0cb9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Basic/Countable/Small.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Mathlib.Basic.Countable.Defs
public import Mathlib.Logic.Small.Basic

/-!
# All countable types are small.

That is, any countable type is equivalent to a type in any universe.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.UncountableOfNotSmall.Variant1ee05f7ee78029e3077646674461db9f9df1c150a4115961d4199388550e0cb9

public section

universe w v

instance (priority := 100) Countable.toSmall (α : Type v) [Countable α] : Small.{w} α :=
  let ⟨_, hf⟩ := exists_injective_nat α
  small_of_injective hf

theorem Uncountable.of_not_small {α : Type v} (h : ¬ Small.{w} α) : Uncountable α := by
  rw [uncountable_iff_not_countable]
  exact mt (@Countable.toSmall α) h
