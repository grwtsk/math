-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variantf06132cd7573e7ef4426ed53fd3c6b3d2135916a065a110848c148dfdd5a8182","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f06132cd7573e7ef4426ed53fd3c6b3d2135916a065a110848c148dfdd5a8182","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.State.Variantf06132cd7573e7ef4426ed53fd3c6b3d2135916a065a110848c148dfdd5a8182","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f06132cd7573e7ef4426ed53fd3c6b3d2135916a065a110848c148dfdd5a8182","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Script/StructureStatic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Aesop.Script.SScript
public import Aesop.Script.UScript
import Aesop.Script.UScriptToSScript
import Aesop.Script.Util


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.State.Variantf06132cd7573e7ef4426ed53fd3c6b3d2135916a065a110848c148dfdd5a8182

public section

open Lean Lean.Meta

namespace Aesop.Script

namespace StaticStructureM

structure State where
  perfect : Bool := true

structure Context where
  steps : Std.HashMap MVarId (Nat × Step)

end StaticStructureM

abbrev StaticStructureM :=
  ReaderT StaticStructureM.Context $ StateRefT StaticStructureM.State CoreM

protected def StaticStructureM.run (script : UScript) (x : StaticStructureM α) :
    CoreM (α × Bool) := do
  let mut steps : Std.HashMap MVarId (Nat × Step) := Std.HashMap.emptyWithCapacity script.size
  for h : i in [:script.size] do
    let step := script[i]
    if h : step.postGoals.size = 1 then
      if step.postGoals[0].goal == step.preGoal then
        continue
    steps := steps.insert step.preGoal (i, step)
  let (a, s) ← ReaderT.run x { steps } |>.run {}
  return (a, s.perfect)

partial def structureStaticCore (tacticState : TacticState) (script : UScript) :
    CoreM (UScript × Bool) :=
  withConstAesopTraceNode .script (return m!"statically structuring the tactic script") do
  aesop_trace[script] "unstructured script:{indentD $ MessageData.joinSep (script.toList.map λ step => m!"{step}") "\n"}"
  let ((script, _), perfect) ← go tacticState |>.run script
  return (script.toArray, perfect)
where
  go (tacticState : TacticState) : StaticStructureM (List Step × TacticState) :=
    withIncRecDepth do
    if let some goal := tacticState.visibleGoals[0]? then
      let step ← nextStep tacticState goal
      aesop_trace[script] "rendering step:{indentD $ toMessageData step}"
      let tacticState ← tacticState.applyStep step
      let (tailScript, tacticState) ← go tacticState
      return (step :: tailScript, tacticState)
    else
      return ([], tacticState)

  nextStep (tacticState : TacticState) (mainGoal : GoalWithMVars) :
      StaticStructureM Step := do
    let steps := (← read).steps
    if mainGoal.mvars.isEmpty then
      let some (_, step) := steps[mainGoal.goal]?
        | throwError "aesop: internal error while structuring script: no script step for main goal {mainGoal.goal.name}"
      return step
    let firstStep? :=
      findFirstStep? tacticState.visibleGoals (steps[·.goal]?) (·.fst)
    let some (_, _, _, firstStep) := firstStep?
      | throwError "aesop: internal error while structuring script: no script step found for any of the goals {tacticState.visibleGoals.map (·.goal.name)}"
    if firstStep.preGoal != mainGoal.goal then
      modify ({ · with perfect := false })
    return firstStep

def UScript.toSScriptStatic (tacticState : TacticState) (uscript : UScript) :
    CoreM (SScript × Bool) := do
  let (script, perfect) ← structureStaticCore tacticState uscript
  return (← orderedUScriptToSScript script tacticState, perfect)

end Aesop.Script
