-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RunRuleTac.Variant2476339216f379c2cde0fde4b885e9e3b4e5ecbdb41bc07e7fc8e62c470a2e46","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2476339216f379c2cde0fde4b885e9e3b4e5ecbdb41bc07e7fc8e62c470a2e46","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RunRuleTac.Variant2476339216f379c2cde0fde4b885e9e3b4e5ecbdb41bc07e7fc8e62c470a2e46","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2476339216f379c2cde0fde4b885e9e3b4e5ecbdb41bc07e7fc8e62c470a2e46","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Search/Expansion/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.RuleTac.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RunRuleTac.Variant2476339216f379c2cde0fde4b885e9e3b4e5ecbdb41bc07e7fc8e62c470a2e46

public section

open Lean
open Lean.Meta

namespace Aesop

def runRuleTac (tac : RuleTac) (ruleName : RuleName)
    (preState : Meta.SavedState) (input : RuleTacInput) :
    BaseM (Except Exception RuleTacOutput) := do
  let result ←
    try
      Except.ok <$> runInMetaState preState do tac input
    catch e =>
      return .error e
  if ← Check.rules.isEnabled then
    if let .ok ruleOutput := result then
      ruleOutput.applications.forM λ rapp => do
        if let (some err) ← rapp.check input then
          throwError "{Check.rules.name}: while applying rule {ruleName}: {err}"
  return result

end Aesop
