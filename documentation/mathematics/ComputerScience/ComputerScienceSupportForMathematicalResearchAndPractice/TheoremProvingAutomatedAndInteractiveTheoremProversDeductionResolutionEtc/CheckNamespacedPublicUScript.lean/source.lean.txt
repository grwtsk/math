-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UScriptCheckIfEnabled.Variant411252b0d77ea0088b0c49ea73720ce2abe70d3987ca46341577ff610c66e90b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"411252b0d77ea0088b0c49ea73720ce2abe70d3987ca46341577ff610c66e90b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.UScriptCheckIfEnabled.Variant411252b0d77ea0088b0c49ea73720ce2abe70d3987ca46341577ff610c66e90b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"411252b0d77ea0088b0c49ea73720ce2abe70d3987ca46341577ff610c66e90b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Script/Check.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Script.UScript
import Aesop.Check


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UScriptCheckIfEnabled.Variant411252b0d77ea0088b0c49ea73720ce2abe70d3987ca46341577ff610c66e90b

public section

open Lean Lean.Elab.Tactic
open Lean.Parser.Tactic (tacticSeq)

namespace Aesop.Script

def UScript.checkIfEnabled (uscript : UScript) : MetaM Unit := do
  unless ← Check.script.steps.isEnabled do
    return
  try
    uscript.validate
  catch e =>
    throwError "{Check.script.steps.name}: {e.toMessageData}"

end Script

def checkRenderedScriptIfEnabled (script : TSyntax ``tacticSeq)
    (preState : Meta.SavedState) (goal : MVarId) (expectCompleteProof : Bool) :
    MetaM Unit := do
  if ! (← Check.script.isEnabled) then
    return
  let go : TacticM Unit := do
    setGoals [goal]
    evalTactic script
    if expectCompleteProof && ! (← getUnsolvedGoals).isEmpty then
      throwError "script executed successfully but did not solve the main goal"
  try
    show MetaM Unit from withoutModifyingState do
      preState.restore
      go.run { elaborator := .anonymous, recover := false }
        |>.run' { goals := [goal] }
        |>.run'
  catch e => throwError
    "{Check.script.name}: error while executing generated script:{indentD e.toMessageData}"

end Aesop
