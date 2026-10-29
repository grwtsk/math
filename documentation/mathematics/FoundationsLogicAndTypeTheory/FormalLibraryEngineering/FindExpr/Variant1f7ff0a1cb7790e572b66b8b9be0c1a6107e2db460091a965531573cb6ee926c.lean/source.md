# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FindExpr.Variant1f7ff0a1cb7790e572b66b8b9be0c1a6107e2db460091a965531573cb6ee926c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `161c0e2ff7f6c233e44a72aaa664d2513eaf01ac` · SHA-256 `1f7ff0a1cb7790e572b66b8b9be0c1a6107e2db460091a965531573cb6ee926c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Expr

public section

namespace Lean
namespace Expr

@[extern "lean_find_expr"]
opaque findImpl? (p : @& (Expr → Bool)) (e : @& Expr) : Option Expr

@[inline] def find? (p : Expr → Bool) (e : Expr) : Option Expr := findImpl? p e

/-- Returns true if `e` occurs in `t` -/
def occurs (e : Expr) (t : Expr) : Bool :=
  (t.find? fun s => s == e).isSome

/--
Returns type for `findExt?` function argument.
-/
inductive FindStep where
  | /-- Found desired subterm -/ found
  | /-- Search subterms -/ visit
  | /-- Do not search subterms -/ done

@[extern "lean_find_ext_expr"]
opaque findExtImpl? (p : @& (Expr → FindStep)) (e : @& Expr) : Option Expr

/--
Similar to `find?`, but `p` can return `FindStep.done` to interrupt the search on subterms.
Remark: Differently from `find?`, we do not invoke `p` for partial applications of an application. -/
@[inline] def findExt? (p : Expr → FindStep) (e : Expr) : Option Expr := findExtImpl? p e

end Lean.Expr
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e190050e27a8fcd62f43b90a459fa98a327913bf9a123ce0b2cf7036ae23e661 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindExpr/Variant1f7ff0a1cb7790e572b66b8b9be0c1a6107e2db460091a965531573cb6ee926c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
