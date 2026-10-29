# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eval.Variant3495bf791684102df273371ccef10308142574c97f8bcc94960a00b5107d3d3e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e8611d5425ea135a609fa5812b3793759fcf44dd` · SHA-256 `3495bf791684102df273371ccef10308142574c97f8bcc94960a00b5107d3d3e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2024 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/

import Mathlib.Init
import Qq.Macro

/-!
# The `eval%` term elaborator

This file provides the `eval% x` term elaborator, which evaluates the constant `x` at compile-time
in the interpreter, and interpolates it into the expression.
-/


open Qq Lean Elab Term

namespace Mathlib.Meta

/--
`eval% x` evaluates the term `x : X` in the interpreter, and then injects the resulting expression.

As an example:
```lean
example : 2^10 = eval% 2^10 := by
  -- goal is `2^10 = 1024`
  sorry
```
This only works if a `Lean.ToExpr X` instance is available.

Tip: you can use `show_term eval% x` to see the value of `eval% x`.
-/
syntax (name := eval_expr) "eval% " term : term

@[term_elab eval_expr, inherit_doc eval_expr]
unsafe def elabEvalExpr : Lean.Elab.Term.TermElab
| `(term| eval% $stx) => fun exp => do
  let e ← Lean.Elab.Term.elabTermAndSynthesize stx exp
  let e ← instantiateMVars e
  let ee ← Meta.mkAppM ``Lean.toExpr #[e]
  Lean.Meta.evalExpr Expr q(Expr) ee (safety := .unsafe)
| _ => fun _ => Elab.throwUnsupportedSyntax

end Mathlib.Meta
````

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a974ea3420ee64c71655526de7873115a44b5fae5b33fd2266429df1f6a4433f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant3495bf791684102df273371ccef10308142574c97f8bcc94960a00b5107d3d3e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
