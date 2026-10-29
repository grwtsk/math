# Eval Public Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0d80e6be2dba2584762f9858c47cf2ecaff786e2` · SHA-256 `7df998d15c577b313747f803170562b671aece2cfb0795c87a082341da4cdb78`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Sebastian Ullrich. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich, Leonardo de Moura
-/
module

prelude
public import Lean.AddDecl
public import Lean.Meta.Check
public import Lean.Util.CollectLevelParams
import Lean.Compiler.Options

public section

namespace Lean.Meta

unsafe def evalExprCore (α) (value : Expr) (checkType : Expr → MetaM Unit)
    (safety := DefinitionSafety.safe) (checkMeta : Bool := true) : MetaM α :=
  withoutModifyingEnv do
    -- Avoid waiting for all prior compilation if only imported constants are referenced. This is a
    -- very common case for tactic configurations (`Lean.Elab.Tactic.Config`).
    if value.getUsedConstants.all (← getEnv).isImportedConst then
      modifyEnv fun env => env.importEnv?.getD env

    -- Private name to ensure we do not check for deps being imported publicly
    let name := mkPrivateName (← getEnv) (← mkFreshUserName `_tmp)
    let value ← instantiateMVars value
    let us := collectLevelParams {} value |>.params
    if value.hasMVar then
      throwError "failed to evaluate expression, it contains metavariables{indentExpr value}"
    let type ← inferType value
    checkType type
    let decl := Declaration.defnDecl {
       name, levelParams := us.toList, type
       value, hints := ReducibilityHints.opaque,
       safety
    }
    modifyEnv (markMeta · name)
    -- compilation will invariably wait on `checked`
    let _ ← traceBlock "compiler env" (← getEnv).checked
    -- now that we've already waited, async would just introduce (minor) overhead and trigger
    -- `Task.get` blocking debug code
    withOptions (Elab.async.set · false) do
    withOptions (Compiler.compiler.postponeCompile.set · false) do
    withOptions (Compiler.compiler.relaxedMetaCheck.set · true) do
      addAndCompile decl
      evalConst (checkMeta := checkMeta) α name

unsafe def evalExpr' (α) (typeName : Name) (value : Expr) (safety := DefinitionSafety.safe)
    (checkMeta : Bool := true) : MetaM α :=
  evalExprCore (safety := safety) (checkMeta := checkMeta) α value fun type => do
    let type ← whnfD type
    unless type.isConstOf typeName do
      throwError "unexpected type at evalExpr{indentExpr type}"

unsafe def evalExpr (α) (expectedType : Expr) (value : Expr) (safety := DefinitionSafety.safe)
    (checkMeta : Bool := true) : MetaM α :=
  evalExprCore (safety := safety) (checkMeta := checkMeta) α value fun type => do
    unless ← isDefEq type expectedType do
      throwError "unexpected type at `evalExpr` {← mkHasTypeButIsExpectedMsg type expectedType}"

end Lean.Meta
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cd6beb660fc5c1a4ab326ee6b1cfc08a4dcb896f7e9a46ed4cea35e1f6120091 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant7df998d15c577b313747f803170562b671aece2cfb0795c87a082341da4cdb78.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
