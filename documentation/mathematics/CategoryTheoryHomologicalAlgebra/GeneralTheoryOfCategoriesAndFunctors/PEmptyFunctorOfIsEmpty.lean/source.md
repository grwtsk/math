# PEmpty Functor Of Is Empty — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e3da73d3907e8e93248a8989109c912ecf5a8038` · SHA-256 `1710432b1633cdc701d37769875c9b38d5d10c7c1f104b36e62e03044780ebd8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Bhavik Mehta
-/
import Mathlib.CategoryTheory.Discrete.Basic

/-!
# The empty category

Defines a category structure on `PEmpty`, and the unique functor `PEmpty ⥤ C` for any category `C`.
-/

universe w v v' u u'
-- morphism levels before object levels. See note [CategoryTheory universes].
namespace CategoryTheory

variable (C : Type u) [Category.{v} C] (D : Type u') [Category.{v'} D]

instance (α : Type*) [IsEmpty α] : IsEmpty (Discrete α) := Function.isEmpty Discrete.as

/-- The (unique) functor from an empty category. -/
def functorOfIsEmpty [IsEmpty C] : C ⥤ D where
  obj := isEmptyElim
  map := fun {X} ↦ isEmptyElim X
  map_id := fun {X} ↦ isEmptyElim X
  map_comp := fun {X} ↦ isEmptyElim X

variable {C D}

/-- Any two functors out of an empty category are isomorphic. -/
def Functor.isEmptyExt [IsEmpty C] (F G : C ⥤ D) : F ≅ G :=
  NatIso.ofComponents isEmptyElim (fun {X} ↦ isEmptyElim X)

variable (C D)

/-- The equivalence between two empty categories. -/
def equivalenceOfIsEmpty [IsEmpty C] [IsEmpty D] : C ≌ D where
  functor := functorOfIsEmpty C D
  inverse := functorOfIsEmpty D C
  unitIso := Functor.isEmptyExt _ _
  counitIso := Functor.isEmptyExt _ _
  functor_unitIso_comp := isEmptyElim

/-- Equivalence between two empty categories. -/
def emptyEquivalence : Discrete.{w} PEmpty ≌ Discrete.{v} PEmpty := equivalenceOfIsEmpty _ _

namespace Functor

/-- The canonical functor out of the empty category. -/
def empty : Discrete.{w} PEmpty ⥤ C :=
  Discrete.functor PEmpty.elim

variable {C}

/-- Any two functors out of the empty category are isomorphic. -/
def emptyExt (F G : Discrete.{w} PEmpty ⥤ C) : F ≅ G :=
  Discrete.natIso fun x => x.as.elim

/-- Any functor out of the empty category is isomorphic to the canonical functor from the empty
category.
-/
def uniqueFromEmpty (F : Discrete.{w} PEmpty ⥤ C) : F ≅ empty C :=
  emptyExt _ _

/-- Any two functors out of the empty category are *equal*. You probably want to use
`emptyExt` instead of this.
-/
theorem empty_ext' (F G : Discrete.{w} PEmpty ⥤ C) : F = G :=
  Functor.ext (fun x => x.as.elim) fun x _ _ => x.as.elim

end Functor

end CategoryTheory
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d059e1fe445cc17f15452e863016415159329d881dc349af89973d3297340622 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PEmpty/Variant1710432b1633cdc701d37769875c9b38d5d10c7c1f104b36e62e03044780ebd8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
