# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorToTypes.Variant43093a3181e26df359a783c4f81f95985d57ecbcb238870d357cbabbf9d581db

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0894288e90b8bc96448e239b3dc395dc4899af65` · SHA-256 `43093a3181e26df359a783c4f81f95985d57ecbcb238870d357cbabbf9d581db`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jack McKoen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jack McKoen
-/
module

public import Mathlib.CategoryTheory.Functor.FunctorHom
public import Mathlib.CategoryTheory.Monoidal.Closed.Basic

/-!
# Functors to Type are closed.

Show that `C ⥤ Type max w v u` is monoidal closed for `C` a category in `Type u` with morphisms in
`Type v`, and `w` an arbitrary universe.

## TODO
It should be shown that `C ⥤ Type max w v u` is Cartesian closed.

-/

@[expose] public section


universe w v' v u u'

open CategoryTheory Functor MonoidalCategory

namespace CategoryTheory.FunctorToTypes

variable {C : Type u} [Category.{v} C]

variable (F : C ⥤ Type (max w v u))

/-- When `F G H : C ⥤ Type max w v u`, we have `(G ⟶ F.functorHom H) ≃ (F ⊗ G ⟶ H)`. -/
@[simps! apply_app symm_apply_app]
def functorHomEquiv (G H : C ⥤ Type (max w v u)) : (G ⟶ F.functorHom H) ≃ (F ⊗ G ⟶ H) :=
  (Functor.functorHomEquiv F H G).trans (homObjEquiv F H G)

set_option backward.defeqAttrib.useBackward true in
/-- A right adjoint of `tensorLeft F`. -/
@[simps! obj_obj obj_map map_app]
def rightAdj : (C ⥤ Type (max w v u)) ⥤ C ⥤ Type (max w v u) where
  obj G := F.functorHom G
  map f := { app X := ↾fun a ↦ {
    app d b := a.app d b ≫ f.app d
    naturality g h := by
      have := a.naturality g h
      change (F.map g ≫ a.app _ (h ≫ g)) ≫ _ = _
      aesop  }}

@[deprecated "Use `(rightAdj F).map instead" (since := "2026-04-08")] alias rightAdj_map := rightAdj

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
attribute [local simp] types_tensorObj_def in
/-- The adjunction `tensorLeft F ⊣ rightAdj F`. -/
def adj : tensorLeft F ⊣ rightAdj F where
  unit := {
    app := fun G ↦ (functorHomEquiv F G _).2 (𝟙 _)
    naturality := fun G H f ↦ by
      ext
      dsimp
      ext
      apply Prod.ext
      · rfl
      · simp }
  counit := { app := fun G ↦ functorHomEquiv F _ G (𝟙 _) }

instance closed : Closed F where
  rightAdj := rightAdj F
  adj := adj F

instance monoidalClosed : MonoidalClosed (C ⥤ Type (max w v u)) where

end CategoryTheory.FunctorToTypes
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=820221b7202bddcbdb3fb992162aa305f7a6ec8322a9edf4e11fd0387402aa08 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variant43093a3181e26df359a783c4f81f95985d57ecbcb238870d357cbabbf9d581db.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
