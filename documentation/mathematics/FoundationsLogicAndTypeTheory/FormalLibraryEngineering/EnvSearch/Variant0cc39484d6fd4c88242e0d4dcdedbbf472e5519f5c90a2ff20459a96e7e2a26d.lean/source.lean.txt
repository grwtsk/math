-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Misc.Variant251d98d34defe187178cd0095be05e5df5f5c0c6192c62ecead242f72313373d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"251d98d34defe187178cd0095be05e5df5f5c0c6192c62ecead242f72313373d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Misc.Variant251d98d34defe187178cd0095be05e5df5f5c0c6192c62ecead242f72313373d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"251d98d34defe187178cd0095be05e5df5f5c0c6192c62ecead242f72313373d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Lean/Util/EnvSearch.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Shing Tak Lam. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Shing Tak Lam, Daniel Selsam, Mario Carneiro
-/
module

public import Batteries.Tactic.Lint.Misc


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Misc.Variant251d98d34defe187178cd0095be05e5df5f5c0c6192c62ecead242f72313373d

namespace Lean

/--
Find constants in current environment that match find options and predicate.
-/
public meta def getMatchingConstants {m} [Monad m] [MonadEnv m]
    (p : ConstantInfo → m Bool)
    (includeImports := true)
    : m (Array ConstantInfo) := do
  let matches_ ←
    if includeImports then
      (← getEnv).constants.map₁.foldM (init := #[]) check
    else
      pure #[]
  (← getEnv).constants.map₂.foldlM (init := matches_) check
where
  /-- Check constant should be returned -/
  @[nolint unusedArguments]
  check matches_ (_name : Name) cinfo := do
    if ← p cinfo then
      pure $ matches_.push cinfo
    else
      pure matches_
