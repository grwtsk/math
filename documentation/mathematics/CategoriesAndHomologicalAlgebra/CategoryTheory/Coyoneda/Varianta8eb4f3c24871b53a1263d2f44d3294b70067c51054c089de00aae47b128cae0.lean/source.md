# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Coyoneda.Varianta8eb4f3c24871b53a1263d2f44d3294b70067c51054c089de00aae47b128cae0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2dc8f758d3fa5792de1ebbd102dbbf7985c0ec0c` · SHA-256 `a8eb4f3c24871b53a1263d2f44d3294b70067c51054c089de00aae47b128cae0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Michael Jendrusch. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Jendrusch, Kim Morrison
-/
module

public import Mathlib.CategoryTheory.Monoidal.Types.Basic
public import Mathlib.CategoryTheory.Monoidal.CoherenceLemmas

/-!
# `(𝟙_ C ⟶ -)` is a lax monoidal functor to `Type`
-/

public section

universe v u

namespace CategoryTheory

open Opposite MonoidalCategory

set_option backward.defeqAttrib.useBackward true in
attribute [local simp] types_tensorObj_def types_tensorUnit_def in
instance (C : Type u) [Category.{v} C] [MonoidalCategory C] :
    (coyoneda.obj (op (𝟙_ C))).LaxMonoidal :=
  Functor.LaxMonoidal.ofTensorHom
    (ε := ↾fun _ ↦ 𝟙 _)
    (μ := fun X Y ↦ ↾fun p ↦ (λ_ (𝟙_ C)).inv ≫ (p.1 ⊗ₘ p.2))
    (μ_natural := by cat_disch)
    (associativity := fun X Y Z => by
      ext ⟨⟨f, g⟩, h⟩; dsimp at f g h
      dsimp; simp only [Category.assoc, Iso.cancel_iso_inv_left]
      conv_lhs =>
        rw [← Category.id_comp h, ← tensorHom_comp_tensorHom, Category.assoc, associator_naturality,
          ← Category.assoc, unitors_inv_equal, tensorHom_id, triangle_assoc_comp_right_inv]
      conv_rhs => rw [← Category.id_comp f, ← tensorHom_comp_tensorHom]
      simp)
    (right_unitality := fun X => by
      ext ⟨f, ⟨⟩⟩
      simp [unitors_inv_equal])

end CategoryTheory
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c8ced570824dd95ab833fc6e61c620aba5b56f01ea01d6c57869522cedd02eb0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coyoneda/Varianta8eb4f3c24871b53a1263d2f44d3294b70067c51054c089de00aae47b128cae0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
