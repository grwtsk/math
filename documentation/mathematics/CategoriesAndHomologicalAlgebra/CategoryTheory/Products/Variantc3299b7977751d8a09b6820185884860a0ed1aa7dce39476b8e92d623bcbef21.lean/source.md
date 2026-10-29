# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Products.Variantc3299b7977751d8a09b6820185884860a0ed1aa7dce39476b8e92d623bcbef21

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fbd0d2346f4b5260ea3622cc4896b0dde83c8d18` · SHA-256 `c3299b7977751d8a09b6820185884860a0ed1aa7dce39476b8e92d623bcbef21`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

public import Mathlib.CategoryTheory.Limits.FunctorCategory.Basic
public import Mathlib.CategoryTheory.Limits.Shapes.Products

/-!
# (Co)products in functor categories

Given `f : α → D ⥤ C`, we prove the isomorphisms
`(∏ᶜ f).obj d ≅ ∏ᶜ (fun s => (f s).obj d)` and `(∐ f).obj d ≅ ∐ (fun s => (f s).obj d)`.

-/

@[expose] public section

universe w v v₁ v₂ u u₁ u₂

namespace CategoryTheory.Limits

variable {C : Type u} [Category.{v} C] {D : Type u₁} [Category.{v₁} D]
  {α : Type w}

section Product

variable [HasLimitsOfShape (Discrete α) C]

/-- Evaluating a product of functors amounts to taking the product of the evaluations. -/
noncomputable def piObjIso (f : α → D ⥤ C) (d : D) : (∏ᶜ f).obj d ≅ ∏ᶜ (fun s => (f s).obj d) :=
  limitObjIsoLimitCompEvaluation (Discrete.functor f) d ≪≫
    HasLimit.isoOfNatIso (Discrete.compNatIsoDiscrete _ _)

set_option backward.defeqAttrib.useBackward true in
@[reassoc (attr := simp)]
theorem piObjIso_hom_comp_π (f : α → D ⥤ C) (d : D) (s : α) :
    (piObjIso f d).hom ≫ Pi.π (fun s => (f s).obj d) s = (Pi.π f s).app d := by
  simp [piObjIso]

set_option backward.defeqAttrib.useBackward true in
@[reassoc (attr := simp)]
theorem piObjIso_inv_comp_π (f : α → D ⥤ C) (d : D) (s : α) :
    (piObjIso f d).inv ≫ (Pi.π f s).app d = Pi.π (fun s => (f s).obj d) s := by
  simp [piObjIso]

end Product

section Coproduct

variable [HasColimitsOfShape (Discrete α) C]

/-- Evaluating a coproduct of functors amounts to taking the coproduct of the evaluations. -/
noncomputable def sigmaObjIso (f : α → D ⥤ C) (d : D) : (∐ f).obj d ≅ ∐ (fun s => (f s).obj d) :=
  colimitObjIsoColimitCompEvaluation (Discrete.functor f) d ≪≫
    HasColimit.isoOfNatIso (Discrete.compNatIsoDiscrete _ _)

set_option backward.defeqAttrib.useBackward true in
@[reassoc (attr := simp)]
theorem ι_comp_sigmaObjIso_hom (f : α → D ⥤ C) (d : D) (s : α) :
    (Sigma.ι f s).app d ≫ (sigmaObjIso f d).hom = Sigma.ι (fun s => (f s).obj d) s := by
  simp [sigmaObjIso]

set_option backward.defeqAttrib.useBackward true in
@[reassoc (attr := simp)]
theorem ι_comp_sigmaObjIso_inv (f : α → D ⥤ C) (d : D) (s : α) :
    Sigma.ι (fun s => (f s).obj d) s ≫ (sigmaObjIso f d).inv = (Sigma.ι f s).app d := by
  simp [sigmaObjIso]

end Coproduct

end CategoryTheory.Limits
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6196e30ee5d16d9af142ae18a6a87c9f165a50c3085fa6cd22de6aaadb9c8295 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantc3299b7977751d8a09b6820185884860a0ed1aa7dce39476b8e92d623bcbef21.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
