# Complete source: GRWTSK.Algebra.Noetherian.Variantfa7acdf927ac3426cd47643bf0549566f992c0f22af543d771cd4b3c8e0078a0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `84c30d7a18a4d65309ac1a1e263a98eea6040add` · SHA-256 `fa7acdf927ac3426cd47643bf0549566f992c0f22af543d771cd4b3c8e0078a0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Fangming Li. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Fangming Li
-/
import Mathlib.RingTheory.GradedAlgebra.Basic
import Mathlib.RingTheory.Noetherian.Basic

/-!
# The properties of a graded Noetherian ring.

This file proves that the 0-th grade of a Noetherian ring is
also a Noetherian ring.
-/

variable {ι A σ : Type*}
variable [Ring A] [IsNoetherianRing A]
variable [DecidableEq ι] [AddCommMonoid ι] [PartialOrder ι] [CanonicallyOrderedAdd ι]
variable [SetLike σ A] [AddSubgroupClass σ A]
variable (𝒜 : ι → σ) [GradedRing 𝒜]

namespace GradedRing

/-- If the internally graded ring `A` is Noetherian, then `𝒜 0` is a Noetherian ring. -/
instance GradeZero.isNoetherianRing : IsNoetherianRing (𝒜 0) :=
  isNoetherianRing_of_surjective
    A (𝒜 0) (GradedRing.projZeroRingHom' 𝒜) (GradedRing.projZeroRingHom'_surjective 𝒜)

end GradedRing
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b1d3add010dfaaf0486d9d8ce81c56ac60b534e41904b6d66a2f6a8a133789fb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Noetherian/Variantfa7acdf927ac3426cd47643bf0549566f992c0f22af543d771cd4b3c8e0078a0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
