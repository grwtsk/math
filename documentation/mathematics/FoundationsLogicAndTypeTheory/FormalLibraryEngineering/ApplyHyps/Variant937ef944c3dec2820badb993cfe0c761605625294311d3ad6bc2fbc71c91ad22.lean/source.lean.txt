-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attribute.Variant2386ba354d3e2b2e2284aa208033554a1c398a588b87cd4c1f65d6f0518696e2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2386ba354d3e2b2e2284aa208033554a1c398a588b87cd4c1f65d6f0518696e2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Attribute.Variant2386ba354d3e2b2e2284aa208033554a1c398a588b87cd4c1f65d6f0518696e2","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2386ba354d3e2b2e2284aa208033554a1c398a588b87cd4c1f65d6f0518696e2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/BuiltinRules/ApplyHyps.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Frontend.Attribute


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Attribute.Variant2386ba354d3e2b2e2284aa208033554a1c398a588b87cd4c1f65d6f0518696e2

public section

namespace Aesop.BuiltinRules

open Lean
open Lean.Meta

meta def applyHyp (hyp : FVarId) (goal : MVarId) (md : TransparencyMode) :
    BaseM RuleApplication := do
  let (goals, #[step]) ← applyS goal (.fvar hyp) none md |>.run
    | throwError "aesop: internal error in applyHyps: multiple steps"
  let mkDiff newGoal := return {
    oldGoal := goal
    addedFVars := ∅
    removedFVars := ∅
    targetChanged := ! (← isGoalDiffDefeqTarget goal newGoal)
    newGoal
  }
  return {
    goals := ← goals.mapM fun newGoal => return { diff := ← mkDiff newGoal }
    postState := step.postState
    scriptSteps? := #[step]
    successProbability? := none
  }

@[aesop unsafe 75% tactic (rule_sets := [builtin])]
meta def applyHyps : RuleTac := λ input =>
  input.goal.withContext do
    let lctx ← getLCtx
    let md := input.options.applyHypsTransparency
    let mut rapps := Array.mkEmpty lctx.decls.size
    for localDecl in lctx do
      if localDecl.isImplementationDetail then continue
      let initialState ← saveState
      try
        let rapp ← applyHyp localDecl.fvarId input.goal md
        rapps := rapps.push rapp
      catch _ => continue
      finally restoreState initialState
    return ⟨rapps⟩

end Aesop.BuiltinRules
