# Complete source: GRWTSK.Topology.GeneralTopology.OrderedMonoid.Variantb705e48f4c75abdd731db086b35ef1a138a4b8ad27b004f28fd23e33b9fb8d50

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b17b7b186bcc21f9816012c276feb1d8b382666e` · SHA-256 `b705e48f4c75abdd731db086b35ef1a138a4b8ad27b004f28fd23e33b9fb8d50`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov, Abhimanyu Pallavi Sudhir
-/
import Mathlib.Algebra.Module.Pi
import Mathlib.Algebra.Order.Monoid.Canonical.Defs
import Mathlib.Order.Filter.Germ.Basic

/-!
# Ordered monoid instances on the space of germs of a function at a filter

For each of the following structures we prove that if `β` has this structure, then so does
`Germ l β`:

* `OrderedCancelCommMonoid` and `OrderedCancelAddCommMonoid`.

## Tags

filter, germ
-/

namespace Filter.Germ

variable {α : Type*} {β : Type*} {l : Filter α}

@[to_additive]
instance instIsOrderedMonoid [CommMonoid β] [PartialOrder β] [IsOrderedMonoid β] :
    IsOrderedMonoid (Germ l β) where
  mul_le_mul_left f g := inductionOn₂ f g fun _ _ H h ↦ inductionOn h fun _ ↦ H.mono
    fun _ H ↦ mul_le_mul_left' H _

@[to_additive]
instance instIsOrderedCancelMonoid [CommMonoid β] [PartialOrder β] [IsOrderedCancelMonoid β] :
    IsOrderedCancelMonoid (Germ l β) where
  le_of_mul_le_mul_left f g h := inductionOn₃ f g h fun _ _ _ H ↦ H.mono
    fun _ ↦ le_of_mul_le_mul_left'

@[to_additive]
instance instCanonicallyOrderedMul [Mul β] [LE β] [CanonicallyOrderedMul β] :
    CanonicallyOrderedMul (Germ l β) where
  le_self_mul x y := inductionOn₂ x y fun _ _ ↦ Eventually.of_forall fun _ ↦ le_self_mul

end Filter.Germ
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4e6fd18f635fc2ea53a84283f4b694c0ff6118c108d027d3a0bbf4edee09bd22 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/OrderedMonoid/Variantb705e48f4c75abdd731db086b35ef1a138a4b8ad27b004f28fd23e33b9fb8d50.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
