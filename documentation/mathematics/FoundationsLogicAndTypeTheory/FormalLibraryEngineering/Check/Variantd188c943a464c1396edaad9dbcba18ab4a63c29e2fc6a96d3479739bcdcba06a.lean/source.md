# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Check.Variantd188c943a464c1396edaad9dbcba18ab4a63c29e2fc6a96d3479739bcdcba06a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `911e8359858fadf2cb03bc3a25e3f48e4826fd78` · SHA-256 `d188c943a464c1396edaad9dbcba18ab4a63c29e2fc6a96d3479739bcdcba06a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.Check
/- Override metavariable delaborator for natural metavariables to print `?m` instead
of including a unique number, for `#guard_msgs`. -/
open Lean PrettyPrinter Delaborator in @[delab mvar] def delabMVar : Delab := do
  let kind ← (← SubExpr.getExpr).mvarId!.getKind
  unless kind.isNatural do failure
  `(?m)

set_option linter.unusedTactic false
set_option linter.unusedVariables false

/-!
Basic check of `#check`
-/

/-- info: x + y : Nat -/
#guard_msgs in
example (x y : Nat) : True := by
  #check x + y
  trivial


/-!
`#check` is ok with metavariables
and `have := e` is not a substitute for `#check`
-/

/-- info: x + ?m✝ : Nat -/
#guard_msgs in
example (x : Nat) : True := by
  #check x + _
  trivial

/--
error: don't know how to synthesize placeholder
context:
x : Nat
⊢ Nat
---
error: unsolved goals
x : Nat
⊢ True
-/
#guard_msgs in
example (x : Nat) : True := by
  have := x + _


/-!
`#check` cannot be used to accidentally assign metavariables, since it saves the state.
This is in contrasted against `have`.
-/

/--
info: rfl : x = x
---
error: unsolved goals
x : Nat
y : Nat := ?a
⊢ True

case a
x : Nat
⊢ Nat
---
info: x : Nat
y : Nat := ?a
⊢ True

case a
x : Nat
⊢ Nat
-/
#guard_msgs in
example (x : Nat) : True := by
  let y : Nat := ?a
  #check (by refine rfl : ?a = x)
  trace_state

/--
error: unsolved goals
x : Nat
y : Nat := x
this : x = x
⊢ True
---
info: x : Nat
y : Nat := x
this : x = x
⊢ True
-/
#guard_msgs in
example (x : Nat) : True := by
  let y : Nat := ?a
  have := (by refine rfl : ?a = x)
  trace_state
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e04437c1a5c3bb130e72bd9d57455b3edda96a3f2c26a6ad802f7ab1b4c50bbd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variantd188c943a464c1396edaad9dbcba18ab4a63c29e2fc6a96d3479739bcdcba06a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
