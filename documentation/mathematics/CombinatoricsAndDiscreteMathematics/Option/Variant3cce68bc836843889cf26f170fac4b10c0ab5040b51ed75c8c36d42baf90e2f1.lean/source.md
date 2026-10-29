# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Option.Variant3cce68bc836843889cf26f170fac4b10c0ab5040b51ed75c8c36d42baf90e2f1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c3461eaf0d18b3aa2fee542882a8682d404d2339` · SHA-256 `3cce68bc836843889cf26f170fac4b10c0ab5040b51ed75c8c36d42baf90e2f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Data.Finset.Option
import Mathlib.Algebra.BigOperators.Group.Finset.Basic

/-!
# Lemmas about products and sums over finite sets in `Option α`

In this file we prove formulas for products and sums over `Finset.insertNone s` and
`Finset.eraseNone s`.
-/

open Function

namespace Finset

variable {α M : Type*} [CommMonoid M]

@[to_additive (attr := simp)]
theorem prod_insertNone (f : Option α → M) (s : Finset α) :
    ∏ x ∈ insertNone s, f x = f none * ∏ x ∈ s, f (some x) := by simp [insertNone]

@[to_additive]
theorem mul_prod_eq_prod_insertNone (f : α → M) (x : M) (s : Finset α) :
    x * ∏ i ∈ s, f i = ∏ i ∈ insertNone s, i.elim x f :=
  (prod_insertNone (fun i => i.elim x f) _).symm

@[to_additive]
theorem prod_eraseNone (f : α → M) (s : Finset (Option α)) :
    ∏ x ∈ eraseNone s, f x = ∏ x ∈ s, Option.elim' 1 f x := by
  classical calc
      ∏ x ∈ eraseNone s, f x = ∏ x ∈ (eraseNone s).map Embedding.some, Option.elim' 1 f x :=
        (prod_map (eraseNone s) Embedding.some <| Option.elim' 1 f).symm
      _ = ∏ x ∈ s.erase none, Option.elim' 1 f x := by rw [map_some_eraseNone]
      _ = ∏ x ∈ s, Option.elim' 1 f x := prod_erase _ rfl

end Finset
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1aa149877698b1b816133a8bb5cbc72bf364011960290421b0391193124e138f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Option/Variant3cce68bc836843889cf26f170fac4b10c0ab5040b51ed75c8c36d42baf90e2f1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
