# Model Category Basic — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3792ed8674c489f86c0fd0a258c6fcba368cc1a6` · SHA-256 `026ca3f5b57a6f94e3f1444f68616ee79a65baffc20256cb5c3132b6c4517d94`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Limits.Shapes.FiniteLimits
import Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts
import Mathlib.CategoryTheory.MorphismProperty.Composition
import Mathlib.CategoryTheory.MorphismProperty.Factorization
import Mathlib.CategoryTheory.MorphismProperty.Retract
import Mathlib.AlgebraicTopology.ModelCategory.CategoryWithCofibrations

/-!
# Model categories

We introduce a typeclass `ModelCategory C` expressing that `C` is equipped with
classes of morphisms named "fibrations", "cofibrations" and "weak equivalences"
with satisfy the axioms of (closed) model categories.

As a given category `C` may have several model category structures, it is advisable
to define only local instances of `ModelCategory`, or to set these instances on type synonyms.

## References
* [Daniel G. Quillen, Homotopical algebra][Quillen1967]
* [Paul G. Goerss, John F. Jardine, Simplicial Homotopy Theory][goerss-jardine-2009]

-/

universe v u

namespace HomotopicalAlgebra

open CategoryTheory Limits

variable (C : Type u) [Category.{v} C]

/-- A model category is a category equipped with classes of morphisms named cofibrations,
fibrations and weak equivalences which satisfies the axioms CM1/CM2/CM3/CM4/CM5
of (closed) model categories. -/
class ModelCategory where
  categoryWithFibrations : CategoryWithFibrations C := by infer_instance
  categoryWithCofibrations : CategoryWithCofibrations C := by infer_instance
  categoryWithWeakEquivalences : CategoryWithWeakEquivalences C := by infer_instance
  cm1a : HasFiniteLimits C := by infer_instance
  cm1b : HasFiniteColimits C := by infer_instance
  cm2 : (weakEquivalences C).HasTwoOutOfThreeProperty := by infer_instance
  cm3a : (weakEquivalences C).IsStableUnderRetracts := by infer_instance
  cm3b : (fibrations C).IsStableUnderRetracts := by infer_instance
  cm3c : (cofibrations C).IsStableUnderRetracts := by infer_instance
  cm4a {A B X Y : C} (i : A ⟶ B) (p : X ⟶ Y) [Cofibration i] [WeakEquivalence i] [Fibration p] :
      HasLiftingProperty i p := by intros; infer_instance
  cm4b {A B X Y : C} (i : A ⟶ B) (p : X ⟶ Y) [Cofibration i] [Fibration p] [WeakEquivalence p] :
      HasLiftingProperty i p := by intros; infer_instance
  cm5a : MorphismProperty.HasFactorization (trivialCofibrations C) (fibrations C) := by
    infer_instance
  cm5b : MorphismProperty.HasFactorization (cofibrations C) (trivialFibrations C) := by
    infer_instance

namespace ModelCategory

attribute [instance] categoryWithFibrations categoryWithCofibrations categoryWithWeakEquivalences
  cm1a cm1b cm2 cm3a cm3b cm3c cm4a cm4b cm5a cm5b

end ModelCategory

end HomotopicalAlgebra
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ecd55af8f4b1b466376a007263a33bc48a684fd1fe22584b1b7e10547b9c141 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant026ca3f5b57a6f94e3f1444f68616ee79a65baffc20256cb5c3132b6c4517d94.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
