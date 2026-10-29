# Continuous Functional Calculus — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9eca49727383cf65c28eb1c3bae0007e26a8615e` · SHA-256 `f29c24c094fac212a5aaceffdf864f583ccf07163ecc38f49e80a4811d90dcd4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/

import Mathlib.Tactic.Core
import Mathlib.Tactic.FunProp
import Aesop

/-!

# Tactics for the continuous functional calculus

At the moment, these tactics are just wrappers, but potentially they could be more sophisticated.
-/

declare_aesop_rule_sets [CStarAlgebra]

/-- A tactic used to automatically discharge goals relating to the continuous functional calculus,
specifically whether the element satisfies the predicate. -/
syntax (name := cfcTac) "cfc_tac" : tactic
macro_rules
  | `(tactic| cfc_tac) => `(tactic|
         try (first |
              assumption |
              infer_instance |
              aesop (rule_sets := [$(Lean.mkIdent `CStarAlgebra):ident])))

-- we may want to try using `fun_prop` directly in the future.
/-- A tactic used to automatically discharge goals relating to the continuous functional calculus,
specifically concerning continuity of the functions involved. -/
syntax (name := cfcContTac) "cfc_cont_tac" : tactic
macro_rules
  | `(tactic| cfc_cont_tac) =>
    `(tactic| try (first
      | fun_prop (disch := aesop (config := {warnOnNonterminal := false})
          (rule_sets := [$(Lean.mkIdent `CStarAlgebra):ident]))
      | assumption))

/-- A tactic used to automatically discharge goals relating to the non-unital continuous functional
calculus, specifically concerning whether `f 0 = 0`. -/
syntax (name := cfcZeroTac) "cfc_zero_tac" : tactic
macro_rules
  | `(tactic| cfc_zero_tac) =>
      `(tactic| try
          (first | aesop (rule_sets := [$(Lean.mkIdent `CStarAlgebra):ident]) | assumption))
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6c1e14b4fd0d3a36cba826ccdfb54ccd4d6b7162aa8d95a394c3321c1bbcec61 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContinuousFunctionalCalculus/Variantf29c24c094fac212a5aaceffdf864f583ccf07163ecc38f49e80a4811d90dcd4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
