# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LocallySmall.Variantad987d7d0c5f089dbf1c2c2aa01e4a7d8e43b955c23fa8565fe97d7c8a5b2162

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3169d9f7eb7808c9aa6c1d9ffc4ba7a81c978880` · SHA-256 `ad987d7d0c5f089dbf1c2c2aa01e4a7d8e43b955c23fa8565fe97d7c8a5b2162`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/

import Mathlib.CategoryTheory.Comma.StructuredArrow.Basic
import Mathlib.CategoryTheory.Comma.Over.Basic
import Mathlib.CategoryTheory.EssentiallySmall

/-!
# Comma categories are locally small

We introduce instances showing that the various comma categories
are locally small when the relevant categories that are
involved are locally small.

-/

universe w v₁ v₂ v₃ u₁ u₂ u₃

namespace CategoryTheory

variable {A : Type u₁} {B : Type u₂} {T : Type u₃}
  [Category.{v₁} A] [Category.{v₂} B] [Category.{v₃} T]

instance Comma.locallySmall
    (L : A ⥤ T) (R : B ⥤ T) [LocallySmall.{w} A] [LocallySmall.{w} B] :
    LocallySmall.{w} (Comma L R) where
  hom_small X Y := small_of_injective.{w}
      (f := fun g ↦ (⟨g.left, g.right⟩ : _ × _))
        (fun _ _ _ ↦ by aesop)

instance StructuredArrow.locallySmall (S : T) (T : B ⥤ T)
    [LocallySmall.{w} B] :
    LocallySmall.{w} (StructuredArrow S T) :=
  Comma.locallySmall _ _

instance CostructuredArrow.locallySmall (S : A ⥤ T) (X : T)
    [LocallySmall.{w} A] :
    LocallySmall.{w} (CostructuredArrow S X) :=
  Comma.locallySmall _ _

instance Over.locallySmall (X : T) [LocallySmall.{w} T] :
    LocallySmall.{w} (Over X) :=
  CostructuredArrow.locallySmall _ _

instance Under.locallySmall (X : T) [LocallySmall.{w} T] :
    LocallySmall.{w} (Under X) :=
  StructuredArrow.locallySmall _ _

end CategoryTheory
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=48f4cc6955ba6916e899aaf3f8c47ade9fad767bf2c3c747ff32b3ace7a1f5ed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySmall/Variantad987d7d0c5f089dbf1c2c2aa01e4a7d8e43b955c23fa8565fe97d7c8a5b2162.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
