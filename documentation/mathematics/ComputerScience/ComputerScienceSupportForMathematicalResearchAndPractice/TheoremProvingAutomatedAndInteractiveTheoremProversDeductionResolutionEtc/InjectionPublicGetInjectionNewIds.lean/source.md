# Injection Public Get Injection New Ids — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `137255c1735d3fe431f723c1ffc9f6996fc8afc3` · SHA-256 `831ce75d71eb6472e6a0e87aba1ea0cff8bdf740cb146996721e99a0e55b581a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Injection
public import Lean.Meta.Tactic.Assumption
public import Lean.Elab.Tactic.ElabTerm
public section
namespace Lean.Elab.Tactic

-- optional (" with " >> many1 ident')
private def getInjectionNewIds (stx : Syntax) : List Name :=
  if stx.isNone then
    []
  else
    stx[1].getArgs.toList.map getNameOfIdent'

private def checkUnusedIds (tacticName : Name) (mvarId : MVarId) (unusedIds : List Name) : MetaM Unit :=
  unless unusedIds.isEmpty do
    Meta.throwTacticEx tacticName mvarId m!"too many identifiers provided, unused: {unusedIds}"

-- TODO: move to a different place?
private def tryAssumption (mvarId : MVarId) : MetaM (List MVarId) := do
  if (← mvarId.assumptionCore) then
    return []
  else
    return [mvarId]

@[builtin_tactic «injection»] def evalInjection : Tactic := fun stx => do
  -- leading_parser nonReservedSymbol "injection " >> termParser >> withIds
  let fvarId ← elabAsFVar stx[1]
  let ids := getInjectionNewIds stx[2]
  liftMetaTactic fun mvarId => do
    match (← Meta.injection mvarId fvarId ids) with
    | .solved                      => checkUnusedIds `injection mvarId ids; return []
    | .subgoal mvarId' _ unusedIds => checkUnusedIds `injection mvarId unusedIds; tryAssumption mvarId'

@[builtin_tactic «injections»] def evalInjections : Tactic := fun stx => do
  let ids := stx[1].getArgs.toList.map getNameOfIdent'
  liftMetaTactic fun mvarId => do
    match (← Meta.injections mvarId ids) with
    | .solved                      => checkUnusedIds `injections mvarId ids; return []
    | .subgoal mvarId' unusedIds _ => checkUnusedIds `injections mvarId unusedIds; tryAssumption mvarId'

end Lean.Elab.Tactic
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d89033710cf8f9a6e1f112096b57a444274b4b86ea3098796938d9d43dad6998 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injection/Variant831ce75d71eb6472e6a0e87aba1ea0cff8bdf740cb146996721e99a0e55b581a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
