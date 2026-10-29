# Meta Public Expand Cmd Do — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `42a659a355409f00b6e449726415b9a49350350c` · SHA-256 `85916817b11ec0da5b033562be05f1e26c67165aa3ff6e79b6a724309c28f2f8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lean.ToExpr
import Lean.Elab.Eval
import Lake.DSL.Syntax

/-!
Syntax for elaboration time control flow.
-/

open Lean Meta Elab Command Term

namespace Lake.DSL

def expandCmdDo : TSyntax ``cmdDo → Array Command
| `(cmdDo|do $cmds*) => cmds
| `(cmdDo|$cmd:command) => #[cmd]
| _ => #[]

@[builtin_command_elab metaIf]
def elabMetaIf : CommandElab := fun stx => do
  let `(meta if $c then $t $[else $e?]?) := stx
    | throwErrorAt stx "ill-formed meta if command"
  let c ← withRef c <| runTermElabM fun _ =>
    unsafe evalTerm Bool (toTypeExpr Bool) c .unsafe
  if c then
    let cmd := mkNullNode (expandCmdDo t)
    withMacroExpansion (← getRef) cmd <| elabCommand cmd
  else if let some e := e? then
    let cmd := mkNullNode (expandCmdDo e)
    withMacroExpansion (← getRef) cmd <| elabCommand cmd

public def toExprIO [ToExpr α] (x : IO α) : IO Expr :=
  toExpr <$> x

@[builtin_term_elab runIO]
def elabRunIO : TermElab := fun stx expectedType? =>
  match stx with
  | `(run_io%$tk $t) => withRef t do
    let expectedType := mkApp (mkConst ``IO) <|
      expectedType?.getD <| ← mkFreshExprMVar <| mkSort <| .succ .zero
    let v ← elabTermEnsuringType (← `(do $t)) expectedType
    synthesizeSyntheticMVarsNoPostponing
    let v ← instantiateMVars v
    if (← logUnassignedUsingErrorInfos (← getMVars v)) then
      throwAbortTerm
    let v ← mkAppM ``toExprIO #[v]
    let io ← unsafe evalExpr (IO Expr) (mkApp (mkConst ``IO) (mkConst ``Expr)) v
    let (out, x) ← IO.FS.withIsolatedStreams io.toBaseIO
    unless out.isEmpty do
      logInfoAt tk out
    match x with
    | .ok x => return x
    | .error e => throwErrorAt tk e.toString
  | _ => Elab.throwUnsupportedSyntax
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c6856a69cd51c7f7603150b1f29811d08653d5db9bd085c16b1f6e36c35abc0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant85916817b11ec0da5b033562be05f1e26c67165aa3ff6e79b6a724309c28f2f8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
