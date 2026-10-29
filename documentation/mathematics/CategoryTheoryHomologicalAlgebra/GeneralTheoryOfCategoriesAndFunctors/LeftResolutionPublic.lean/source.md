# Left Resolution Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0b5fd9a4cd75c0c73fb3ba87eadd629ad6b4ef24` · SHA-256 `ca7dee740d901fe4d8e419bc8d644bed257fab6f7c4f92e9128b217bf620142a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.Algebra.Category.ModuleCat.Adjunctions
public import Mathlib.Algebra.Category.ModuleCat.EpiMono
public import Mathlib.Algebra.Homology.LeftResolution.Basic

/-!
# Functorial projective resolutions of modules

The fact that an `R`-module `M` can be functorially written as a quotient of a
projective `R`-module is expressed as the definition `ModuleCat.projectiveResolution`.
Using the construction in the file `Mathlib/Algebra/Homology/LeftResolution/Basic.lean`,
we may obtain a functor `(projectiveResolution R).chainComplexFunctor` which
sends `M : ModuleCat R` to a projective resolution.

-/

@[expose] public section

universe u

variable (R : Type u) [Ring R]

namespace ModuleCat

open CategoryTheory Abelian

instance (X : Type u) : Projective ((free R).obj X) where
  factors {M N} f p hp := by
    rw [epi_iff_surjective] at hp
    obtain ⟨s, hs⟩ := hp.hasRightInverse
    exact ⟨freeDesc (↾fun x ↦ s (f (freeMk x))), by cat_disch⟩

set_option backward.defeqAttrib.useBackward true in
/-- An `R`-module `M` can be functorially written as a quotient of a
projective `R`-module. -/
noncomputable def projectiveResolution :
    LeftResolution (ObjectProperty.ι (isProjective (ModuleCat.{u} R))) where
  F := ObjectProperty.lift _ (forget _ ⋙ free R) (by dsimp; infer_instance)
  π := (adj R).counit

end ModuleCat
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9044410563c7db72f1a00ee7644e90b6120c178419a1d8c4a2ca577d9445d1ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftResolution/Variantca7dee740d901fe4d8e419bc8d644bed257fab6f7c4f92e9128b217bf620142a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
