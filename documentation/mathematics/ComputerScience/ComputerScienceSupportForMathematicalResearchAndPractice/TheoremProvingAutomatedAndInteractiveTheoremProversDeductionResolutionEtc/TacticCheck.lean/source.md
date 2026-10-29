# Tactic Check — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2014e89708619d4d3358118351add0e99f452c5` · SHA-256 `39953c50c61a7a102def7d1a5b8d004ca5e5f282c24c5b21c1276efac587a976`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Kyle Miller. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
import Mathlib.Init
import Lean.Elab.Tactic.Basic
import Lean.PrettyPrinter
import Lean.Elab.SyntheticMVars

/-!
# `#check` tactic

This module defines a tactic version of the `#check` command.
While `#check t` is similar to `have := t`, it is a little more convenient
since it elaborates `t` in a more tolerant way and so it can be possible to get a result.
For example, `#check` allows metavariables.
-/

namespace Mathlib.Tactic

open Lean Meta Elab Tactic

/--
Tactic version of `Lean.Elab.Command.elabCheck`.
Elaborates `term` without modifying tactic/elab/meta state.
Info messages are placed at `tk`.
-/
def elabCheckTactic (tk : Syntax) (ignoreStuckTC : Bool) (term : Term) : TacticM Unit :=
  withoutModifyingStateWithInfoAndMessages <| withMainContext do
    if let `($_:ident) := term then
      -- show signature for `#check ident`
      try
        for c in (← realizeGlobalConstWithInfos term) do
          addCompletionInfo <| .id term c (danglingDot := false) {} none
          logInfoAt tk <| MessageData.signature c
          return
      catch _ => pure ()  -- identifier might not be a constant but constant + projection
    let e ← Term.elabTerm term none
    Term.synthesizeSyntheticMVarsNoPostponing (ignoreStuckTC := ignoreStuckTC)
    let e ← Term.levelMVarToParam (← instantiateMVars e)
    let type ← inferType e
    if e.isSyntheticSorry then
      return
    logInfoAt tk m!"{e} : {type}"

/--
The `#check t` tactic elaborates the term `t` and then pretty prints it with its type as `e : ty`.

If `t` is an identifier, then it pretty prints a type declaration form
for the global constant `t` instead.
Use `#check (t)` to pretty print it as an elaborated expression.

Like the `#check` command, the `#check` tactic allows stuck typeclass instance problems.
These become metavariables in the output.
-/
elab tk:"#check " colGt term:term : tactic => elabCheckTactic tk true term

end Mathlib.Tactic
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1facac81abb104d8e7c52d537a84bb831d1cab48e6b52c36c9b8f037a360ae85 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant39953c50c61a7a102def7d1a5b8d004ca5e5f282c24c5b21c1276efac587a976.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
