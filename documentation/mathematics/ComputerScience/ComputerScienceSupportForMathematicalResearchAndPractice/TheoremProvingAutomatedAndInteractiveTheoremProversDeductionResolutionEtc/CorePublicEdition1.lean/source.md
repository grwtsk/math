# Core Public Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `17ef8c7bdfe1335f20114e8f917ac0fd473e2632` · SHA-256 `c4b829ed1d6a032b514089b79394f1a53ad6bd264725e3374cc50879877a1b10`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module
prelude
import Lean.Meta.Sym.Simp.SimpM
import Init.Sym.Lemmas
import Init.CbvSimproc
import Lean.Meta.Tactic.Cbv.CbvSimproc

namespace Lean.Meta.Sym.Simp

/-- Short-circuit evaluation of `Or`. Simplifies only the left argument;
if it reduces to `True`, returns `True` immediately without evaluating the right side. -/
builtin_cbv_simproc ↓ simpOr (@Or _ _) := fun e => do
  let_expr Or a b := e | return .rfl
  match (← simp a) with
  | .rfl _ _ =>
    if (← isTrueExpr a) then
      return .step (← getTrueExpr) (mkApp (mkConst ``true_or) b) (done := true)
    else if (← isFalseExpr a) then
      return .step b (mkApp (mkConst ``false_or) b)
    else
      return .rfl
  | .step a' ha _ _ =>
    if (← isTrueExpr a') then
      return .step (← getTrueExpr) (mkApp (e.replaceFn ``Sym.or_eq_true_left) ha) (done := true)
    else if (← isFalseExpr a') then
      return .step b (mkApp (e.replaceFn ``Sym.or_eq_right) ha)
    else
      return .rfl

/-- Short-circuit evaluation of `And`. Simplifies only the left argument;
if it reduces to `False`, returns `False` immediately without evaluating the right side. -/
builtin_cbv_simproc ↓ simpAnd (@And _ _) := fun e => do
  let_expr And a b := e | return .rfl
  match (← simp a) with
  | .rfl _ _ =>
    if (← isFalseExpr a) then
      return .step (← getFalseExpr) (mkApp (mkConst ``false_and) b) (done := true)
    else if (← isTrueExpr a) then
      return .step b (mkApp (mkConst ``true_and) b)
    else
      return .rfl
  | .step a' ha _ _ =>
    if (← isFalseExpr a') then
      return .step (← getFalseExpr) (mkApp (e.replaceFn ``Sym.and_eq_false_left) ha) (done := true)
    else if (← isTrueExpr a') then
      return .step b (mkApp (e.replaceFn ``Sym.and_eq_left) ha)
    else
      return .rfl

end Lean.Meta.Sym.Simp
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f3f5b7879eeb3559da38ea672e44dca7d6ee2f387f9be047feb13520e969a711 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantc4b829ed1d6a032b514089b79394f1a53ad6bd264725e3374cc50879877a1b10.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
