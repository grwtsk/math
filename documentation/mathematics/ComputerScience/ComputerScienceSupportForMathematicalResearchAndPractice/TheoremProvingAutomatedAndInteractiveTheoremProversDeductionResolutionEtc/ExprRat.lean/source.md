# Expr Rat — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `490b8a61be1cdf32fda39fbd0535a904bc38db9b` · SHA-256 `526bf41adf4efeb3e9cc172bc604b4b5b5b92f068a54e8eab2315d4db720b418`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Robert Y. Lewis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Kim Morrison
-/
import Mathlib.Init
import Batteries.Data.Rat.Basic
import Batteries.Tactic.Alias

/-!
# Additional operations on Expr and rational numbers

This file defines some operations involving `Expr` and rational numbers.

## Main definitions

* `Lean.Expr.isExplicitNumber`: is an expression a number in normal form?
  This includes natural numbers, integers and rationals.
-/

namespace Lean.Expr

/--
Check if an expression is a "rational in normal form",
i.e. either an integer number in normal form,
or `n / d` where `n` is an integer in normal form, `d` is a natural number in normal form,
`d ≠ 1`, and `n` and `d` are coprime (in particular, we check that `(mkRat n d).den = d`).
If so returns the rational number.
-/
def rat? (e : Expr) : Option Rat := do
  if e.isAppOfArity ``Div.div 4 then
    let d ← e.appArg!.nat?
    guard (d ≠ 1)
    let n ← e.appFn!.appArg!.int?
    let q := mkRat n d
    guard (q.den = d)
    pure q
  else
    e.int?

/--
Test if an expression represents an explicit number written in normal form:
* A "natural number in normal form" is an expression `OfNat.ofNat n`, even if it is not of type `ℕ`,
  as long as `n` is a literal.
* An "integer in normal form" is an expression which is either a natural number in number form,
  or `-n`, where `n` is a natural number in normal form.
* A "rational in normal form" is an expressions which is either an integer in normal form,
  or `n / d` where `n` is an integer in normal form, `d` is a natural number in normal form,
  `d ≠ 1`, and `n` and `d` are coprime (in particular, we check that `(mkRat n d).den = d`).
-/
def isExplicitNumber : Expr → Bool
  | .lit _ => true
  | .mdata _ e => isExplicitNumber e
  | e => e.rat?.isSome

end Lean.Expr
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bf38c43a1c851ec28a246e80368dfffc583273d14c8e3087c555971131525c6f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rat/Variant526bf41adf4efeb3e9cc172bc604b4b5b5b92f068a54e8eab2315d4db720b418.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
