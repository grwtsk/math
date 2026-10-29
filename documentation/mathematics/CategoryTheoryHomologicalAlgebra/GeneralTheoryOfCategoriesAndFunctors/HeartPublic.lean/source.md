# Heart Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a9811e67458c62c5d157471de9689f307982d74` · SHA-256 `c54f17b81393dd4cf5264288308547d28cc2fba3e940b28c962d844e3296442c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Triangulated.TStructure.Basic

/-!
# The heart of a t-structure

Let `t` be a t-structure on a triangulated category `C`. We define
the heart of `t` as a property `t.heart : ObjectProperty C`. As the
the heart is usually identified to a particular category in the applications
(e.g. the heart of the canonical t-structure on the derived category of
an abelian category `A` identifies to `A`), instead of working
with the full subcategory defined by `t.heart`, we introduce a typeclass
`t.Heart H` which says that the additive category `H` identifies to
the full subcategory `t.heart`.

## TODO (@joelriou)
* Show that the heart is an abelian category.

## References
* [Beilinson, Bernstein, Deligne, Gabber, *Faisceaux pervers*][bbd-1982]

-/

@[expose] public section

universe v' u' v u

namespace CategoryTheory.Triangulated.TStructure

open Pretriangulated Limits

variable {C : Type u} [Category.{v} C] [Preadditive C] [HasZeroObject C] [HasShift C ℤ]
  [∀ (n : ℤ), (shiftFunctor C n).Additive] [Pretriangulated C]
  (t : TStructure C)

/-- The heart of a t-structure, as the property of objects
that are both `≤ 0` and `≥ 0`. -/
def heart : ObjectProperty C := t.le 0 ⊓ t.ge 0
  deriving ObjectProperty.IsClosedUnderIsomorphisms

lemma mem_heart_iff (X : C) :
    t.heart X ↔ t.IsLE X 0 ∧ t.IsGE X 0 := by
  simp [heart]

variable (H : Type u') [Category.{v'} H] [Preadditive H]

/-- Given `t : TStructure C` and a preadditive category `H`, this typeclass
contains the data of a fully faithful additive functor `H ⥤ C` which identifies
`H` to the full subcategory of `C` consisting of the objects satisfying
the property `t.heart`. -/
class Heart where
  /-- The inclusion functor. -/
  ι : H ⥤ C
  additive_ι : ι.Additive := by infer_instance
  full_ι : ι.Full := by infer_instance
  faithful_ι : ι.Faithful := by infer_instance
  essImage_eq_heart : ι.essImage = t.heart := by simp

/-- Unless a better candidate category is available, the full subcategory
of objects satisfying `t.heart` can be chosen as the heart of a t-structure `t`. -/
@[instance_reducible]
def hasHeartFullSubcategory : t.Heart t.heart.FullSubcategory where
  ι := t.heart.ι
  essImage_eq_heart := by
    ext X
    exact ⟨fun ⟨⟨Y, hY⟩, ⟨e⟩⟩ ↦ t.heart.prop_of_iso e hY,
      fun hX ↦ ⟨⟨X, hX⟩, ⟨Iso.refl _⟩⟩⟩

variable [t.Heart H]

variable {H} in
/-- The inclusion `H ⥤ C` when `H` is the heart of a t-structure `t` on `C`. -/
def ιHeart : H ⥤ C := Heart.ι t

instance : (t.ιHeart (H := H)).Additive := Heart.additive_ι
instance : (t.ιHeart (H := H)).Full := Heart.full_ι
instance : (t.ιHeart (H := H)).Faithful := Heart.faithful_ι

@[simp]
lemma essImage_ιHeart :
    (t.ιHeart (H := H)).essImage = t.heart :=
  Heart.essImage_eq_heart

variable {H} in
lemma ιHeart_obj_mem (X : H) : t.heart (t.ιHeart.obj X) := by
  rw [← t.essImage_ιHeart H]
  exact t.ιHeart.obj_mem_essImage X

instance (X : H) : t.IsLE (t.ιHeart.obj X) 0 :=
  ⟨(t.ιHeart_obj_mem X).1⟩

instance (X : H) : t.IsGE (t.ιHeart.obj X) 0 :=
  ⟨(t.ιHeart_obj_mem X).2⟩

end CategoryTheory.Triangulated.TStructure
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3ea10451ac44f6b6c8a0b87562dfe8addef10b602d493ed8e864133147ed0e89 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Heart/Variantc54f17b81393dd4cf5264288308547d28cc2fba3e940b28c962d844e3296442c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
