# Preserves Cardinal Presentable Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b5b61483268739b4b3f8b1442ac0643da83216d` · SHA-256 `8ba1bcc1e7b38a8db305c423cf2ccc496105bd900f2953332ed572f0f66d883d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Presentable.Basic

/-!
# Functors which preserve `κ`-presentable objects

-/

@[expose] public section

universe w

namespace CategoryTheory.Functor

variable {C D E : Type*} [Category* C] [Category* D] [Category* E]

/-- Let `F : C ⥤ D` be a functor and `κ` be a regular cardinal, we say
that `F.PreservesCardinalPresentable κ` holds if for any `X : C`
that is `κ`-presentable in `C`, the object `F.obj X` is `κ`-presentable in `D`. -/
class PreservesCardinalPresentable
    (F : C ⥤ D) (κ : Cardinal.{w}) [Fact κ.IsRegular] : Prop where
  le_inverseImage_isCardinalPresentable (F κ) :
    isCardinalPresentable C κ ≤ (isCardinalPresentable D κ).inverseImage F

export PreservesCardinalPresentable (le_inverseImage_isCardinalPresentable)

instance (F : C ⥤ D) (κ : Cardinal.{w}) [Fact κ.IsRegular] (X : C)
    [IsCardinalPresentable X κ] [F.PreservesCardinalPresentable κ] :
    IsCardinalPresentable (F.obj X) κ :=
  le_inverseImage_isCardinalPresentable F κ _ (by assumption)

instance (κ : Cardinal.{w}) [Fact κ.IsRegular] :
    (𝟭 C).PreservesCardinalPresentable κ where
  le_inverseImage_isCardinalPresentable := by rfl

instance (F : C ⥤ D) (G : D ⥤ E) (κ : Cardinal.{w}) [Fact κ.IsRegular]
    [F.PreservesCardinalPresentable κ] [G.PreservesCardinalPresentable κ] :
    (F ⋙ G).PreservesCardinalPresentable κ where
  le_inverseImage_isCardinalPresentable X hX := by
    simp only [ObjectProperty.prop_inverseImage_iff, comp_obj]
    infer_instance

lemma PreservesCardinalPresentable.of_iso {F G : C ⥤ D} (e : F ≅ G)
    (κ : Cardinal.{w}) [Fact κ.IsRegular] [F.PreservesCardinalPresentable κ] :
    G.PreservesCardinalPresentable κ where
  le_inverseImage_isCardinalPresentable X _ :=
    isCardinalPresentable_of_iso (e.app X) κ

lemma PreservesCardinalPresentable.iff_of_iso {F G : C ⥤ D} (e : F ≅ G)
    (κ : Cardinal.{w}) [Fact κ.IsRegular] :
    F.PreservesCardinalPresentable κ ↔ G.PreservesCardinalPresentable κ :=
  ⟨fun _ ↦ .of_iso e _, fun _ ↦ .of_iso e.symm _⟩

end CategoryTheory.Functor
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0cf976a36778096b05326bcc598380a4b4c08a6ffdc255381dc36ff93cb8db38 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesCardinalPresentable/Variant8ba1bcc1e7b38a8db305c423cf2ccc496105bd900f2953332ed572f0f66d883d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
