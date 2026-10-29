# Yoneda Projective — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `25dcf1358528547273d64c3f323af7c9858dbb6b` · SHA-256 `a16d15a0ad11daec35d633f5c8f8f8c236994bfc8fd1f30c6b3462ca9847b376`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel, Kim Morrison
-/
import Mathlib.CategoryTheory.Preadditive.Yoneda.Basic
import Mathlib.CategoryTheory.Preadditive.Projective.Basic
import Mathlib.Algebra.Category.Grp.EpiMono
import Mathlib.Algebra.Category.ModuleCat.EpiMono

/-!
An object is projective iff the preadditive coyoneda functor on it preserves epimorphisms.
-/


universe v u

open Opposite

namespace CategoryTheory

variable {C : Type u} [Category.{v} C]

section Preadditive

variable [Preadditive C]

namespace Projective

theorem projective_iff_preservesEpimorphisms_preadditiveCoyoneda_obj (P : C) :
    Projective P ↔ (preadditiveCoyoneda.obj (op P)).PreservesEpimorphisms := by
  rw [projective_iff_preservesEpimorphisms_coyoneda_obj]
  refine ⟨fun h : (preadditiveCoyoneda.obj (op P) ⋙
      forget AddCommGrp).PreservesEpimorphisms => ?_, ?_⟩
  · exact Functor.preservesEpimorphisms_of_preserves_of_reflects (preadditiveCoyoneda.obj (op P))
        (forget _)
  · intro
    exact (inferInstance : (preadditiveCoyoneda.obj (op P) ⋙ forget _).PreservesEpimorphisms)

theorem projective_iff_preservesEpimorphisms_preadditiveCoyonedaObj (P : C) :
    Projective P ↔ (preadditiveCoyonedaObj P).PreservesEpimorphisms := by
  rw [projective_iff_preservesEpimorphisms_coyoneda_obj]
  refine ⟨fun h : (preadditiveCoyonedaObj P ⋙ forget _).PreservesEpimorphisms => ?_, ?_⟩
  · exact Functor.preservesEpimorphisms_of_preserves_of_reflects (preadditiveCoyonedaObj P)
        (forget _)
  · intro
    exact (inferInstance : (preadditiveCoyonedaObj P ⋙ forget _).PreservesEpimorphisms)

end Projective

end Preadditive

end CategoryTheory
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5e541e90223c43b983f3d66e09d35b3a9a7cb0d589cb81fa55f8148d0902bac2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Varianta16d15a0ad11daec35d633f5c8f8f8c236994bfc8fd1f30c6b3462ca9847b376.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
