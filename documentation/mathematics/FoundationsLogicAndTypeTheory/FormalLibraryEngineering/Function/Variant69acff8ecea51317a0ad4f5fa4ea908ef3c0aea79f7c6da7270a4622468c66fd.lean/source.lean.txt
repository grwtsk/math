-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MapInjective.Variant1d257ac17db23ea7d125ffb56c43a409b6d48e5aa1b0b2cfb0fbaa8ef71d27d3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1d257ac17db23ea7d125ffb56c43a409b6d48e5aa1b0b2cfb0fbaa8ef71d27d3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.MapInjective.Variant1d257ac17db23ea7d125ffb56c43a409b6d48e5aa1b0b2cfb0fbaa8ef71d27d3","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"1d257ac17db23ea7d125ffb56c43a409b6d48e5aa1b0b2cfb0fbaa8ef71d27d3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Option/Function.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

prelude
public import Init.Data.Function
import Init.NotationExtra


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MapInjective.Variant1d257ac17db23ea7d125ffb56c43a409b6d48e5aa1b0b2cfb0fbaa8ef71d27d3

public section

namespace Option

theorem map_injective {f : α → β} (hf : Function.Injective f) :
    Function.Injective (Option.map f) := by
  intros a b hab
  cases a <;> cases b
  · simp
  · simp at hab
  · simp at hab
  · simp only [map_some, some.injEq] at hab
    simpa using hf hab

end Option
