# Complete source: GRWTSK.Topology.GeneralTopology.CompactlyGenerated.Variant2666c9c02f05810ef77806b5980290d963cdf5fbf04a4445e5d1594e5374680e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a1d5c5cb870c6e93324c344e927e962368e61a8d` · SHA-256 `2666c9c02f05810ef77806b5980290d963cdf5fbf04a4445e5d1594e5374680e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.Topology.Compactness.CompactlyGeneratedSpace
import Mathlib.CategoryTheory.Elementwise
/-!

# Compactly generated topological spaces

This file defines the category of compactly generated topological spaces. These are spaces `X` such
that a map `f : X → Y` is continuous whenever the composition `S → X → Y` is continuous for all
compact Hausdorff spaces `S` mapping continuously to `X`.

## TODO

* `CompactlyGenerated` is a reflective subcategory of `TopCat`.
* `CompactlyGenerated` is cartesian closed.
* Every first-countable space is `u`-compactly generated for every universe `u`.
-/

universe u w

open CategoryTheory Topology TopologicalSpace

/-- `CompactlyGenerated.{u, w}` is the type of `u`-compactly generated `w`-small topological spaces.
This should always be used with explicit universe parameters. -/
structure CompactlyGenerated where
  /-- The underlying topological space of an object of `CompactlyGenerated`. -/
  toTop : TopCat.{w}
  /-- The underlying topological space is compactly generated. -/
  [is_compactly_generated : UCompactlyGeneratedSpace.{u} toTop]

namespace CompactlyGenerated

instance : Inhabited CompactlyGenerated.{u, w} :=
  ⟨{ toTop := TopCat.of (ULift (Fin 37)) }⟩

instance : CoeSort CompactlyGenerated Type* :=
  ⟨fun X => X.toTop⟩

attribute [instance] is_compactly_generated

instance : Category.{w, w+1} CompactlyGenerated.{u, w} :=
  InducedCategory.category toTop

instance : ConcreteCategory.{w} CompactlyGenerated.{u, w} (C(·, ·)) :=
  InducedCategory.concreteCategory toTop

variable (X : Type w) [TopologicalSpace X] [UCompactlyGeneratedSpace.{u} X]

/-- Constructor for objects of the category `CompactlyGenerated`. -/
abbrev of : CompactlyGenerated.{u, w} where
  toTop := TopCat.of X
  is_compactly_generated := ‹_›

section

variable {X} {Y : Type w} [TopologicalSpace Y] [UCompactlyGeneratedSpace.{u} Y]

/-- Typecheck a `ContinuousMap` as a morphism in `CompactlyGenerated`. -/
abbrev ofHom (f : C(X, Y)) : of X ⟶ of Y := ConcreteCategory.ofHom f

end

/-- The fully faithful embedding of `CompactlyGenerated` in `TopCat`. -/
@[simps!]
def compactlyGeneratedToTop : CompactlyGenerated.{u, w} ⥤ TopCat.{w} :=
  inducedFunctor _

/-- `compactlyGeneratedToTop` is fully faithful. -/
def fullyFaithfulCompactlyGeneratedToTop : compactlyGeneratedToTop.{u, w}.FullyFaithful :=
  fullyFaithfulInducedFunctor _

instance : compactlyGeneratedToTop.{u, w}.Full := fullyFaithfulCompactlyGeneratedToTop.full

instance : compactlyGeneratedToTop.{u, w}.Faithful := fullyFaithfulCompactlyGeneratedToTop.faithful

/-- Construct an isomorphism from a homeomorphism. -/
@[simps hom inv]
def isoOfHomeo {X Y : CompactlyGenerated.{u, w}} (f : X ≃ₜ Y) : X ≅ Y where
  hom := ofHom ⟨f, f.continuous⟩
  inv := ofHom ⟨f.symm, f.symm.continuous⟩
  hom_inv_id := by
    ext x
    exact f.symm_apply_apply x
  inv_hom_id := by
    ext x
    exact f.apply_symm_apply x

/-- Construct a homeomorphism from an isomorphism. -/
@[simps]
def homeoOfIso {X Y : CompactlyGenerated.{u, w}} (f : X ≅ Y) : X ≃ₜ Y where
  toFun := f.hom
  invFun := f.inv
  left_inv := f.hom_inv_id_apply
  right_inv := f.inv_hom_id_apply
  continuous_toFun := f.hom.hom.continuous
  continuous_invFun := f.inv.hom.continuous

/-- The equivalence between isomorphisms in `CompactlyGenerated` and homeomorphisms
of topological spaces. -/
@[simps]
def isoEquivHomeo {X Y : CompactlyGenerated.{u, w}} : (X ≅ Y) ≃ (X ≃ₜ Y) where
  toFun := homeoOfIso
  invFun := isoOfHomeo
  left_inv f := by
    ext
    rfl
  right_inv f := by
    ext
    rfl

end CompactlyGenerated
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=935ce7b23c0a751d9f8c61f54714b0d4596b3b76e636bd229b11895dc73a74fb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/CompactlyGenerated/Variant2666c9c02f05810ef77806b5980290d963cdf5fbf04a4445e5d1594e5374680e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
