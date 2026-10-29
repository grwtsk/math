# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Images.Variantd00cd00ae8deacc8b2110e9a95ce23f701c70d0d9f36183b659978c359fcc92f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4de7d55beb90388f0ae3a6f17a04826283d515c` · SHA-256 `d00cd00ae8deacc8b2110e9a95ce23f701c70d0d9f36183b659978c359fcc92f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
module

public import Mathlib.CategoryTheory.Limits.Shapes.Images
public import Mathlib.CategoryTheory.Subfunctor.Image
public import Mathlib.Tactic.CategoryTheory.CategoryStar

/-!

# The category of type-valued functors has images
-/

@[expose] public section

universe u

namespace CategoryTheory.FunctorToTypes

open Limits

variable {C : Type*} [Category* C]

/-- The image of a natural transformation between type-valued functors is a `MonoFactorisation` -/
@[simps]
def monoFactorisation {F G : C ⥤ Type u} (f : F ⟶ G) : MonoFactorisation f where
  I := (Subfunctor.range f).toFunctor
  m := (Subfunctor.range f).ι
  e := Subfunctor.toRange f

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
/-- The image of a natural transformation between type-valued functors satisfies the universal
property of images -/
noncomputable def monoFactorisationIsImage {F G : C ⥤ Type u} (f : F ⟶ G) :
    IsImage <| monoFactorisation f where
  lift H := {
    app X := ↾fun ⟨x, hx⟩ ↦ H.e.app _ hx.choose
    naturality X Y g := by
      ext
      apply injective_of_mono (H.m.app Y)
      simp
      grind }
  lift_fac H := by
    ext
    simp
    grind

instance : HasImages (C ⥤ Type*) where
  has_image f := { exists_image := ⟨ { F := _, isImage := monoFactorisationIsImage f } ⟩ }

instance : HasStrongEpiMonoFactorisations (C ⥤ Type*) where
  has_fac {F G} f := ⟨{ I := image f, m := image.ι f, e := factorThruImage f }⟩

end CategoryTheory.FunctorToTypes
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9418c3b4a1d06ebb7c93861c1f221b36f3b0cfe2ad8bd5db829cf0985cd75b2e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variantd00cd00ae8deacc8b2110e9a95ce23f701c70d0d9f36183b659978c359fcc92f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
