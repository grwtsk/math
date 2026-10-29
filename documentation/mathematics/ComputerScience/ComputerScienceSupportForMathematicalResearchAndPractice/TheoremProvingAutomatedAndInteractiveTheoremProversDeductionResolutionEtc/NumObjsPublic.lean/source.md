# Num Objs Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0aacbf5054022ac359b61879df420ff6c9bfbe16` · SHA-256 `0598b9af9c1b187754522d93914cce08b1e4bea40ae6401cdcc07c05a033d695`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Expr
public import Lean.Util.PtrSet

public section

namespace Lean.Expr
namespace NumObjs

unsafe structure State where
 visited : PtrSet Expr := mkPtrSet
 counter : Nat := 0

unsafe abbrev M := StateM State

unsafe def visit (e : Expr) : M Unit :=
  unless (← get).visited.contains e do
    modify fun { visited, counter } => { visited := visited.insert e, counter := counter + 1 }
    match e with
      | .forallE _ d b _ => visit d; visit b
      | .lam _ d b _     => visit d; visit b
      | .mdata _ b       => visit b
      | .letE _ t v b _  => visit t; visit v; visit b
      | .app f a         => visit f; visit a
      | .proj _ _ b      => visit b
      | _                => return ()

unsafe def main (e : Expr) : Nat :=
  let (_, s) := NumObjs.visit e |>.run {}
  s.counter

end NumObjs

/--
Returns the number of allocated `Expr` objects in the given expression `e`.

This operation is performed in `IO` because the result depends on the memory representation of the object.

Note: Use this function primarily for diagnosing performance issues.
-/
def numObjs (e : Expr) : IO Nat :=
  return unsafe NumObjs.main e

end Lean.Expr
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=584ef8e9eb317a4217422e0ee3910e6671c7bf7485c511451851df63da27ec2b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NumObjs/Variant0598b9af9c1b187754522d93914cce08b1e4bea40ae6401cdcc07c05a033d695.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
