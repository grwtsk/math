# Complete source: GRWTSK.Algebra.ToExpr.Variant019640f16c1d9709d818d0417072f658f3c1916a05a9eb8660636e8010414863

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2467634f022f1765e0e24e568b7744ef9c4dbb96` · SHA-256 `019640f16c1d9709d818d0417072f658f3c1916a05a9eb8660636e8010414863`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Init.Grind.Ring.CommSemiringAdapter
public import Lean.ToExpr
public section
namespace Lean.Meta.Sym.Arith
open Grind.CommRing
/-!
`ToExpr` instances for `CommRing.Poly` types.
-/

def ofPower (p : Power) : Expr :=
  mkApp2 (mkConst ``Power.mk) (toExpr p.x) (toExpr p.k)

instance : ToExpr Power where
  toExpr := ofPower
  toTypeExpr := mkConst ``Power

def ofMon (m : Mon) : Expr :=
  match m with
  | .unit => mkConst ``Mon.unit
  | .mult pw m => mkApp2 (mkConst ``Mon.mult) (toExpr pw) (ofMon m)

instance : ToExpr Mon where
  toExpr := ofMon
  toTypeExpr := mkConst ``Mon

def ofPoly (p : Poly) : Expr :=
  match p with
  | .num k => mkApp (mkConst ``Poly.num) (toExpr k)
  | .add k m p => mkApp3 (mkConst ``Poly.add) (toExpr k) (toExpr m) (ofPoly p)

instance : ToExpr Poly where
  toExpr := ofPoly
  toTypeExpr := mkConst ``Poly

open Lean.Grind

def ofRingExpr (e : CommRing.Expr) : Expr :=
  match e with
  | .num k => mkApp (mkConst ``CommRing.Expr.num) (toExpr k)
  | .intCast k => mkApp (mkConst ``CommRing.Expr.intCast) (toExpr k)
  | .natCast k => mkApp (mkConst ``CommRing.Expr.natCast) (toExpr k)
  | .var x => mkApp (mkConst ``CommRing.Expr.var) (toExpr x)
  | .add a b => mkApp2 (mkConst ``CommRing.Expr.add) (ofRingExpr a) (ofRingExpr b)
  | .mul a b => mkApp2 (mkConst ``CommRing.Expr.mul) (ofRingExpr a) (ofRingExpr b)
  | .sub a b => mkApp2 (mkConst ``CommRing.Expr.sub) (ofRingExpr a) (ofRingExpr b)
  | .neg a => mkApp (mkConst ``CommRing.Expr.neg) (ofRingExpr a)
  | .pow a k => mkApp2 (mkConst ``CommRing.Expr.pow) (ofRingExpr a) (toExpr k)

instance : ToExpr CommRing.Expr where
  toExpr := ofRingExpr
  toTypeExpr := mkConst ``CommRing.Expr

end Lean.Meta.Sym.Arith
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d293b98b29d7e638d251a57990a1b72ec7fd9b8d26953087f794f7d182eea04d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/ToExpr/Variant019640f16c1d9709d818d0417072f658f3c1916a05a9eb8660636e8010414863.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
