# Term Unsafe — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fcfa9c2aebaf4b4372580a2a5d787f5f97a7f492` · SHA-256 `8fcf1925669a2f07d951e7d5b7d579bf021fd921a170a476c9fc65970275e361`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
import Lean.Elab.ElabRules
import Lean.Meta.Closure
import Lean.Compiler.ImplementedByAttr

/-!
Defines term syntax to call unsafe functions.

```
def cool :=
  unsafe (unsafeCast () : Nat)

#eval cool
```
-/

namespace Std.TermUnsafe
open Lean Meta Elab Term

/-- Construct an auxiliary name based on the current declaration name and the given `hint` base. -/
def mkAuxName (hint : Name) : TermElabM Name :=
  withFreshMacroScope do
    let name := (← getDeclName?).getD Name.anonymous ++ hint
    pure $ addMacroScope (← getMainModule) name (← getCurrMacroScope)

/--
`unsafe t : α` is an expression constructor which allows using unsafe declarations inside the
body of `t : α`, by creating an auxiliary definition containing `t` and using `implementedBy` to
wrap it in a safe interface. It is required that `α` is nonempty for this to be sound,
but even beyond that, an `unsafe` block should be carefully inspected for memory safety because
the compiler is unable to guarantee the safety of the operation.

For example, the `evalExpr` function is unsafe, because the compiler cannot guarantee that when
you call ```evalExpr Foo ``Foo e``` that the type `Foo` corresponds to the name `Foo`, but in a
particular use case, we can ensure this, so `unsafe (evalExpr Foo ``Foo e)` is a correct usage.
-/
elab "unsafe " t:term : term <= expectedType => do
  let mut t ← elabTerm t expectedType
  t ← instantiateMVars t
  if t.hasExprMVar then
    synthesizeSyntheticMVarsNoPostponing
    t ← instantiateMVars t
  if ← logUnassignedUsingErrorInfos (← getMVars t) then throwAbortTerm
  t ← mkAuxDefinitionFor (← mkAuxName `unsafe) t
  let Expr.const unsafeFn unsafeLvls .. := t.getAppFn | unreachable!
  let ConstantInfo.defnInfo unsafeDefn ← getConstInfo unsafeFn | unreachable!
  let implName ← mkAuxName `impl
  addDecl <| Declaration.defnDecl {
    name := implName
    type := unsafeDefn.type
    levelParams := unsafeDefn.levelParams
    value := ← mkOfNonempty unsafeDefn.type
    hints := ReducibilityHints.opaque
    safety := DefinitionSafety.safe
  }
  setImplementedBy implName unsafeFn
  pure $ mkAppN (mkConst implName unsafeLvls) t.getAppArgs
````

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5f6830aac5d26c4278052f595e689adaa5281edb31e9589f81833a92458f35ba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermUnsafe/Variant8fcf1925669a2f07d951e7d5b7d579bf021fd921a170a476c9fc65970275e361.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
