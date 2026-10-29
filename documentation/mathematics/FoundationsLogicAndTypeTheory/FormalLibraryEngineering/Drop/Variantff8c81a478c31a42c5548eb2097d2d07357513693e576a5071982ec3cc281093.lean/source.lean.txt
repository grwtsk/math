-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterMStepDrop.Variant752909e158671c4a3a39f80c9e48381c42c3f19a164028632b153d04c9c9a2dd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"752909e158671c4a3a39f80c9e48381c42c3f19a164028632b153d04c9c9a2dd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IterMStepDrop.Variant752909e158671c4a3a39f80c9e48381c42c3f19a164028632b153d04c9c9a2dd","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"752909e158671c4a3a39f80c9e48381c42c3f19a164028632b153d04c9c9a2dd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/Iterators/Lemmas/Combinators/Monadic/Drop.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.Iterators.Combinators.Monadic.Drop
public import Init.Data.Iterators.Lemmas.Consumers.Monadic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterMStepDrop.Variant752909e158671c4a3a39f80c9e48381c42c3f19a164028632b153d04c9c9a2dd

@[expose] public section

namespace Std

theorem IterM.step_drop {α m β} [Monad m] [Iterator α m β] {n : Nat}
    {it : IterM (α := α) m β} :
    (it.drop n).step = (do
      match (← it.step).inflate with
      | .yield it' out h =>
        match h' : n with
        | 0 => pure <| .deflate <| .yield (it'.drop 0) out (.yield h (h' ▸ rfl))
        | k + 1 => pure <| .deflate <| .skip (it'.drop k) (.drop h (h' ▸ rfl))
      | .skip it' h => pure <| .deflate <| .skip (it'.drop n) (.skip h)
      | .done h => pure <| .deflate <| .done (.done h)) := by
  simp only [drop, step, Iterator.step, IterM.internalState_mk, Nat.succ_eq_add_one]
  apply bind_congr
  intro step
  cases step.inflate using PlausibleIterStep.casesOn
  · cases n <;> rfl
  · rfl
  · rfl

end Std
