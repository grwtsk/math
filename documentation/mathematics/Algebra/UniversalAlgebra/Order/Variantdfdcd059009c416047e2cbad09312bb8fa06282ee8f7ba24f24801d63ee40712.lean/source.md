# Complete source: GRWTSK.Algebra.UniversalAlgebra.Order.Variantdfdcd059009c416047e2cbad09312bb8fa06282ee8f7ba24f24801d63ee40712

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9a7518926d27623ce7fc8ece29a4b2090a868dd` · SHA-256 `dfdcd059009c416047e2cbad09312bb8fa06282ee8f7ba24f24801d63ee40712`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa
-/
import Mathlib.Algebra.Order.Hom.Ring
import Mathlib.Algebra.Order.Ring.InjSurj
import Mathlib.Algebra.Ring.Subring.Defs

/-!

# Subrings of ordered rings

We study subrings of ordered rings and prove their basic properties.

## Main definitions and results
* `Subring.orderedSubtype`: the inclusion `S → R` of a subring as an ordered ring homomorphism
* various ordered instances: a subring of an `OrderedRing`, `OrderedCommRing`, `LinearOrderedRing`,
  `toLinearOrderedCommRing` is again an ordering ring

-/

namespace Subring

variable {R : Type*}

/-- A subring of an ordered ring is an ordered ring. -/
instance toIsOrderedRing [Ring R] [PartialOrder R] [IsOrderedRing R] (s : Subring R) :
    IsOrderedRing s :=
  Subtype.coe_injective.isOrderedRing Subtype.val rfl rfl (fun _ _ => rfl) (fun _ _ => rfl)
    (fun _ _ => rfl) (fun _ _ => rfl) fun _ => rfl

/-- A subring of a strict ordered ring is a strict ordered ring. -/
instance toIsStrictOrderedRing [Ring R] [PartialOrder R] [IsStrictOrderedRing R]
    (s : Subring R) : IsStrictOrderedRing s :=
  Subtype.coe_injective.isStrictOrderedRing Subtype.val rfl rfl (fun _ _ => rfl) (fun _ _ => rfl)
    (fun _ _ => rfl) (fun _ _ => rfl) fun _ => rfl

/-- The inclusion `S → R` of a subring, as an ordered ring homomorphism. -/
def orderedSubtype {R : Type*} [Ring R] [PartialOrder R] (s : Subring R) :
    s →+*o R where
  __ := s.subtype
  monotone' := fun _ _ h ↦ h

variable {R : Type*} [Ring R] [PartialOrder R]

lemma orderedSubtype_coe (s : Subring R) : Subring.orderedSubtype s = Subring.subtype s := rfl

end Subring
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=58902a4a46244d5a4429ec0d9e044c0711b398d2c40e45b0c732973899892bb0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Order/Variantdfdcd059009c416047e2cbad09312bb8fa06282ee8f7ba24f24801d63ee40712.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
