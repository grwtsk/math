# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoalWithMVars.Variantcfea836cd3919948dac6e203f9f917ef3c366f8fae0dcf460148655aadb1cec4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0d8864e8680eede0ddf75f70d0d8124fa80a0bcb` · SHA-256 `cfea836cd3919948dac6e203f9f917ef3c366f8fae0dcf460148655aadb1cec4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Lean.Meta.Basic
import Lean.Meta.CollectMVars

public section

open Lean Std Lean.Meta

namespace Aesop

structure GoalWithMVars where
  goal : MVarId
  mvars : Std.HashSet MVarId
  deriving Inhabited

instance : Repr GoalWithMVars where
  reprPrec
    | g, _ => s!"\{ goal := {repr g.goal}, mvars := {repr g.mvars.toArray} }"

instance : BEq GoalWithMVars :=
  ⟨λ g₁ g₂ => g₁.goal == g₂.goal⟩

namespace GoalWithMVars

def ofMVarId (goal : MVarId) : MetaM GoalWithMVars := do
  return { goal, mvars := ← goal.getMVarDependencies }

end Aesop.GoalWithMVars
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=649a5a54717bc991b89f48e7e27b2f195f4e0adb80dd2d33d9bf499bddfdf04b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GoalWithMVars/Variantcfea836cd3919948dac6e203f9f917ef3c366f8fae0dcf460148655aadb1cec4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
