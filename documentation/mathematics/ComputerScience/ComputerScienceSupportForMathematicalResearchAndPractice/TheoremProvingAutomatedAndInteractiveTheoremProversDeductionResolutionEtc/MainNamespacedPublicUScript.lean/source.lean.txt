-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UScriptOptimize.Variantc2db929766d316e142a87fb21dee362ac55c8470e346a8532bb7a6cc1ba9c926","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c2db929766d316e142a87fb21dee362ac55c8470e346a8532bb7a6cc1ba9c926","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.UScriptOptimize.Variantc2db929766d316e142a87fb21dee362ac55c8470e346a8532bb7a6cc1ba9c926","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c2db929766d316e142a87fb21dee362ac55c8470e346a8532bb7a6cc1ba9c926","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Script/Main.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Script.Check
public import Aesop.Stats.Basic
public import Aesop.Options.Internal
import Batteries.Lean.Meta.SavedState
import Aesop.Script.OptimizeSyntax
import Aesop.Script.StructureDynamic
import Aesop.Script.StructureStatic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UScriptOptimize.Variantc2db929766d316e142a87fb21dee362ac55c8470e346a8532bb7a6cc1ba9c926

public section

open Lean
open Lean.Parser.Tactic (tacticSeq)

namespace Aesop.Script

def UScript.optimize (uscript : UScript) (proofHasMVar : Bool)
    (preState : Meta.SavedState) (goal : MVarId) :
    MetaM (Option (TSyntax ``tacticSeq × ScriptGenerated)) := do
  let structureResult? ← do
    let opts ← getOptions
    if aesop.dev.dynamicStructuring.get opts &&
       ! (aesop.dev.optimizedDynamicStructuring.get opts && ! proofHasMVar) then
      structureDynamic
    else
      structureStatic
  let some (sscript, gen) := structureResult?
    | return none
  let tacticSeq ← `(tacticSeq| $(← sscript.render):tactic*)
  let tacticSeq ← optimizeSyntax tacticSeq
  return some (tacticSeq, gen)
where
  structureStatic : MetaM (Option (SScript × ScriptGenerated)) := do
    let tacticState ← preState.runMetaM' $ TacticState.mkInitial goal
    let (sscript, perfect) ← uscript.toSScriptStatic tacticState
    let gen := {
      method := .static
      hasMVar := proofHasMVar
      perfect
    }
    pure $ some (sscript, gen)

  structureDynamic : MetaM (Option (SScript × ScriptGenerated)) := do
    let some (script, perfect) ← uscript.toSScriptDynamic preState goal
      | return none
    let gen := {
      method := .dynamic
      hasMVar := proofHasMVar
      perfect
    }
    return some (script, gen)

end Script

open Script

variable [Monad m] [MonadLog m] [MonadRef m] [MonadError m] [AddMessageContext m]
  [MonadStats m] [MonadLiftT MetaM m] in
def checkAndTraceScript (uscript : UScript)
    (sscript? : Option (TSyntax ``tacticSeq × ScriptGenerated)) (preState : Meta.SavedState)
    (goal : MVarId) (options : Aesop.Options') (expectCompleteProof : Bool)
    (tacticName : String) :
    m Unit := do
  if let some (script, scriptGenerated) := sscript? then
    recordScriptGenerated scriptGenerated
    if options.traceScript then
      addTryThisTacticSeqSuggestion (← getRef) script
    checkRenderedScriptIfEnabled script preState goal
      (expectCompleteProof := expectCompleteProof)
  else
    if options.traceScript then
      let tacticSeq ← uscript.renderTacticSeq preState goal
      addTryThisTacticSeqSuggestion (← getRef) tacticSeq
    if ← Check.script.isEnabled then
      throwError "{Check.script.name}: structuring the script failed"
    else if options.traceScript then
      logWarning m!"{tacticName}: structuring the script failed. Reporting unstructured script."

end Aesop
