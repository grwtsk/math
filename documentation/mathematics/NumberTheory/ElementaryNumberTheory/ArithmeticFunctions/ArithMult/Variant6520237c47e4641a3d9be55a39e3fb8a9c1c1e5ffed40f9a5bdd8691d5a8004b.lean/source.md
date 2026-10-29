# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.ArithMult.Variant6520237c47e4641a3d9be55a39e3fb8a9c1c1e5ffed40f9a5bdd8691d5a8004b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c2e5f0530ec2dfa3bbf43177dd9d57732a71c544` · SHA-256 `6520237c47e4641a3d9be55a39e3fb8a9c1c1e5ffed40f9a5bdd8691d5a8004b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Arend Mellendijk. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Arend Mellendijk
-/

import Mathlib.Tactic.Basic
import Mathlib.Tactic.ArithMult.Init

/-!
# Multiplicativity

We define the arith_mult tactic using aesop

-/

namespace ArithmeticFunction

/--
The `arith_mult` attribute used to tag `IsMultiplicative` statements for the
`arith_mult` tactic. -/
macro "arith_mult" : attr =>
  `(attr|aesop safe apply (rule_sets := [$(Lean.mkIdent `IsMultiplicative):ident]))

/--
`arith_mult` solves goals of the form `IsMultiplicative f` for `f : ArithmeticFunction R`
by applying lemmas tagged with the user attribute `arith_mult`. -/
macro (name := arith_mult) "arith_mult" c:Aesop.tactic_clause* : tactic =>
`(tactic|
  { aesop $c* (config :=
    { destructProductsTransparency := .reducible,
      applyHypsTransparency := .default,
      introsTransparency? := some .reducible,
      enableSimp := false } )
  (rule_sets := [$(Lean.mkIdent `IsMultiplicative):ident])})

/--
`arith_mult` solves goals of the form `IsMultiplicative f` for `f : ArithmeticFunction R`
by applying lemmas tagged with the user attribute `arith_mult`, and prints out the generated
proof term. -/
macro (name := arith_mult?) "arith_mult?" c:Aesop.tactic_clause* : tactic =>
`(tactic|
  { show_term { arith_mult $c* } })

end ArithmeticFunction
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=37b14927473ac0a76b62e8c8921dc26778e13e7bf660ba06116ff8572a295eb2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithMult/Variant6520237c47e4641a3d9be55a39e3fb8a9c1c1e5ffed40f9a5bdd8691d5a8004b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
