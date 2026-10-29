# To Expr Public Of Poly — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9da8bce2b453038350c1bfa73b02b5d26877f279` · SHA-256 `4d4308a3ba55855d85cf26b31096d28ef38b4fbd2f02c1e1c1696659cfe61cf5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Init.Grind.Ordered.Linarith
public import Lean.ToExpr
public section
namespace Lean.Meta.Grind.Arith.Linear
open Grind.Linarith
/-!
`ToExpr` instances for `Linarith.Poly` types.
-/

def ofPoly (p : Poly) : Expr :=
  match p with
  | .nil => mkConst ``Poly.nil
  | .add k x p => mkApp3 (mkConst ``Poly.add) (toExpr k) (toExpr x) (ofPoly p)

instance : ToExpr Poly where
  toExpr := ofPoly
  toTypeExpr := mkConst ``Poly

open Lean.Grind

def ofLinExpr (e : Linarith.Expr) : Expr :=
  match e with
  | .zero => mkConst ``Linarith.Expr.zero
  | .var x => mkApp (mkConst ``Linarith.Expr.var) (toExpr x)
  | .add a b => mkApp2 (mkConst ``Linarith.Expr.add) (ofLinExpr a) (ofLinExpr b)
  | .sub a b => mkApp2 (mkConst ``Linarith.Expr.sub) (ofLinExpr a) (ofLinExpr b)
  | .neg a => mkApp (mkConst ``Linarith.Expr.neg) (ofLinExpr a)
  | .natMul k a => mkApp2 (mkConst ``Linarith.Expr.natMul) (toExpr k) (ofLinExpr a)
  | .intMul k a => mkApp2 (mkConst ``Linarith.Expr.intMul) (toExpr k) (ofLinExpr a)

instance : ToExpr Linarith.Expr where
  toExpr := ofLinExpr
  toTypeExpr := mkConst ``Linarith.Expr

end Lean.Meta.Grind.Arith.Linear
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=31eb2a53dfc60290d68ee1dd5a4e9764eac620e56ee6990867e21cec118341c9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant4d4308a3ba55855d85cf26b31096d28ef38b4fbd2f02c1e1c1696659cfe61cf5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
