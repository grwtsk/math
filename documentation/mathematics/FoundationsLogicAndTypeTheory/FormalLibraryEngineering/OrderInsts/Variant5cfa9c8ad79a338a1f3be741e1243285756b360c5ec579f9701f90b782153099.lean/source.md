# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OrderInsts.Variant5cfa9c8ad79a338a1f3be741e1243285756b360c5ec579f9701f90b782153099

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce49ec1775bb7d6f49fa08ff5fa3260152990c90` · SHA-256 `5cfa9c8ad79a338a1f3be741e1243285756b360c5ec579f9701f90b782153099`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Types
public section
namespace Lean.Meta.Grind
/-!
Helper function for synthesizing order related instances.
-/

def mkLawfulOrderLTInst? (u : Level) (type : Expr) (ltInst? leInst? : Option Expr) : GoalM (Option Expr) := do
  let some ltInst := ltInst? | return none
  let some leInst := leInst? | return none
  let lawfulOrderLTType := mkApp3 (mkConst ``Std.LawfulOrderLT [u]) type ltInst leInst
  let some inst ← synthInstance? lawfulOrderLTType
    | reportDbgIssue! "type has `LE` and `LT`, but the `LT` instance is not lawful, failed to synthesize{indentExpr lawfulOrderLTType}"
      return none
  return some inst

def mkIsPreorderInst? (u : Level) (type : Expr) (leInst? : Option Expr) : GoalM (Option Expr) := do
  let some leInst := leInst? | return none
  let isPreorderType := mkApp2 (mkConst ``Std.IsPreorder [u]) type leInst
  let some inst ← synthInstance? isPreorderType
    | reportDbgIssue! "type has `LE`, but is not a preorder, failed to synthesize{indentExpr isPreorderType}"
      return none
  return some inst

def mkIsPartialOrderInst? (u : Level) (type : Expr) (leInst? : Option Expr) : GoalM (Option Expr) := do
  let some leInst := leInst? | return none
  let isPartialOrderType := mkApp2 (mkConst ``Std.IsPartialOrder [u]) type leInst
  let some inst ← synthInstance? isPartialOrderType
    | reportDbgIssue! "type has `LE`, but is not a partial order, failed to synthesize{indentExpr isPartialOrderType}"
      return none
  return some inst

def mkIsLinearOrderInst? (u : Level) (type : Expr) (leInst?  : Option Expr) : GoalM (Option Expr) := do
  let some leInst := leInst? | return none
  let isLinearOrderType := mkApp2 (mkConst ``Std.IsLinearOrder [u]) type leInst
  let some inst ← synthInstance? isLinearOrderType
    | reportDbgIssue! "type has `LE`, but is not a linear order, failed to synthesize{indentExpr isLinearOrderType}"
      return none
  return some inst

def mkIsLinearPreorderInst? (u : Level) (type : Expr) (leInst?  : Option Expr) : GoalM (Option Expr) := do
  let some leInst := leInst? | return none
  let isLinearOrderType := mkApp2 (mkConst ``Std.IsLinearPreorder [u]) type leInst
  let some inst ← synthInstance? isLinearOrderType
    | reportDbgIssue! "type has `LE`, but is not a linear preorder, failed to synthesize{indentExpr isLinearOrderType}"
      return none
  return some inst

end Lean.Meta.Grind
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=71a9c43fe155a7420b1328fdda4a0520da03cfba56885110b1708785f66bbec1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OrderInsts/Variant5cfa9c8ad79a338a1f3be741e1243285756b360c5ec579f9701f90b782153099.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
