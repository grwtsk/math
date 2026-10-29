-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attribute.Variantf17fbbb2dfb37688a73b8dd8bfdf67c1923e5784cc3e7a4e2f061b3fd5e1fe6c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f17fbbb2dfb37688a73b8dd8bfdf67c1923e5784cc3e7a4e2f061b3fd5e1fe6c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Attribute.Variantf17fbbb2dfb37688a73b8dd8bfdf67c1923e5784cc3e7a4e2f061b3fd5e1fe6c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f17fbbb2dfb37688a73b8dd8bfdf67c1923e5784cc3e7a4e2f061b3fd5e1fe6c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/BuiltinRules/Intros.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg, Kyle Miller
-/
module

public import Aesop.Frontend.Attribute


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attribute.Variantf17fbbb2dfb37688a73b8dd8bfdf67c1923e5784cc3e7a4e2f061b3fd5e1fe6c

public section

open Lean
open Lean.Meta

namespace Aesop.BuiltinRules

@[aesop norm -100 (rule_sets := [builtin])]
meta def intros : RuleTac := RuleTac.ofSingleRuleTac λ input => do
    let md? := input.options.introsTransparency?
    let ((goal, newFVarIds), steps) ←
      match md? with
      | none => introsS input.goal |>.run
      | some md => introsUnfoldingS input.goal md |>.run
    if newFVarIds.size == 0 then
      throwError "nothing to introduce"
    let addedFVars := newFVarIds.foldl (init := ∅) λ set fvarId =>
      set.insert fvarId
    let diff := {
      oldGoal := input.goal
      newGoal := goal
      addedFVars
      removedFVars := ∅
      targetChanged := .true
    }
    return (#[{ diff }], steps, none)

end Aesop.BuiltinRules
