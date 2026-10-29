# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PseudofunctorSheafOver.Variant2dd29eb702d137782a347701c189e3524a11c934a6599ff8187012e27269ffb5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8df9c5dc10ea1f72322d624ed9812a4e77599480` · SHA-256 `2dd29eb702d137782a347701c189e3524a11c934a6599ff8187012e27269ffb5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Bicategory.Functor.LocallyDiscrete
public import Mathlib.CategoryTheory.Sites.Over

/-!
# Sheaves on Over categories, as a pseudofunctor

Given a Grothendieck topology `J` on a category `C` and
a category `A`, we define the pseudofunctor
`J.pseudofunctorOver A : Pseudofunctor (LocallyDiscrete Cᵒᵖ) Cat`
which sends `X : C` to the category of sheaves on `Over X`
with values in `A`.

-/

@[expose] public section

universe v' v u' u

namespace CategoryTheory

namespace GrothendieckTopology

variable {C : Type u} [Category.{v} C] (J : GrothendieckTopology C)
  (A : Type u') [Category.{v'} A]

/-- Given a Grothendieck topology `J` on a category `C` and a category `A`,
this is the pseudofunctor which sends `X : C` to the categories of
sheaves on `Over X` with values in `A`. -/
@[simps!]
def pseudofunctorOver : Pseudofunctor (LocallyDiscrete Cᵒᵖ) Cat :=
  LocallyDiscrete.mkPseudofunctor
    (fun X ↦ ↧(Sheaf (J.over X.unop) A))
    (fun f ↦ (J.overMapPullback A f.unop).toCatHom)
    (fun X ↦ Cat.Hom.isoMk <| (J.overMapPullbackId A X.unop))
    (fun f g ↦ Cat.Hom.isoMk <| (J.overMapPullbackComp A g.unop f.unop).symm)
    (fun f g h ↦ by ext1; simpa [overMapPullbackCongr_eq_eqToIso] using!
      J.overMapPullback_assoc A h.unop g.unop f.unop)
    (fun f ↦ by ext1; simpa [overMapPullbackCongr_eq_eqToIso] using!
      J.overMapPullback_comp_id A f.unop)
    (fun f ↦ by ext1; simpa [overMapPullbackCongr_eq_eqToIso] using!
      J.overMapPullback_id_comp A f.unop)

end GrothendieckTopology

end CategoryTheory
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7a22453403c25e0982113492189c20ffe1964eada0290e9d8c449c3fc7a67e52 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PseudofunctorSheafOver/Variant2dd29eb702d137782a347701c189e3524a11c934a6599ff8187012e27269ffb5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
