# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ReflectsPreregular.Variante4eaeb61d0f1b7940f07414d4b137e85f8d47d31e3b438205f877fdc47e29f37

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `58eef6dd8e4c38c22f14f622005cb0bca52330a6` · SHA-256 `e4eaeb61d0f1b7940f07414d4b137e85f8d47d31e3b438205f877fdc47e29f37`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.CategoryTheory.EffectiveEpi.Enough
import Mathlib.CategoryTheory.EffectiveEpi.Preserves
import Mathlib.CategoryTheory.Sites.Coherent.RegularTopology
/-!

# Reflecting the property of being preregular

We prove that given a fully faithful functor `F : C ⥤ D`, with `Preregular D`, such that for every
object `X` of `D` there exists an object `W` of `C` with an effective epi `π : F.obj W ⟶ X`, the
category `C` is `Preregular`.
-/

namespace CategoryTheory

variable {C D : Type*} [Category C] [Category D] (F : C ⥤ D)
  [F.PreservesEffectiveEpis] [F.ReflectsEffectiveEpis]
  [F.EffectivelyEnough]
  [Preregular D] [F.Full] [F.Faithful]

include F in
lemma Functor.reflects_preregular : Preregular C where
  exists_fac f g _ := by
    obtain ⟨W, f', _, i, w⟩ := Preregular.exists_fac (F.map f) (F.map g)
    refine ⟨_, F.preimage (F.effectiveEpiOver W ≫ f'),
      ⟨F.effectiveEpi_of_map _ ?_, F.preimage (F.effectiveEpiOver W ≫ i), ?_⟩⟩
    · simp only [Functor.map_preimage]
      infer_instance
    · apply F.map_injective
      simp [w]

end CategoryTheory
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7894854f9c3a43a4b7d416183bbd5ff50ff035feb49d6c971627702c327170ff -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflectsPreregular/Variante4eaeb61d0f1b7940f07414d4b137e85f8d47d31e3b438205f877fdc47e29f37.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
