# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Subobject.Variantd0bfd550a4afce64be614869cbc757d707b609fa65ed56be938098f289e9e3c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7d962bd17bbdd7d07df242815058e111fab86621` · SHA-256 `d0bfd550a4afce64be614869cbc757d707b609fa65ed56be938098f289e9e3c3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Subpresheaf.Image
import Mathlib.CategoryTheory.Subobject.Basic

/-!
# Comparison between `Subpresheaf`, `MonoOver` and `Subobject`

Given a presheaf of types `F : Cᵒᵖ ⥤ Type w`, we define an equivalence
of categories `Subpresheaf.equivalenceMonoOver F : Subpresheaf F ≌ MonoOver F`
and an order isomorphism `Subpresheaf.orderIsoSubject F : Subpresheaf F ≃o Subobject F`.

-/

universe w v u

namespace CategoryTheory

variable {C : Type u} [Category.{v} C] (F : Cᵒᵖ ⥤ Type w)

namespace Subpresheaf

/-- The equivalence of categories `Subpresheaf F ≌ MonoOver F`. -/
@[simps]
noncomputable def equivalenceMonoOver : Subpresheaf F ≌ MonoOver F where
  functor :=
    { obj A := MonoOver.mk' A.ι
      map {A B} f := MonoOver.homMk (Subpresheaf.homOfLe (leOfHom f)) }
  inverse :=
    { obj X := Subpresheaf.range X.arrow
      map {X Y} f := homOfLE (by
        dsimp
        rw [← MonoOver.w f]
        apply range_comp_le ) }
  unitIso := NatIso.ofComponents (fun A ↦ eqToIso (by simp))
  counitIso := NatIso.ofComponents
    (fun X ↦ MonoOver.isoMk ((asIso (toRange X.arrow)).symm))

variable {F} in
@[simp]
lemma range_subobjectMk_ι (A : Subpresheaf F) :
    range (Subobject.mk A.ι).arrow = A :=
  (((equivalenceMonoOver F).trans
    (ThinSkeleton.equivalence _).symm).unitIso.app A).to_eq.symm

variable {F} in
@[simp]
lemma subobjectMk_range_arrow (X : Subobject F) :
    Subobject.mk (range X.arrow).ι = X :=
  (((equivalenceMonoOver F).trans
    (ThinSkeleton.equivalence _).symm).counitIso.app X).to_eq

/-- The order isomorphism `Subpresheaf F ≃o MonoOver F`. -/
@[simps]
noncomputable def orderIsoSubobject : Subpresheaf F ≃o Subobject F where
  toFun A := Subobject.mk A.ι
  invFun X := Subpresheaf.range X.arrow
  left_inv A := by simp
  right_inv X := by simp
  map_rel_iff' {A B} := by
    constructor
    · intro h
      have : range (Subobject.mk A.ι).arrow ≤ range (Subobject.mk B.ι).arrow :=
        leOfHom (((equivalenceMonoOver F).trans
          (ThinSkeleton.equivalence _).symm).inverse.map (homOfLE h))
      simpa using this
    · intro h
      exact leOfHom (((equivalenceMonoOver F).trans
        (ThinSkeleton.equivalence _).symm).functor.map (homOfLE h))

end Subpresheaf

end CategoryTheory
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6512ca320b8e4868663dc0977a4d801a7d6521a7a6b415e178d5d67e9d304c40 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variantd0bfd550a4afce64be614869cbc757d707b609fa65ed56be938098f289e9e3c3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
