# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HasConstCache.Variantc0ecef93ffee7ef3c3f97b4f3043e7c0ecad46a1a8faaf0ae200bda1d97ccfc8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `787d3c7929d9f879228094433456f2a25400b343` · SHA-256 `c0ecef93ffee7ef3c3f97b4f3043e7c0ecad46a1a8faaf0ae200bda1d97ccfc8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Expr
public import Std.Data.HashMap.Raw

public section

namespace Lean

structure HasConstCache (declNames : Array Name) where
  cache : Std.HashMap.Raw Expr Bool := ∅

unsafe def HasConstCache.containsUnsafe (e : Expr) : StateM (HasConstCache declNames) Bool := do
  if let some r := (← get).cache.get? (beq := ⟨ptrEq⟩) e then
    return r
  else
    match e with
    | .const n ..        => return declNames.contains n
    | .app f a           => cache e (← containsUnsafe f <||> containsUnsafe a)
    | .lam _ d b _       => cache e (← containsUnsafe d <||> containsUnsafe b)
    | .forallE _ d b _   => cache e (← containsUnsafe d <||> containsUnsafe b)
    | .letE _ t v b _    => cache e (← containsUnsafe t <||> containsUnsafe v <||> containsUnsafe b)
    | .mdata _ b         => cache e (← containsUnsafe b)
    | .proj _ _ b        => cache e (← containsUnsafe b)
    | _                  => return false
where
  cache (e : Expr) (r : Bool) : StateM (HasConstCache declNames) Bool := do
    modify fun ⟨cache⟩ => ⟨cache.insert (beq := ⟨ptrEq⟩) e r⟩
    return r

/--
  Return true iff `e` contains the constant `declName`.
  Remark: the results for visited expressions are stored in the state cache. -/
@[implemented_by HasConstCache.containsUnsafe]
opaque HasConstCache.contains (e : Expr) : StateM (HasConstCache declNames) Bool

end Lean
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3d694dc1b5dd20ab5aeab93753bea07067f0b445dadd9513d3e1e90f156f69a2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HasConstCache/Variantc0ecef93ffee7ef3c3f97b4f3043e7c0ecad46a1a8faaf0ae200bda1d97ccfc8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
