# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.VarRename.Variant53e0637126766ac09bf863debc6c6e42585ea886b7314c269b8ed98cb6113e1b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `61befedde387b006d3e9c1f11106f0e951a121e5` · SHA-256 `53e0637126766ac09bf863debc6c6e42585ea886b7314c269b8ed98cb6113e1b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Init.Data.Int.Linear
public import Lean.Meta.Tactic.Grind.VarRename
namespace Int.Internal.Linear
open Lean.Meta.Grind

public def Poly.renameVars (p : Poly) (f : VarRename) : Poly :=
  match p with
  | .num .. => p
  | .add k x p => .add k (f x) (renameVars p f)

public def Expr.renameVars (e : Expr) (f : VarRename) : Expr :=
  match e with
  | .num .. => e
  | .var x => .var (f x)
  | .neg a => .neg (renameVars a f)
  | .add a b => .add (renameVars a f) (renameVars b f)
  | .sub a b => .sub (renameVars a f) (renameVars b f)
  | .mulL k a => .mulL k (renameVars a f)
  | .mulR a k => .mulR (renameVars a f) k

public def Poly.collectVars (p : Poly) : VarCollector :=
  match p with
  | .num .. => id
  | .add _ x p => collectVar x >> p.collectVars

public def Expr.collectVars (e : Expr) : VarCollector :=
  match e with
  | .num .. => id
  | .var x => collectVar x
  | .neg a | .mulL _ a | .mulR a _ => a.collectVars
  | .add a b | .sub a b => a.collectVars >> b.collectVars

end Int.Internal.Linear
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=17451ce75dcecb3f7132d81f2408843a5e18e8d531d293b11e473bc2b6f1b787 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VarRename/Variant53e0637126766ac09bf863debc6c6e42585ea886b7314c269b8ed98cb6113e1b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
