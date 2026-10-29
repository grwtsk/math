# Injective Object Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e5b6d283bfccba4f3f6541da6358f1c2b88bb47b` · SHA-256 `8aa4e2f97f749124507a39e4d5c96038feb367ee47b44fce5d252f61dc4629d4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Limits.FullSubcategory
public import Mathlib.CategoryTheory.Preadditive.Biproducts
public import Mathlib.CategoryTheory.Preadditive.Injective.Basic

/-!
# The full subcategory of injective objects

-/

public section

universe v u

namespace CategoryTheory

open Limits ZeroObject

variable (C : Type u) [Category.{v} C]

/-- The full subcategory of injective objects in a category `C`. -/
abbrev InjectiveObject : Type u := ObjectProperty.FullSubcategory (isInjective C)

namespace InjectiveObject

instance (J : Type*) :
    ObjectProperty.IsClosedUnderLimitsOfShape (isInjective C) (Discrete J) where
  limitsOfShape_le := by
    rintro Y ⟨p⟩
    have (j : J) : Injective (p.diag.obj ⟨j⟩) := p.prop_diag_obj _
    exact ⟨fun q i _ ↦ ⟨p.isLimit.lift (Cone.mk _
      (Discrete.natTrans (fun ⟨j⟩ ↦ (Injective.factorThru (q ≫ p.π.app ⟨j⟩) i :)))),
        p.isLimit.hom_ext (fun ⟨j⟩ ↦ by simp [p.isLimit.fac])⟩⟩

instance [HasFiniteProducts C] : HasFiniteProducts (InjectiveObject C) where
  out _ := inferInstance

instance [Preadditive C] [HasFiniteProducts C] : HasFiniteBiproducts (InjectiveObject C) :=
  HasFiniteBiproducts.of_hasFiniteProducts

instance [Preadditive C] [HasBinaryBiproducts C] : HasBinaryBiproducts (InjectiveObject C) :=
  HasBinaryBiproducts.of_hasBinaryProducts

instance [HasZeroMorphisms C] [HasZeroObject C] : (isInjective C).ContainsZero where
  exists_zero := ⟨0, by simp [IsZero.iff_id_eq_zero], Injective.zero_injective⟩

/-- The inclusion `InjectiveObject C ⥤ C` of the full subcategory of
injective objects in `C`. -/
abbrev ι : InjectiveObject C ⥤ C := ObjectProperty.ι _

instance (X : InjectiveObject C) : Injective ((ι C).obj X) := X.2

instance (X : InjectiveObject C) : Injective X.obj := X.2

end InjectiveObject

end CategoryTheory
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dafb3f0b337091b800ba6bf73dbf9fc64945b2971d71d9df01decbc0ec0c0675 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InjectiveObject/Variant8aa4e2f97f749124507a39e4d5c96038feb367ee47b44fce5d252f61dc4629d4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
