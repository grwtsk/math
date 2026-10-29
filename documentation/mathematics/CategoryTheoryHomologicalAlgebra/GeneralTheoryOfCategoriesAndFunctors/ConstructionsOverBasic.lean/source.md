# Constructions Over Basic — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7fb987f4c87d4aa1c18b8f789aab5d9d4edff462` · SHA-256 `9f51417b4ea242d2e4c4dc3b1db091fccd1eb82e6c9ef3cda3c1242227e3211b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin, Reid Barton, Bhavik Mehta
-/
import Mathlib.CategoryTheory.Limits.Connected
import Mathlib.CategoryTheory.Limits.Constructions.Over.Products
import Mathlib.CategoryTheory.Limits.Constructions.Over.Connected
import Mathlib.CategoryTheory.Limits.Constructions.LimitsOfProductsAndEqualizers
import Mathlib.CategoryTheory.Limits.Constructions.Equalizers

/-!
# Limits in the over category

Declare instances for limits in the over category: If `C` has finite wide pullbacks, `Over B` has
finite limits, and if `C` has arbitrary wide pullbacks then `Over B` has limits.
-/


universe w v u

-- morphism levels before object levels. See note [category_theory universes].
open CategoryTheory CategoryTheory.Limits

variable {C : Type u} [Category.{v} C]
variable {X : C}

namespace CategoryTheory.Over

/-- Make sure we can derive pullbacks in `Over B`. -/
instance {B : C} [HasPullbacks C] : HasPullbacks (Over B) := by
  letI : HasLimitsOfShape (ULiftHom.{v} (ULift.{v} WalkingCospan)) C :=
    hasLimitsOfShape_of_equivalence (ULiftHomULiftCategory.equiv.{v} _)
  letI : Category (ULiftHom.{v} (ULift.{v} WalkingCospan)) := inferInstance
  exact hasLimitsOfShape_of_equivalence (ULiftHomULiftCategory.equiv.{v, v} _).symm

/-- Make sure we can derive equalizers in `Over B`. -/
instance {B : C} [HasEqualizers C] : HasEqualizers (Over B) := by
  letI : HasLimitsOfShape (ULiftHom.{v} (ULift.{v} WalkingParallelPair)) C :=
    hasLimitsOfShape_of_equivalence (ULiftHomULiftCategory.equiv.{v} _)
  letI : Category (ULiftHom.{v} (ULift.{v} WalkingParallelPair)) := inferInstance
  exact hasLimitsOfShape_of_equivalence (ULiftHomULiftCategory.equiv.{v, v} _).symm

instance hasFiniteLimits {B : C} [HasFiniteWidePullbacks C] : HasFiniteLimits (Over B) := by
  apply @hasFiniteLimits_of_hasEqualizers_and_finite_products _ _ ?_ ?_
  · exact ConstructProducts.over_finiteProducts_of_finiteWidePullbacks
  · apply @hasEqualizers_of_hasPullbacks_and_binary_products _ _ ?_ _
    haveI : HasPullbacks C := ⟨inferInstance⟩
    exact ConstructProducts.over_binaryProduct_of_pullback

instance hasLimits {B : C} [HasWidePullbacks.{w} C] : HasLimitsOfSize.{w, w} (Over B) := by
  apply @has_limits_of_hasEqualizers_and_products _ _ ?_ ?_
  · exact ConstructProducts.over_products_of_widePullbacks
  · apply @hasEqualizers_of_hasPullbacks_and_binary_products _ _ ?_ _
    haveI : HasPullbacks C := ⟨inferInstance⟩
    exact ConstructProducts.over_binaryProduct_of_pullback

end CategoryTheory.Over
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=993f3281f1dfb56a55f22c1dbd83f97980ee93da67e3782fa8af60f9158484be -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9f51417b4ea242d2e4c4dc3b1db091fccd1eb82e6c9ef3cda3c1242227e3211b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
