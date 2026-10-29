# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TautoSet.Variant9b8a3047ec0aaf3d80875ec04606d169127a1d4db59e23b021910e9a6f3e5180

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1e1ff6ebedb9e21a320adedb42eee9b39debd4dc` · SHA-256 `9b8a3047ec0aaf3d80875ec04606d169127a1d4db59e23b021910e9a6f3e5180`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2025 Lenny Taelman. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Lenny Taelman
-/

import Mathlib.Data.Set.SymmDiff
import Mathlib.Data.Set.Disjoint

/-!
# The `tauto_set` tactic
-/

assert_not_exists RelIso

namespace Mathlib.Tactic.TautoSet

open Lean Elab.Tactic

/--
`specialize_all x` runs `specialize h x` for all hypotheses `h` where this tactic succeeds.
-/
elab (name := specialize_all) "specialize_all" x:term : tactic => withMainContext do
  for h in ← getLCtx do
    evalTactic (← `(tactic|specialize $(mkIdent h.userName) $x)) <|> pure ()


/--
`tauto_set` attempts to prove tautologies involving hypotheses and goals of the form `X ⊆ Y`
or `X = Y`, where `X`, `Y` are expressions built using ∪, ∩, \, and ᶜ from finitely many
variables of type `Set α`. It also unfolds expressions of the form `Disjoint A B` and
`symmDiff A B`.

Examples:
```lean
example {α} (A B C D : Set α) (h1 : A ⊆ B) (h2 : C ⊆ D) : C \ B ⊆ D \ A := by
  tauto_set

example {α} (A B C : Set α) (h1 : A ⊆ B ∪ C) : (A ∩ B) ∪ (A ∩ C) = A := by
  tauto_set
```
-/
macro "tauto_set" : tactic => `(tactic|
  · simp_all -failIfUnchanged only [
      Set.ext_iff, Set.subset_def,
      Set.mem_union, Set.mem_compl_iff, Set.mem_inter_iff,
      Set.symmDiff_def, Set.diff_eq, Set.disjoint_iff
    ]
    try intro x
    try specialize_all x
    <;> tauto
)


end Mathlib.Tactic.TautoSet
````

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c98104c1c60aab103e57f9503949324184001f6662da29c38d28601e2194bb0c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TautoSet/Variant9b8a3047ec0aaf3d80875ec04606d169127a1d4db59e23b021910e9a6f3e5180.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
