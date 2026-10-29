# Covers Top Over Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a1ba53ecfc037f32336dbc566057276de639946b` · SHA-256 `e0511325b7a009b6c529476215fca0859425e501be62e35ae00e83815bccb211`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Justus Springer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Justus Springer
-/
module

public import Mathlib.CategoryTheory.Sites.CoversTop.Basic
public import Mathlib.CategoryTheory.Sites.Over

/-!
# CoversTop in over-categories

This file contains a transitivity lemma for `GrothendieckTopology.CoversTop`: if a family
`X : I → C` covers the top for `J`, and for each `i` a family `Y i` covers the top for the
induced topology on `Over (X i)`, then the combined family covers the top for `J`.

-/

public section

universe u

namespace CategoryTheory.GrothendieckTopology

variable {C : Type*} [Category* C] {J : GrothendieckTopology C}

lemma CoversTop.over {I : Type*} {X : I → C} (hX : J.CoversTop X) {I' : I → Type u}
    {Y : (i : I) → I' i → Over (X i)} (hY : ∀ i, (J.over (X i)).CoversTop (Y i)) :
    J.CoversTop (fun (j : (i : I) × I' i) ↦ (Y j.1 j.2).left) :=
  fun j ↦ J.transitive (hX j) _ fun Z f ⟨i, ⟨g⟩⟩ ↦ J.superset_covering
    ((Sieve.functorPushforward_ofObjects_le _ _ _).trans (Sieve.ofObjects_mono fun i' ↦ by aesop))
    (hY _ (.mk g))

end CategoryTheory.GrothendieckTopology
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0f7e2ea355747aeffb53606d876cc185d5214b7c39511b58b5cfa289275c8aa8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variante0511325b7a009b6c529476215fca0859425e501be62e35ae00e83815bccb211.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
