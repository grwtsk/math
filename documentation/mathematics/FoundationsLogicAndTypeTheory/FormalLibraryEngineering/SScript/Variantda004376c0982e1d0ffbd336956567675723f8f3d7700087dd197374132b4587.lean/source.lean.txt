-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SScript.Variantf4eb49215a0906021f649581312abeb4e61b6a400ef363114ddd896d17091eae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f4eb49215a0906021f649581312abeb4e61b6a400ef363114ddd896d17091eae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SScript.Variantf4eb49215a0906021f649581312abeb4e61b6a400ef363114ddd896d17091eae","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f4eb49215a0906021f649581312abeb4e61b6a400ef363114ddd896d17091eae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Script/SScript.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
module

public import Aesop.Script.Step
import Batteries.Tactic.PermuteGoals


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SScript.Variantf4eb49215a0906021f649581312abeb4e61b6a400ef363114ddd896d17091eae

public section

open Lean Lean.Meta

variable [Monad m] [MonadError m] [MonadQuotation m]

namespace Aesop.Script

inductive SScript
  | empty
  | onGoal (goalPos : Nat) (step : Step) (tail : SScript)
  | focusAndSolve (goalPos : Nat) (here tail : SScript)
  deriving Inhabited

namespace SScript

def takeNConsecutiveFocusAndSolve? (acc : Array SScript) :
    Nat → SScript → Option (Array SScript × SScript)
  | 0, tail => some (acc, tail)
  | _ + 1, empty => none
  | _ + 1, onGoal .. => none
  | n + 1, focusAndSolve 0 here tail =>
    takeNConsecutiveFocusAndSolve? (acc.push here) n tail
  | _ + 1, focusAndSolve (_ + 1) .. => none

partial def render (script : SScript) : m (Array Syntax.Tactic) := do
  go #[] script
where
  go (acc : Array Syntax.Tactic) :
      SScript → m (Array Syntax.Tactic)
    | empty => return acc
    | onGoal goalPos step tail => do
      if let some (tactic, tail) ← renderSTactic? goalPos step tail then
        let script := acc.push tactic
        go script tail
      else
        let script := acc.push $ mkOnGoal goalPos step.uTactic
        go script tail
    | focusAndSolve goalPos here tail => do
      let nestedScript ← go #[] here
      let t ←
        if goalPos == 0 then
          `(tactic| · $[$nestedScript:tactic]*)
        else
          let posLit := mkOneBasedNumLit goalPos
          `(tactic| on_goal $posLit:num => { $nestedScript:tactic* })
      go (acc.push t) tail

  renderSTactic? (goalPos : Nat) (step : Step) (tail : SScript) :
      m (Option (Syntax.Tactic × SScript)) := do
    let some sTactic := step.sTactic?
      | return none
    let some (nested, tail) :=
      takeNConsecutiveFocusAndSolve? #[] sTactic.numSubgoals tail
      | return none
    let nestedScripts ← nested.mapM (go #[])
    let tactic := mkOnGoal goalPos $ sTactic.run nestedScripts
    return (tactic, tail)

end Aesop.Script.SScript
