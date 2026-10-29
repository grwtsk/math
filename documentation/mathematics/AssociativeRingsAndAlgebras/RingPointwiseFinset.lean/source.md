# Ring Pointwise Finset — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `03d4bcb4f3813f5d9f47c06592de3d36b6aad858` · SHA-256 `f9a6dee81d6b59dc2a07d139a2faedea0133c168e58ba7ee56cf3e500f9bd6ca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Ring.Pointwise.Set
import Mathlib.Algebra.Ring.InjSurj
import Mathlib.Algebra.Group.Pointwise.Finset.Basic

/-!
# Pointwise operations of sets in a ring

This file proves properties of pointwise operations of sets in a ring.

## Tags

set multiplication, set addition, pointwise addition, pointwise multiplication,
pointwise subtraction
-/

assert_not_exists MulAction

open scoped Pointwise

namespace Finset
variable {α β : Type*}

/-- `Finset α` has distributive negation if `α` has. -/
protected noncomputable def distribNeg [DecidableEq α] [Mul α] [HasDistribNeg α] :
    HasDistribNeg (Finset α) :=
  coe_injective.hasDistribNeg _ coe_neg coe_mul

scoped[Pointwise] attribute [instance] Finset.distribNeg

section Distrib
variable [DecidableEq α] [Distrib α] (s t u : Finset α)

/-!
Note that `Finset α` is not a `Distrib` because `s * t + s * u` has cross terms that `s * (t + u)`
lacks.

```lean
-- {10, 16, 18, 20, 8, 9}
#eval {1, 2} * ({3, 4} + {5, 6} : Finset ℕ)

-- {10, 11, 12, 13, 14, 15, 16, 18, 20, 8, 9}
#eval ({1, 2} : Finset ℕ) * {3, 4} + {1, 2} * {5, 6}
```
-/

lemma mul_add_subset : s * (t + u) ⊆ s * t + s * u :=
  image₂_distrib_subset_left mul_add

lemma add_mul_subset : (s + t) * u ⊆ s * u + t * u :=
  image₂_distrib_subset_right add_mul

end Distrib
end Finset
````

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f0a2f1ea587c6ee807c099fdf80362c88d639c27540fbcd2f050158b824c7ee3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Finset/Variantf9a6dee81d6b59dc2a07d139a2faedea0133c168e58ba7ee56cf3e500f9bd6ca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
