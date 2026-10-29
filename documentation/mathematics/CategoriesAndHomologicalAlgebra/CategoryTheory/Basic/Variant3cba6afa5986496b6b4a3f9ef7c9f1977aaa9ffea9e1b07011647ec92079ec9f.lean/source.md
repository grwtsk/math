# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant3cba6afa5986496b6b4a3f9ef7c9f1977aaa9ffea9e1b07011647ec92079ec9f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1c92e5ded37d7e57c289746f56bf39ca5023fbb3` · SHA-256 `3cba6afa5986496b6b4a3f9ef7c9f1977aaa9ffea9e1b07011647ec92079ec9f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Abelian.Basic
import Mathlib.CategoryTheory.ObjectProperty.ContainsZero
import Mathlib.CategoryTheory.ObjectProperty.EpiMono
import Mathlib.CategoryTheory.ObjectProperty.Extensions
import Mathlib.Algebra.Homology.ShortComplex.ShortExact

/-!
# Serre classes

For any abelian category `C`, we introduce a type class `IsSerreClass C` for
Serre classes in `S` (also known as "Serre subcategories"). A Serre class is
a property `P : ObjectProperty C` of objects in `P` which holds for a zero object,
and is closed under subobjects, quotients and extensions.

## Future works

* Show that the localization of `C` with respect to a Serre class is an abelian category.

## References

* [Jean-Pierre Serre, *Groupes d'homotopie et classes de groupes abéliens*][serre1958]

-/

universe v v' u u'

namespace CategoryTheory

open Limits ZeroObject

variable {C : Type u} [Category.{v} C] [Abelian C] (P : ObjectProperty C)
  {D : Type u'} [Category.{v'} D] [Abelian D]

namespace ObjectProperty

/-- A Serre class in an abelian category consists of predicate which
hold for the zero object and is closed under subobjects, quotients, extensions. -/
class IsSerreClass : Prop extends P.ContainsZero,
    P.IsClosedUnderSubobjects, P.IsClosedUnderQuotients,
    P.IsClosedUnderExtensions where

variable [P.IsSerreClass]

example : P.IsClosedUnderIsomorphisms := inferInstance

instance : (⊤ : ObjectProperty C).IsSerreClass where

instance : IsSerreClass (IsZero (C := C)) where

lemma prop_iff_of_shortExact {S : ShortComplex C} (hS : S.ShortExact) :
    P S.X₂ ↔ P S.X₁ ∧ P S.X₃ :=
  ⟨fun h ↦ ⟨P.prop_X₁_of_shortExact hS h, P.prop_X₃_of_shortExact hS h⟩,
    fun h ↦ P.prop_X₂_of_shortExact hS h.1 h.2⟩

lemma prop_X₂_of_exact {S : ShortComplex C} (hS : S.Exact)
    (h₁ : P S.X₁) (h₃ : P S.X₃) : P S.X₂ := by
  let d := S.homologyData
  have := hS.epi_f' d.left
  have := hS.mono_g' d.right
  exact (P.prop_X₂_of_shortExact (hS.shortExact d)
    (P.prop_of_epi d.left.f' h₁) (P.prop_of_mono d.right.g' h₃) :)

instance (F : D ⥤ C) [PreservesFiniteLimits F]
    [PreservesFiniteColimits F] :
    (P.inverseImage F).IsSerreClass where

end ObjectProperty

end CategoryTheory
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1e7c5815259eb9a7e546109dc7db21d06fa688ded849f0f3560bd1b6b5fece5b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3cba6afa5986496b6b4a3f9ef7c9f1977aaa9ffea9e1b07011647ec92079ec9f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
