# Array Public Edition3 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c9c3bbcfa34497d7764e296bb9e4b7c525ec3f1` · SHA-256 `b42d761cb373c82488cb91b8aa63d0e0018659ff187f1b260d58a42ca5df5f99`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Lean.Meta.Tactic.Simp.BuiltinSimprocs.Nat

public section

namespace Array
open Lean Meta Simp

/-- Simplification procedure for `#[...][n]` for `n` a `Nat` literal. -/
builtin_dsimproc [simp, seval] reduceGetElem (@GetElem.getElem (Array _) Nat _ _ _ _ _ _) := fun e => do
  let_expr GetElem.getElem _ _ _ _ _ xs n _ ← e | return .continue
  let some n ← Nat.fromExpr? n | return .continue
  let some xs ← getArrayLit? xs | return .continue
  return .done <| xs[n]!

/-- Simplification procedure for `#[...][n]?` for `n` a `Nat` literal. -/
builtin_dsimproc [simp, seval] reduceGetElem? (@GetElem?.getElem? (Array _) Nat _ _ _ _ _) := fun e => do
  let_expr GetElem?.getElem? _ _ α _ _ xs n ← e | return .continue
  let some n ← Nat.fromExpr? n | return .continue
  let some xs ← getArrayLit? xs | return .continue
  let r ← if h : n < xs.size then mkSome α xs[n] else mkNone α
  return .done r

/-- Simplification procedure for `#[...][n]!` for `n` a `Nat` literal. -/
builtin_dsimproc [simp, seval] reduceGetElem! (@GetElem?.getElem! (Array _) Nat _ _ _ _ _ _) := fun e => do
  let_expr GetElem?.getElem! _ _ α _ _ _ xs n ← e | return .continue
  let some n ← Nat.fromExpr? n | return .continue
  let some xs ← getArrayLit? xs | return .continue
  let r ← if h : n < xs.size then pure xs[n] else mkDefault α
  return .done r

end Array
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a56b81e7ab42afc7207bf21c6c473a4dbbcc3fbdebf9c1664827c2ec03515e18 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variantb42d761cb373c82488cb91b8aa63d0e0018659ff187f1b260d58a42ca5df5f99.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
