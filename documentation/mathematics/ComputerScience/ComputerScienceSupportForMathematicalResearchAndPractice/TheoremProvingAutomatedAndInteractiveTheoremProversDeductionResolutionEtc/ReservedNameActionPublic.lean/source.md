# Reserved Name Action Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `82353a93959500987c5408e56eb53115f423c75f` · SHA-256 `4d3ee7b0b7fc648c92f8b324d6a53728f7bab82e119b34a31c2f98cc05728506`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Control.Do
public import Lean.CoreM

public section

namespace Lean

/--
When trying to resolve a reserved name, an action can be executed to generate the actual definition/theorem.
The action returns `true` if it "handled" the given name.

Remark: usually when one install a reserved name predicate, an associated action is also installed.
-/
@[expose] def ReservedNameAction := Name → CoreM Bool

private builtin_initialize reservedNameActionsRef : IO.Ref (Array ReservedNameAction) ← IO.mkRef #[]

/--
Register a new function that is invoked when trying to resolve a reserved name.
-/
def registerReservedNameAction (act : ReservedNameAction) : IO Unit := do
  unless (← initializing) do
    throw (IO.userError "failed to register reserved name action, this kind of extension can only be registered during initialization")
  reservedNameActionsRef.modify (·.push act)

/--
Execute a registered reserved action for the given reserved name.
Note that the handler can throw an exception.
-/
def executeReservedNameAction (name : Name) : CoreM Unit := do
  discard <|
    withTraceNode `ReservedNameAction (fun _ => pure m!"executeReservedNameAction for {name}") do
      (← reservedNameActionsRef.get).anyM (· name)

/--
Similar to `resolveGlobalName`, but also executes reserved name actions.
-/
def realizeGlobalName (id : Name) : CoreM (List (Name × List String)) := do
  let cs ← resolveGlobalName id
  cs.filterM fun (c, _) => do
    if (← getEnv).contains c then
      return true
    else
      try
        executeReservedNameAction c
        -- note that even if an action "handled" a name, it may still be undefined, e.g. with an
        -- out-of-bounds equation index
        return (← getEnv).containsOnBranch c
      catch ex =>
        -- We record the error produced by the reserved name action generator
        logError m!"Failed to realize constant {id}:{indentD ex.toMessageData}"
        return false

/--
Similar to `resolveGlobalConstCore`, but also executes reserved name actions.
-/
def realizeGlobalConstCore (n : Name) : CoreM (List Name) := do
  let cs ← realizeGlobalName n
  filterFieldList n cs

/--
Similar to `realizeGlobalConstNoOverloadCore`, but also executes reserved name actions.
-/
def realizeGlobalConstNoOverloadCore (n : Name) : CoreM Name := do
  ensureNoOverload n (← realizeGlobalConstCore n)

/--
Similar to `resolveGlobalConst`, but also executes reserved name actions.

Consider using `realizeGlobalConstWithInfo` if you want the syntax to show the resulting name's info
on hover.
-/
def realizeGlobalConst (stx : Syntax) : CoreM (List Name) :=
  withRef stx do preprocessSyntaxAndResolve stx realizeGlobalConstCore

/--
Similar to `realizeGlobalConstNoOverload`, but also executes reserved name actions.

Consider using `realizeGlobalConstNoOverloadWithInfo` if you want the syntax to show the resulting
name's info on hover.
-/
def realizeGlobalConstNoOverload (id : Syntax) : CoreM Name := do
  ensureNonAmbiguous id (← realizeGlobalConst id)


builtin_initialize
  registerTraceClass `ReservedNameAction

end Lean
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6440ccf5af07816cd1ca71a34f85d88bcb567332534ad33f4e013e1431838058 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReservedNameAction/Variant4d3ee7b0b7fc648c92f8b324d6a53728f7bab82e119b34a31c2f98cc05728506.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
