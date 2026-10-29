# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.VarRename.Variantd806ea9ee2179334c49f9c812191d53ff1e430e814c688830054b4cb65b93e17

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5a3813395259cdac36e331fe056974f02b83b7cb` · SHA-256 `d806ea9ee2179334c49f9c812191d53ff1e430e814c688830054b4cb65b93e17`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Init.Grind.Ring.CommSemiringAdapter
public import Lean.Meta.Tactic.Grind.VarRename
namespace Lean.Grind.CommRing
open Lean.Meta.Grind

public def Power.renameVars (pw : Power) (f : VarRename) : Power :=
  { pw with x := (f pw.x) }

public def Mon.renameVars (m : Mon) (f : VarRename) : Mon :=
  match m with
  | .unit => .unit
  | .mult pw m => .mult (pw.renameVars f) (renameVars m f)

public def Poly.renameVars (p : Poly) (f : VarRename) : Poly :=
  match p with
  | .num _ => p
  | .add k m p => .add k (m.renameVars f) (renameVars p f)

public def Expr.renameVars (e : Expr) (f : VarRename) : Expr :=
  match e with
  | .num .. | .natCast .. | .intCast .. => e
  | .var x => .var (f x)
  | .neg a => .neg (renameVars a f)
  | .add a b => .add (renameVars a f) (renameVars b f)
  | .sub a b => .sub (renameVars a f) (renameVars b f)
  | .mul a b => .mul (renameVars a f) (renameVars b f)
  | .pow a k => .pow (renameVars a f) k

public def Power.collectVars (pw : Power) : VarCollector :=
  collectVar pw.x

public def Mon.collectVars (m : Mon) : VarCollector :=
  match m with
  | .unit => id
  | .mult pw m => pw.collectVars >> m.collectVars

public def Poly.collectVars (p : Poly) : VarCollector :=
  match p with
  | .num _ => id
  | .add _ m p => m.collectVars >> p.collectVars

public def Expr.collectVars (e : Expr) : VarCollector :=
  match e with
  | .num .. | .natCast .. | .intCast .. => id
  | .var x => collectVar x
  | .neg a | .pow a _ => a.collectVars
  | .add a b | .sub a b | .mul a b => a.collectVars >> b.collectVars

end Lean.Grind.CommRing
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=66090d1db917379aabf9f366c546032a4fb5682014555d89ed9a24539e130200 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VarRename/Variantd806ea9ee2179334c49f9c812191d53ff1e430e814c688830054b4cb65b93e17.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
