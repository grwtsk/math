# Category Theory Closed Functor To Types — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `afa80ec6bf669b44596c3560e20750c10d29ba82` · SHA-256 `1775f5d4525341d6aa0ad7b1518521ee5ea30b4593d181d6b0510195116246a2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jack McKoen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jack McKoen
-/
import Mathlib.CategoryTheory.Functor.FunctorHom
import Mathlib.CategoryTheory.Closed.Monoidal

/-!
# Functors to Type are closed.

Show that `C ⥤ Type max w v u` is monoidal closed for `C` a category in `Type u` with morphisms in
`Type v`, and `w` an arbitrary universe.

## TODO
It should be shown that `C ⥤ Type max w v u` is cartesian closed.

-/


universe w v' v u u'

open CategoryTheory Functor MonoidalCategory

namespace CategoryTheory.FunctorToTypes

variable {C : Type u} [Category.{v} C] {D : Type u'} [Category.{v'} D]

variable (F : C ⥤ Type max w v u)

/-- When `F G H : C ⥤ Type max w v u`, we have `(G ⟶ F.functorHom H) ≃ (F ⊗ G ⟶ H)`. -/
@[simps!]
def functorHomEquiv (G H : C ⥤ Type max w v u) : (G ⟶ F.functorHom H) ≃ (F ⊗ G ⟶ H) :=
  (Functor.functorHomEquiv F H G).trans (homObjEquiv F H G)

/-- Given a morphism `f : G ⟶ H`, an object `c : C`, and an element of `(F.functorHom G).obj c`,
construct an element of `(F.functorHom H).obj c`. -/
@[simps]
def rightAdj_map {F G H : C ⥤ Type max w v u} (f : G ⟶ H) (c : C) (a : (F.functorHom G).obj c) :
    (F.functorHom H).obj c where
  app d b := a.app d b ≫ f.app d
  naturality g h := by
    have := a.naturality g h
    change (F.map g ≫ a.app _ (h ≫ g)) ≫ _ = _
    aesop

/-- A right adjoint of `tensorLeft F`. -/
@[simps!]
def rightAdj : (C ⥤ Type max w v u) ⥤ C ⥤ Type max w v u where
  obj G := F.functorHom G
  map f := { app := rightAdj_map f }

/-- The adjunction `tensorLeft F ⊣ rightAdj F`. -/
def adj : tensorLeft F ⊣ rightAdj F where
  unit := {
    app := fun G ↦ (functorHomEquiv F G _).2 (𝟙 _)
    naturality := fun G H f ↦ by
      dsimp [rightAdj]
      ext _
      simp [FunctorToTypes.naturality] }
  counit := { app := fun G ↦ functorHomEquiv F _ G (𝟙 _) }

instance closed : Closed F where
  rightAdj := rightAdj F
  adj := adj F

instance monoidalClosed : MonoidalClosed (C ⥤ Type max w v u) where

end CategoryTheory.FunctorToTypes
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=430cc98cbd88cb3e7c47af84069ba1a5f0d482a61ff6042b9c73791cd4799eff -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variant1775f5d4525341d6aa0ad7b1518521ee5ea30b4593d181d6b0510195116246a2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
