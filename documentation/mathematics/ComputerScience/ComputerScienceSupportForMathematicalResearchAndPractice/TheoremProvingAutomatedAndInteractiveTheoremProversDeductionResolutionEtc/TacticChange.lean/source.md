# Tactic Change — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `235826d756da203c9962b8fc846d449664b6dc00` · SHA-256 `6f9c41e2ed17728420280a457c3ad5e3527812688f22d186cf47f6c808818223`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2023 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa
-/

import Mathlib.Init
import Lean.Elab.Tactic.ElabTerm
import Lean.Meta.Tactic.TryThis
/-!

# Tactic `change? term`

This tactic is used to suggest a replacement of the goal by a definitionally equal term.
`term` is intended to contain holes which get unified with the main goal and filled in explicitly
in the suggestion.

`term` can also be omitted, in which case `change?` simply suggests `change` with the main goal.
This is helpful after tactics like `dsimp`, which can then be deleted.
-/

/-- `change? term` unifies `term` with the current goal, then suggests explicit `change` syntax
that uses the resulting unified term.

If `term` is not present, `change?` suggests the current goal itself. This is useful after tactics
which transform the goal while maintaining definitional equality, such as `dsimp`; those preceding
tactic calls can then be deleted.
```lean
example : (fun x : Nat => x) 0 = 1 := by
  change? 0 = _  -- `Try this: change 0 = 1`
```
-/
syntax (name := change?) "change?" (ppSpace colGt term)? : tactic

open Lean Meta Elab.Tactic Meta.Tactic.TryThis in
elab_rules : tactic
| `(tactic|change?%$tk $[$sop:term]?) => withMainContext do
  let stx ← getRef
  let expr ← match sop with
    | none => getMainTarget
    | some sop => do
      let tgt ← getMainTarget
      let ex ← withRef sop <| elabTermEnsuringType sop (← inferType tgt)
      if !(← isDefEq ex tgt) then throwErrorAt sop "\
        The term{indentD ex}\n\
        is not defeq to the goal:{indentD tgt}"
      instantiateMVars ex
  let dstx ← delabToRefinableSyntax expr
  addSuggestion tk (← `(tactic| change $dstx)) (origSpan? := stx)
````

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2e21509b1691f89db96410249511802230de17f149901f8fc67cdd07370f554e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Change/Variant6f9c41e2ed17728420280a457c3ad5e3527812688f22d186cf47f6c808818223.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
