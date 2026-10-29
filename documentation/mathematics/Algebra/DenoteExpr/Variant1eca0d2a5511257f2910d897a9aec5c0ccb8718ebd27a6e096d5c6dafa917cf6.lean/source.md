# Complete source: GRWTSK.Algebra.DenoteExpr.Variant1eca0d2a5511257f2910d897a9aec5c0ccb8718ebd27a6e096d5c6dafa917cf6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9bda144b931d1b8c154637daca12d1304db235b9` · SHA-256 `1eca0d2a5511257f2910d897a9aec5c0ccb8718ebd27a6e096d5c6dafa917cf6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
import Lean.Meta.Tactic.Grind.Arith.Util
public import Lean.Meta.Tactic.Grind.Arith.Linear.Util
import Lean.Meta.Tactic.Grind.Simp
import Lean.Meta.Tactic.Grind.Arith.CommRing.DenoteExpr
public section
namespace Lean.Meta.Grind.Arith.Linear
/-!
Helper functions for converting reified terms back into their denotations.
-/
variable [Monad M] [MonadGetStruct M] [MonadError M]

def _root_.Lean.Grind.Linarith.Poly.denoteExpr (p : Poly) : M Expr := do
  match p with
  | .nil => return (← getStruct).zero
  | .add k x p => go p (← denoteTerm k x)
where
  denoteTerm (k : Int) (x : Var) : M Expr := do
    if k == 1 then
      return (← getStruct).vars[x]!
    else
      return mkApp2 (← getStruct).zsmulFn (mkIntLit k) (← getStruct).vars[x]!

  go (p : Poly) (acc : Expr) : M Expr := do
    match p with
    | .nil => return acc
    | .add k m p => go p (mkApp2 (← getStruct).addFn acc (← denoteTerm k m))

def _root_.Lean.Grind.Linarith.Expr.denoteExpr (e : LinExpr) : M Expr := do
  go e
where
  go : LinExpr → M Expr
  | .zero => return (← getStruct).zero
  | .var x => return (← getStruct).vars[x]!
  | .add a b => return mkApp2 (← getStruct).addFn (← go a) (← go b)
  | .sub a b => return mkApp2 (← getStruct).subFn (← go a) (← go b)
  | .natMul k a => return mkApp2 (← getStruct).nsmulFn (mkNatLit k) (← go a)
  | .intMul k a => return mkApp2 (← getStruct).zsmulFn (mkIntLit k) (← go a)
  | .neg a => return mkApp (← getStruct).negFn (← go a)

private def mkEq (a b : Expr) : M Expr := do
  let s ← getStruct
  return mkApp3 (mkConst ``Eq [s.u.succ]) s.type a b

def DiseqCnstr.denoteExpr (c : DiseqCnstr) : M Expr := do
  return mkNot (← mkEq (← c.p.denoteExpr) (← getStruct).ofNatZero)

private def denoteIneq (p : Poly) (strict : Bool) : M Expr := do
  if strict then
    return mkApp2 (← getLtFn) (← p.denoteExpr) (← getStruct).ofNatZero
  else
    return mkApp2 (← getLeFn) (← p.denoteExpr) (← getStruct).ofNatZero

def IneqCnstr.denoteExpr (c : IneqCnstr) : M Expr := do
  denoteIneq c.p c.strict

def EqCnstr.denoteExpr (c : EqCnstr) : M Expr := do
  mkEq (← c.p.denoteExpr) (← getStruct).ofNatZero

private def denoteNum (k : Int) : LinearM Expr := do
  return mkApp2 (← getStruct).zsmulFn (mkIntLit k) (← getOne)

def _root_.Lean.Grind.CommRing.Poly.denoteAsIntModuleExpr (p : Grind.CommRing.Poly) : LinearM Expr := do
  match p with
  | .num k => denoteNum k
  | .add k m p => return mkApp2 (← getStruct).addFn (mkApp2 (← getStruct).zsmulFn (mkIntLit k) (← m.denoteExpr)) (← denoteAsIntModuleExpr p)

def _root_.Lean.Grind.CommRing.Poly.toIntModuleExpr (p : Grind.CommRing.Poly) (generation := 0) : LinearM Expr := do
  let e ← p.denoteAsIntModuleExpr
  let e ← preprocessLight e
  internalize e generation (some getIntModuleVirtualParent)
  return e

end Lean.Meta.Grind.Arith.Linear
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=247647d4f23519551c3eaaf261535f7fed015cab2026ed2ef5894f1f5b387c49 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/DenoteExpr/Variant1eca0d2a5511257f2910d897a9aec5c0ccb8718ebd27a6e096d5c6dafa917cf6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
