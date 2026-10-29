# Show Term Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d460f52869736bc1f5e05828b8b4efee664feb68` · SHA-256 `9237b26b6e0558e47291c7664b1e0c65cd18ed18170e8b1fd2ffec760ddfd373`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison, Mario Carneiro
-/
import Lean.Elab.ElabRules
import Std.Tactic.TryThis

namespace Std.Tactic
open Lean Elab Tactic TryThis

/--
`show_term tac` runs `tac`, then prints the generated term in the form
"exact X Y Z" or "refine X ?_ Z" if there are remaining subgoals.

(For some tactics, the printed term will not be human readable.)
-/
elab (name := showTermTac) tk:"show_term " t:tacticSeq : tactic => withMainContext do
  let g ← getMainGoal
  evalTactic t
  addExactSuggestion tk (← instantiateMVars (mkMVar g)).headBeta (origSpan? := ← getRef)

/-- Implementation of `show_term`. -/
local elab (name := showTermImpl) tk:"show_term_impl " t:term : term <= ty => do
  let e ← Term.elabTermEnsuringType t ty
  Term.synthesizeSyntheticMVarsNoPostponing
  addTermSuggestion tk (← instantiateMVars e).headBeta (origSpan? := ← getRef)
  pure e

/--
`show_term e` elaborates `e`, then prints the generated term.

(For some tactics, the printed term will not be human readable.)
-/
macro (name := showTerm) tk:"show_term " t:term : term =>
  `(no_implicit_lambda% (show_term_impl%$tk $t))

/--
The command `by?` will print a suggestion for replacing the proof block with a proof term
using `show_term`.
-/
macro (name := by?) tk:"by?" t:tacticSeq : term => `(show_term%$tk by%$tk $t)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2d11a2a6821ead4cecbd99439f5400ad24a9b96df702d7c326cc5ec2033d39a4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowTerm/Variant9237b26b6e0558e47291c7664b1e0c65cd18ed18170e8b1fd2ffec760ddfd373.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
