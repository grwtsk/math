# Abelian Projective Basic — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7bb49658baa6b1266f41f82ef0268064c30d474f` · SHA-256 `de5cd33fdee0dae4c93611e8f973b4021a836898069fe61f9055e2b7565f64d2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jakob von Raumer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jakob von Raumer
-/
import Mathlib.CategoryTheory.Abelian.Exact
import Mathlib.CategoryTheory.Preadditive.Yoneda.Projective
import Mathlib.CategoryTheory.Preadditive.Yoneda.Limits
import Mathlib.Algebra.Category.ModuleCat.EpiMono
import Mathlib.Algebra.Homology.ShortComplex.ExactFunctor

/-!
# Projective objects in abelian categories

In an abelian category, an object `P` is projective iff the functor
`preadditiveCoyonedaObj (op P)` preserves finite colimits.

-/

universe v u

namespace CategoryTheory

open Limits Projective Opposite

variable {C : Type u} [Category.{v} C] [Abelian C]

/-- The preadditive Co-Yoneda functor on `P` preserves homology if `P` is projective. -/
noncomputable instance preservesHomology_preadditiveCoyonedaObj_of_projective
    (P : C) [hP : Projective P] :
    (preadditiveCoyonedaObj P).PreservesHomology := by
  haveI := (projective_iff_preservesEpimorphisms_preadditiveCoyonedaObj P).mp hP
  apply Functor.preservesHomology_of_preservesEpis_and_kernels

/-- The preadditive Co-Yoneda functor on `P` preserves finite colimits if `P` is projective. -/
noncomputable instance preservesFiniteColimits_preadditiveCoyonedaObj_of_projective
    (P : C) [hP : Projective P] :
    PreservesFiniteColimits (preadditiveCoyonedaObj P) := by
  apply Functor.preservesFiniteColimits_of_preservesHomology

/-- An object is projective if its preadditive Co-Yoneda functor preserves finite colimits. -/
theorem projective_of_preservesFiniteColimits_preadditiveCoyonedaObj (P : C)
    [hP : PreservesFiniteColimits (preadditiveCoyonedaObj P)] : Projective P := by
  rw [projective_iff_preservesEpimorphisms_preadditiveCoyonedaObj]
  have := Functor.preservesHomologyOfExact (preadditiveCoyonedaObj P)
  infer_instance

end CategoryTheory
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ec75cd763491b1af54d356f324cf9e3b08727b0aedd24d2e7310a59240ce829b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantde5cd33fdee0dae4c93611e8f973b4021a836898069fe61f9055e2b7565f64d2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
