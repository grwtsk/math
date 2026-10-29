# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SeqFocus.Variantb978f1ec3b614fda93ef10847cefe117698cfd1390d1c419b1c50c027c0c76a6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a425a8ad7cb9a8280c0e797090b2a7b347dd8bee` · SHA-256 `b978f1ec3b614fda93ef10847cefe117698cfd1390d1c419b1c50c027c0c76a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad
-/
module

public meta import Lean.Elab.Tactic.Basic

public meta section

open Lean Elab Meta Tactic

namespace Batteries.Tactic

/-- Assuming there are `n` goals, `map_tacs [t1; t2; ...; tn]` applies each `ti` to the respective
goal and leaves the resulting subgoals. It raises an error if the number of subgoals does not match.
-/
elab "map_tacs " "[" ts:sepBy(tactic, "; ") "]" : tactic => do
  let goals ← getUnsolvedGoals
  let tacs := ts.getElems
  let length := tacs.size
  if length < goals.length then
    throwError "not enough tactics"
  else if length > goals.length then
    throwError "too many tactics"
  let mut goalsNew := #[]
  for tac in tacs, goal in goals do
    if ← goal.isAssigned then continue
    setGoals [goal]
    try
      evalTactic tac
      goalsNew := goalsNew ++ (← getUnsolvedGoals)
    catch ex =>
      if (← read).recover then
        logException ex
        goalsNew := goalsNew.push goal
      else
        throw ex
  setGoals goalsNew.toList

/-- `t <;> [t1; t2; ...; tn]` focuses on the first goal and applies `t`, which should result in `n`
subgoals. It then applies each `ti` to the corresponding goal and collects the resulting
subgoals. It raises an error if the number of subgoals does not match.
-/
tactic_extension Lean.Parser.Tactic.«tactic_<;>_»

@[tactic_alt Lean.Parser.Tactic.«tactic_<;>_»]
macro:1 (name := seq_focus) t:tactic " <;> " "[" ts:sepBy(tactic, "; ") "]" : tactic =>
  `(tactic| focus ( $t:tactic; map_tacs [$ts;*]) )
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9d1e753ef45aa9ef31794d63cb5807822431fc12e3486f8bb7f6ca7b5a1df840 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqFocus/Variantb978f1ec3b614fda93ef10847cefe117698cfd1390d1c419b1c50c027c0c76a6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
