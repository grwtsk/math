# Instantiate MVars Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4cb98b1b98a892b1731cb4cbd2b925ae86aee5c0` · SHA-256 `414ec0eab586b66f311c5d59f01a1fde7d2c5c9ab0ab3d9df18aa511bcefe650`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Batteries.Lean.Meta.Basic

@[expose] public section

open Lean Lean.Meta

namespace Lean.MVarId

/--
Instantiate metavariables in the type of the given metavariable, update the
metavariable's declaration and return the new type.
-/
def instantiateMVarsInType [Monad m] [MonadMCtx m] [MonadError m]
    (mvarId : MVarId) : m Expr := do
  let mdecl ← (← getMCtx).getExprMVarDecl mvarId
  let type := mdecl.type
  if type.hasMVar then
    let type ← instantiateMVars type
    let mdecl := { mdecl with type }
    modifyMCtx (·.declareExprMVar mvarId mdecl)
    return type
  else
    return type

/--
Instantiate metavariables in the `LocalDecl` of the given fvar, update the
`LocalDecl` and return the new `LocalDecl.`
-/
def instantiateMVarsInLocalDecl [Monad m] [MonadMCtx m] [MonadError m]
    (mvarId : MVarId) (fvarId : FVarId) : m LocalDecl := do
  let mdecl ← (← getMCtx).getExprMVarDecl mvarId
  let (some ldecl) := mdecl.lctx.find? fvarId | throwError
    "unknown fvar '{fvarId.name}' (in local context of mvar '?{mvarId.name}')"
  let ldecl ← Lean.instantiateLocalDeclMVars ldecl
  let mdecl :=
    { mdecl with lctx := mdecl.lctx.modifyLocalDecl fvarId fun _ => ldecl }
  modifyMCtx (·.declareExprMVar mvarId mdecl)
  return ldecl

/--
Instantiate metavariables in the local context of the given metavariable, update
the metavariable's declaration and return the new local context.
-/
def instantiateMVarsInLocalContext [Monad m] [MonadMCtx m] [MonadError m]
    (mvarId : MVarId) : m LocalContext := do
  let mdecl ← (← getMCtx).getExprMVarDecl mvarId
  let lctx ← instantiateLCtxMVars mdecl.lctx
  modifyMCtx (·.declareExprMVar mvarId { mdecl with lctx })
  return lctx

/--
Instantiate metavariables in the local context and type of the given
metavariable.
-/
def instantiateMVars [Monad m] [MonadMCtx m] [MonadError m] (mvarId : MVarId) :
    m Unit := do
  discard $ (← getMCtx).getExprMVarDecl mvarId
    -- The line above throws an error if the `mvarId` is not declared. The line
    -- below panics.
  instantiateMVarDeclMVars mvarId

end Lean.MVarId
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=27583cdee03602e43b2825cf6d8893905ec0c889551641a8725c4c3a47acdfac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InstantiateMVars/Variant414ec0eab586b66f311c5d59f01a1fde7d2c5c9ab0ab3d9df18aa511bcefe650.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
