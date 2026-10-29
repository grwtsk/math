# Sigma Comparison — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `85db117945a69d775f4353c8b5317a7d97cee03e` · SHA-256 `ffef3542c52d302f0eefc5c24ffb03dc774ed149df1914ba10fa679b839123ed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.Topology.Category.CompHausLike.Limits
/-!

# The sigma-comparison map

This file defines the map `CompHausLike.sigmaComparison` associated to a presheaf `X` on
`CompHausLike P`, and a finite family `S₁,...,Sₙ` of spaces in `CompHausLike P`, where `P` is
stable under taking finite disjoint unions.

The map `sigmaComparison` is the canonical map `X(S₁ ⊔ ... ⊔ Sₙ) ⟶ X(S₁) × ... × X(Sₙ)` induced by
the inclusion maps `Sᵢ ⟶ S₁ ⊔ ... ⊔ Sₙ`, and it is an isomorphism when `X` preserves finite
products.
-/

universe u w

open CategoryTheory Limits

namespace CompHausLike

variable {P : TopCat.{u} → Prop} [HasExplicitFiniteCoproducts.{u} P]
  (X : (CompHausLike.{u} P)ᵒᵖ ⥤ Type max u w) [PreservesFiniteProducts X]
  {α : Type u} [Finite α] (σ : α → Type u)
  [∀ a, TopologicalSpace (σ a)] [∀ a, CompactSpace (σ a)] [∀ a, T2Space (σ a)]
  [∀ a, HasProp P (σ a)]

instance : HasProp P (Σ (a : α), (σ a)) := HasExplicitFiniteCoproducts.hasProp (fun a ↦ of P (σ a))

/--
The comparison map from the value of a condensed set on a finite coproduct to the product of the
values on the components.
-/
def sigmaComparison : X.obj ⟨(of P ((a : α) × σ a))⟩ ⟶ ((a : α) → X.obj ⟨of P (σ a)⟩) :=
  fun x a ↦ X.map (ofHom _ ⟨Sigma.mk a, continuous_sigmaMk⟩).op x

theorem sigmaComparison_eq_comp_isos : sigmaComparison X σ =
    (X.mapIso (opCoproductIsoProduct'
      (finiteCoproduct.isColimit.{u, u} (fun a ↦ of P (σ a)))
      (productIsProduct fun x ↦ Opposite.op (of P (σ x))))).hom ≫
    (PreservesProduct.iso X fun a ↦ ⟨of P (σ a)⟩).hom ≫
    (Types.productIso.{u, max u w} fun a ↦ X.obj ⟨of P (σ a)⟩).hom := by
  ext x a
  simp only [Cofan.mk_pt, Fan.mk_pt, Functor.mapIso_hom,
    PreservesProduct.iso_hom, types_comp_apply, Types.productIso_hom_comp_eval_apply]
  have := congrFun (piComparison_comp_π X (fun a ↦ ⟨of P (σ a)⟩) a)
  simp only [types_comp_apply] at this
  rw [this, ← FunctorToTypes.map_comp_apply]
  simp only [sigmaComparison]
  apply congrFun
  congr 2
  rw [← opCoproductIsoProduct_inv_comp_ι]
  simp only [coe_of, Opposite.unop_op, unop_comp, Quiver.Hom.unop_op, Category.assoc]
  simp only [opCoproductIsoProduct, ← unop_comp, opCoproductIsoProduct'_comp_self]
  erw [IsColimit.fac]
  rfl

instance isIsoSigmaComparison : IsIso <| sigmaComparison X σ := by
  rw [sigmaComparison_eq_comp_isos]
  infer_instance

end CompHausLike
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e14a1dea3543ba86c4032ba8991913d584fb49d610641baaad292b433e3963d9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/SigmaComparison/Variantffef3542c52d302f0eefc5c24ffb03dc774ed149df1914ba10fa679b839123ed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
