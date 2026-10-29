# Divisors Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `442f8b05ca7c0c80199c24f6c9c112f262eee701` · SHA-256 `cb89aa5e57d8a41e6390a66446de49669c4939fd88bc0401dbf0de0c080d6ad0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Paul Lezeau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Lezeau, Bhavik Mehta
-/
module

public meta import Mathlib.NumberTheory.Divisors
public meta import Mathlib.Tactic.ToAdditive
public meta import Mathlib.Util.Qq
public import Mathlib.Data.Finset.Attr
public import Mathlib.Tactic.Bound.Init
public import Mathlib.Tactic.Common
public import Mathlib.Tactic.Finiteness.Attr
public import Mathlib.Tactic.SetLike
public import Mathlib.Util.CompileInductive

/-! # Divisor Simprocs

This file implements (d)simprocs to compute various objects related to divisors:
- `Nat.divisors_ofNat`: computes `Nat.divisors n` for explicit values of `n`
- `Nat.properDivisors_ofNat`: computes `Nat.properDivisors n` for explicit values of `n`

-/

public meta section

open Lean Meta Simp Qq

/-- The dsimproc `Nat.divisors_ofNat` computes the finset `Nat.divisors n` when `n` is a
numeral. For instance, this simplifies `Nat.divisors 6` to `{1, 2, 3, 6}`. -/
dsimproc_decl Nat.divisors_ofNat (Nat.divisors _) := fun e => do
  unless e.isAppOfArity `Nat.divisors 1 do return .continue
  let some n ← Lean.Nat.fromExpr? e.appArg! | return .continue
  return .done <| mkSetLiteralQ q(Finset ℕ) <| ((unsafe n.divisors.val.unquot).map mkNatLit)

/-- The dsimproc `Nat.properDivisors_ofNat` computes the finset `Nat.properDivisors n` when
`n` is a numeral. For instance, this simplifies `Nat.properDivisors 12` to `{1, 2, 3, 4, 6}`. -/
dsimproc_decl Nat.properDivisors_ofNat (Nat.properDivisors _) := fun e => do
  unless e.isAppOfArity `Nat.properDivisors 1 do return .continue
  let some n ← Lean.Nat.fromExpr? e.appArg! | return .continue
  return unsafe .done <| mkSetLiteralQ q(Finset ℕ) <|
    ((unsafe n.properDivisors.val.unquot).map mkNatLit)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a806b9af7f56b635220837b0773fed5784f22a7f2abdaa24b6beb8fcdf9626cb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Divisors/Variantcb89aa5e57d8a41e6390a66446de49669c4939fd88bc0401dbf0de0c080d6ad0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
