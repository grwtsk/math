# Refl Cmp Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4772e5ea197649274f11f7f4067a5b637439325d` · SHA-256 `16c184dc6619b2851964745f357953a2a75409990fb73fd002644b57052611a2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Types
import Lean.Meta.Tactic.Grind.SynthInstance
import Lean.Meta.Tactic.Grind.Util
public section
namespace Lean.Meta.Grind
/-!
Support for type class `ReflCmp`.
-/
/-
Note: we will have similar support for `Associative` and `Commutative`. In the future, we should have
a mechanism for letting users to install their own handlers.
-/

/--
If `op` implements `ReflCmp`, then returns the proof term for
`∀ a b, a = b → op a b = .eq`
-/
def getReflCmpThm? (op : Expr) : GrindM (Option Expr) := do
  if let some thm? := (← get).reflCmpMap.find? { expr := op } then
    return thm?
  let thm? ← go?
  modify fun s => { s with reflCmpMap := s.reflCmpMap.insert { expr := op } thm? }
  return thm?
where
  go? : MetaM (Option Expr) := do
    unless (← getEnv).contains ``Std.ReflCmp do return none
    let opType ← whnf (← inferType op)
    let .forallE _ α b _ := opType | return none
    if b.hasLooseBVars then return none
    let .forallE _ α' b _ ← whnf b | return none
    unless b.isConstOf ``Ordering do return none
    unless (← isDefEq α α') do return none
    let u ← getLevel α
    let some u ← decLevel? u | return none
    let reflCmp := mkApp2 (mkConst ``Std.ReflCmp [u]) α op
    let some reflCmpInst ← synthInstanceMeta? reflCmp | return none
    return some <| mkApp3 (mkConst ``Std.ReflCmp.cmp_eq_of_eq [u]) α op reflCmpInst

def propagateReflCmp (e : Expr) : GoalM Unit := do
  let some op := getBinOp e | return ()
  let some thm ← getReflCmpThm? op | return ()
  let a := e.appFn!.appArg!
  let b := e.appArg!
  unless (← isEqv a b) do return ()
  let oeq ← getOrderingEqExpr
  pushEq e oeq <| mkApp3 thm a b (← mkEqProof a b)

end Lean.Meta.Grind
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=32b5c34aed6b1c2f113dac1461127adbb4a9f7ec30aed20acb85c695e6c54b24 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReflCmp/Variant16c184dc6619b2851964745f357953a2a75409990fb73fd002644b57052611a2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
