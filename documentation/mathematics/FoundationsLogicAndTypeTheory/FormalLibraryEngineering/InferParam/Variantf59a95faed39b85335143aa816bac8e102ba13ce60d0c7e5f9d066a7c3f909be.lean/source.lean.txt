-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variantfc7b2ef8efd97259bae4ca5376924fa5f559485bb4a26fee854f8d75b99d13f8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fc7b2ef8efd97259bae4ca5376924fa5f559485bb4a26fee854f8d75b99d13f8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Tactic.Variantfc7b2ef8efd97259bae4ca5376924fa5f559485bb4a26fee854f8d75b99d13f8","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"fc7b2ef8efd97259bae4ca5376924fa5f559485bb4a26fee854f8d75b99d13f8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/InferParam.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov, Mario Carneiro
-/
import Mathlib.Init
import Lean.Elab.Tactic.Basic
import Lean.Meta.Tactic.Replace

/-!
# Infer an optional parameter

In this file we define a tactic `infer_param` that closes a goal with default value by using
this default value.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variantfc7b2ef8efd97259bae4ca5376924fa5f559485bb4a26fee854f8d75b99d13f8

namespace Mathlib.Tactic

open Lean Elab Tactic Meta

/-- Close a goal of the form `optParam α a` or `autoParam α stx` by using `a`. -/
elab (name := inferOptParam) "infer_param" : tactic => do
  let tgt ← getMainTarget
  if let some val := tgt.getOptParamDefault? then
    liftMetaTactic fun goal => do goal.assign val; pure []
  else if let some (.const tacticDecl ..) := tgt.getAutoParamTactic? then
    match evalSyntaxConstant (← getEnv) (← getOptions) tacticDecl with
    | .error err => throwError err
    | Except.ok tacticSyntax =>
      liftMetaTactic1 fun goal => do
        goal.replaceTargetDefEq (← goal.getType).consumeTypeAnnotations
      evalTactic tacticSyntax
  else throwError
    "`infer_param` only solves goals of the form `optParam _ _` or `autoParam _ _`, not {tgt}"

end Mathlib.Tactic
