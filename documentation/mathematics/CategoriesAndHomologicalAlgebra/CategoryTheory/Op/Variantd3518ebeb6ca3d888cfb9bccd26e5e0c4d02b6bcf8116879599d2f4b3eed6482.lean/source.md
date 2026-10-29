# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Op.Variantd3518ebeb6ca3d888cfb9bccd26e5e0c4d02b6bcf8116879599d2f4b3eed6482

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `05ce3e55efb11ff2c4054595f7713144390000a2` · SHA-256 `d3518ebeb6ca3d888cfb9bccd26e5e0c4d02b6bcf8116879599d2f4b3eed6482`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Jakob von Raumer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jakob von Raumer
-/
module

public import Mathlib.CategoryTheory.Category.Cat
public import Mathlib.CategoryTheory.Opposites

/-!
# The dualizing functor on `Cat`

We define a (strict) functor `opFunctor` and an equivalence assigning opposite categories to
categories. We then show that this functor is strictly involutive and that it induces an
equivalence on `Cat`.
-/

@[expose] public section

universe v₁ v₂ u₁ u₂

namespace CategoryTheory

namespace Cat

/-- The endofunctor `Cat ⥤ Cat` assigning to each category its opposite category. -/
@[simps]
def opFunctor : Cat.{v₁, u₁} ⥤ Cat.{v₁, u₁} where
  obj C := ↧Cᵒᵖ
  map F := F.toFunctor.op.toCatHom

/-- The natural isomorphism between the double application of `Cat.opFunctor` and the
identity functor on `Cat`. -/
@[simps!]
def opFunctorInvolutive : opFunctor.{v₁, u₁} ⋙ opFunctor.{v₁, u₁} ≅ 𝟭 _ :=
  NatIso.ofComponents (fun C => .mk (unopUnop C).toCatHom (opOp C).toCatHom)

/-- The equivalence `Cat ≌ Cat` associating each category with its opposite category. -/
@[simps]
def opEquivalence : Cat.{v₁, u₁} ≌ Cat.{v₁, u₁} where
  functor := opFunctor
  inverse := opFunctor
  unitIso := NatIso.ofComponents (fun _ => Iso.mk (opOp _).toCatHom (unopUnop _).toCatHom)
  counitIso := NatIso.ofComponents (fun _ => Iso.mk (unopUnop _).toCatHom (opOp _).toCatHom)

end Cat

end CategoryTheory
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce4ecd5a789b22c55874cec6b5a394755dd8020a7d7afbbd0694742b7d33da6b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Op/Variantd3518ebeb6ca3d888cfb9bccd26e5e0c4d02b6bcf8116879599d2f4b3eed6482.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
