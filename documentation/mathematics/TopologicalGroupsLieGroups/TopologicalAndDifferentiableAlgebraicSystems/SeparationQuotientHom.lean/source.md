# Separation Quotient Hom — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6fde55a17f601fc6f0a2f372ef7920ef4dc4c602` · SHA-256 `104d80c3a957c9a85566f2c917bc551b6cfb34e7a2e61628bcd16e2aa931559e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Yoh Tanimoto. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yoh Tanimoto
-/
import Mathlib.Topology.Algebra.ContinuousMonoidHom
import Mathlib.Topology.Algebra.SeparationQuotient.Basic

/-!
# Lift of `MonoidHom M N` to `MonoidHom (SeparationQuotient M) N`

In this file we define the lift of a continuous monoid homomorphism `f` from `M` to `N` to
`SeparationQuotient M`, assuming that `f` maps two inseparable elements to the same element.
-/

namespace SeparationQuotient

section Monoid

variable {M N : Type*} [TopologicalSpace M] [TopologicalSpace N]

/-- The lift of a monoid hom from `M` to a monoid hom from `SeparationQuotient M`. -/
@[to_additive "The lift of an additive monoid hom from `M` to an additive monoid hom from
`SeparationQuotient M`."]
noncomputable def liftContinuousMonoidHom [CommMonoid M] [ContinuousMul M] [CommMonoid N]
    (f : ContinuousMonoidHom M N) (hf : ∀ x y, Inseparable x y → f x = f y) :
    ContinuousMonoidHom (SeparationQuotient M) N where
  toFun := SeparationQuotient.lift f hf
  map_one' := map_one f
  map_mul' := Quotient.ind₂ <| map_mul f
  continuous_toFun := SeparationQuotient.continuous_lift.mpr f.2

@[to_additive (attr := simp)]
theorem liftContinuousCommMonoidHom_mk [CommMonoid M] [ContinuousMul M] [CommMonoid N]
    (f : ContinuousMonoidHom M N) (hf : ∀ x y, Inseparable x y → f x = f y) (x : M) :
    liftContinuousMonoidHom f hf (mk x) = f x := rfl

end Monoid

end SeparationQuotient
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fd25b1cc7907ab4e1b28054e478d071283563c25366f39868831a1c1779d80fd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Hom/Variant104d80c3a957c9a85566f2c917bc551b6cfb34e7a2e61628bcd16e2aa931559e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
