# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SScript.Variantf4eb49215a0906021f649581312abeb4e61b6a400ef363114ddd896d17091eae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2b0aa0fcddb90fdedf3f65edbd14360833e8d3df` · SHA-256 `f4eb49215a0906021f649581312abeb4e61b6a400ef363114ddd896d17091eae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Aesop.Script.Step
import Batteries.Tactic.PermuteGoals

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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=73648bbdee59c96b32f80a50c39a80d675e792d82e13de048dfd492655a7f96c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SScript/Variantf4eb49215a0906021f649581312abeb4e61b6a400ef363114ddd896d17091eae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
