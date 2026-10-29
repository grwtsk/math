# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.End.Variant30094bafe1d507689b6a57181dfbfde75a0f4ad2239441f3a00bbda8804ac6fd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `daa942466e892dbfaef6b03b55adfb66a060e7ee` · SHA-256 `30094bafe1d507689b6a57181dfbfde75a0f4ad2239441f3a00bbda8804ac6fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.CategoryTheory.Bicategory.Basic
import Mathlib.CategoryTheory.Monoidal.Category

/-!
# Endomorphisms of an object in a bicategory, as a monoidal category.
-/


namespace CategoryTheory

variable {C : Type*} [Bicategory C]

/-- The endomorphisms of an object in a bicategory can be considered as a monoidal category. -/
def EndMonoidal (X : C) :=
  X ⟶ X
-- The `Category` instance should be constructed by a deriving handler.
-- https://github.com/leanprover-community/mathlib4/issues/380

instance (X : C) : Category (EndMonoidal X) :=
  show Category (X ⟶ X) from inferInstance

instance (X : C) : Inhabited (EndMonoidal X) :=
  ⟨𝟙 X⟩

open Bicategory

open MonoidalCategory

open Bicategory

attribute [local simp] EndMonoidal in
instance (X : C) : MonoidalCategory (EndMonoidal X) where
  tensorObj f g := f ≫ g
  whiskerLeft {f _ _} η := f ◁ η
  whiskerRight {_ _} η h := η ▷ h
  tensorUnit := 𝟙 _
  associator f g h := α_ f g h
  leftUnitor f := λ_ f
  rightUnitor f := ρ_ f
  tensor_comp := by
    intros
    dsimp
    rw [Bicategory.whiskerLeft_comp, Bicategory.comp_whiskerRight, Category.assoc, Category.assoc,
      Bicategory.whisker_exchange_assoc]

end CategoryTheory
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=52a45471ec151f36af627b4386d79dd7d951aa0c84cc094ffee453a22fd93d34 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/End/Variant30094bafe1d507689b6a57181dfbfde75a0f4ad2239441f3a00bbda8804ac6fd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
