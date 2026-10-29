# Native Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `890d6e446ffff269d98078b436b569134f172ae0` · SHA-256 `e1d0c6b5be42f492810a12281fc0d8ff4c981e421397c3ec00e165a255ed09c1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/

module
prelude
public import Lean.Meta.Basic
import Lean.Util.CollectLevelParams
import Lean.Elab.DeclarationRange
import Lean.Compiler.Options

open Lean Meta

namespace Lean.Meta

/-!
This module contains infrastructure for proofs by native evaluation (`native decide`, `bv_decide`).
Such proofs involve a native computation using the Lean kernel, and then asserting the result
of that computation as an axiom towards the logic.
-/

public inductive NativeEqTrueResult where
  /-- The given expression `e` evaluates to true. `prf` is a proof of `e = true`. -/
  | success (prf : Expr)
  /-- The given expression `e` evaluates to false. -/
  | notTrue

/--
A call to `nativeEqTrue tacName e`, where `e` is a closed value of type `Bool`, will compile and run
that value, check that it evaluates to `true`, and if so, will add an axiom asserting `e = true` and
return that axiom.

It is the basis for `native_decide` and `bv_decide` tactics.
-/
public def nativeEqTrue (tacticName : Name) (e : Expr) (axiomDeclRange? : Option Syntax := none) : MetaM NativeEqTrueResult  := do
  let e ← instantiateMVars e
  if e.hasFVar then
    throwError m!"Tactic `{tacticName}` failed: Cannot native decide proposition with free variables:{indentExpr e}"
  if e.hasMVar then
    throwError m!"Tactic `{tacticName}` failed: Cannot native decide proposition with metavariables:{indentExpr e}"
  let levels := (collectLevelParams {} e).params.toList
  let isTrue ← withoutModifyingEnv do
    let auxDeclName ← mkAuxDeclName <| `_native ++ tacticName ++ `decl
    let decl := Declaration.defnDecl {
      name := auxDeclName
      levelParams := levels
      type := mkConst ``Bool
      value := e
      hints := .abbrev
      safety := .safe
    }
    modifyEnv (markMeta · auxDeclName)
    try
      -- disable async/separate codegen so we can catch its exceptions; we don't want to report
      -- `evalConst` failures below when the actual reason was a codegen failure
      withOptions (Elab.async.set · false) do
      withOptions (Compiler.compiler.postponeCompile.set · false) do
      withOptions (Compiler.compiler.relaxedMetaCheck.set · true) do
        addAndCompile decl
    catch ex =>
      throwError m!"Tactic `{tacticName}` failed. Error: {ex.toMessageData}"

    -- Now evaluate the constant, and check that it is true.
    try
      unsafe evalConst Bool auxDeclName
    catch ex =>
      throwError m!"\
        Tactic `{tacticName}` failed: Could not evaluate decidable instance. \
        Error: {ex.toMessageData}"

  unless isTrue do return .notTrue

  let auxAxiomName ← mkAuxDeclName <| `_native ++ tacticName ++ `ax
  let axDecl := Declaration.axiomDecl {
    name := auxAxiomName
    levelParams := levels
    type := mkApp3 (mkConst ``Eq [1]) (mkConst ``Bool) e (mkConst ``Bool.true)
    isUnsafe := false
  }
  addDecl axDecl
  if let some ref := axiomDeclRange? then
    Elab.addDeclarationRangesFromSyntax auxAxiomName ref

  let levelParams := levels.map mkLevelParam
  return .success <| mkConst auxAxiomName levelParams
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2fd235718ec1ffbd2c547533edfb6464486dc144682573f72709f679647aa4ad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Native/Variante1d0c6b5be42f492810a12281fc0d8ff4c981e421397c3ec00e165a255ed09c1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
