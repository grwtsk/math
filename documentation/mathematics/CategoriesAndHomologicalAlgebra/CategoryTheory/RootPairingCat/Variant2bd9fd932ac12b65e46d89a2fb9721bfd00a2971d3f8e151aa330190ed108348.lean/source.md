# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RootPairingCat.Variant2bd9fd932ac12b65e46d89a2fb9721bfd00a2971d3f8e151aa330190ed108348

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1d46e0372560b6f84e45a847f2eb72cc9b6b4341` · SHA-256 `2bd9fd932ac12b65e46d89a2fb9721bfd00a2971d3f8e151aa330190ed108348`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Scott Carnahan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Carnahan
-/
module

public import Mathlib.LinearAlgebra.RootSystem.Hom
public import Mathlib.CategoryTheory.Category.Basic

/-!
# The category of root pairings

This file defines the category of root pairings, following the definition of category of root data
given in SGA III Exp. 21 Section 6.

## Main definitions:
* `RootPairingCat`: Objects are root pairings.

## TODO

* Forgetful functors
* Functions passing between module maps and root pairing homs

## Implementation details

This is mostly copied from `ModuleCat`.

-/

public section

open CategoryTheory

noncomputable section

universe v u

variable {R : Type u} [CommRing R]

/-- Objects in the category of root pairings. -/
structure RootPairingCat (R : Type u) [CommRing R] where
  /-- The weight space of a root pairing. -/
  weight : Type v
  [weightIsAddCommGroup : AddCommGroup weight]
  [weightIsModule : Module R weight]
  /-- The coweight space of a root pairing. -/
  coweight : Type v
  [coweightIsAddCommGroup : AddCommGroup coweight]
  [coweightIsModule : Module R coweight]
  /-- The set that indexes roots and coroots. -/
  index : Type v
  /-- The root pairing structure. -/
  pairing : RootPairing index R weight coweight

attribute [instance] RootPairingCat.weightIsAddCommGroup RootPairingCat.weightIsModule
attribute [instance] RootPairingCat.coweightIsAddCommGroup RootPairingCat.coweightIsModule

namespace RootPairingCat

instance category : Category.{v, max (v + 1) u} (RootPairingCat.{v} R) where
  Hom P Q := RootPairing.Hom P.pairing Q.pairing
  id P := RootPairing.Hom.id P.pairing
  comp f g := RootPairing.Hom.comp g f

end RootPairingCat
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c41265b8c8a521d05a86222f72ab1cb5662ade4c973a6f1cf37590c97d9e7b1f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RootPairingCat/Variant2bd9fd932ac12b65e46d89a2fb9721bfd00a2971d3f8e151aa330190ed108348.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
