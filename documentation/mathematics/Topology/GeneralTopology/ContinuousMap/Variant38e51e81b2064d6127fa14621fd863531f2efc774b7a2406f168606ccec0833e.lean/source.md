# Complete source: GRWTSK.Topology.GeneralTopology.ContinuousMap.Variant38e51e81b2064d6127fa14621fd863531f2efc774b7a2406f168606ccec0833e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f05fd2310d1708284782840a985884c56a9ef8ac` · SHA-256 `38e51e81b2064d6127fa14621fd863531f2efc774b7a2406f168606ccec0833e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Topology.ContinuousMap.Compact
import Mathlib.Topology.ContinuousMap.ZeroAtInfty

/-! # C⋆-algebras of continuous functions

We place these here because, for reasons related to the import hierarchy, they cannot be placed in
earlier files.
-/

variable {α A : Type*}
noncomputable section

namespace BoundedContinuousFunction

variable [TopologicalSpace α]

#adaptation_note /-- 2025-03-29 for lean4#7717 had to add `norm_mul_self_le` field. -/
instance [NonUnitalCStarAlgebra A] : NonUnitalCStarAlgebra (α →ᵇ A) where
  norm_mul_self_le := CStarRing.norm_mul_self_le

instance [NonUnitalCommCStarAlgebra A] : NonUnitalCommCStarAlgebra (α →ᵇ A) where
  mul_comm := mul_comm

#adaptation_note /-- 2025-03-29 for lean4#7717 had to add `norm_mul_self_le` field. -/
instance [CStarAlgebra A] : CStarAlgebra (α →ᵇ A) where
  norm_mul_self_le := CStarRing.norm_mul_self_le

instance [CommCStarAlgebra A] : CommCStarAlgebra (α →ᵇ A) where
  mul_comm := mul_comm

end BoundedContinuousFunction

namespace ContinuousMap

variable [TopologicalSpace α] [CompactSpace α]

#adaptation_note /-- 2025-03-29 for lean4#7717 had to add `norm_mul_self_le` field. -/
instance [NonUnitalCStarAlgebra A] : NonUnitalCStarAlgebra C(α, A) where
  norm_mul_self_le := CStarRing.norm_mul_self_le

instance [NonUnitalCommCStarAlgebra A] : NonUnitalCommCStarAlgebra C(α, A) where
  mul_comm := mul_comm

#adaptation_note /-- 2025-03-29 for lean4#7717 had to add `norm_mul_self_le` field. -/
instance [CStarAlgebra A] : CStarAlgebra C(α, A) where
  norm_mul_self_le := CStarRing.norm_mul_self_le

instance [CommCStarAlgebra A] : CommCStarAlgebra C(α, A) where
  mul_comm := mul_comm

end ContinuousMap

namespace ZeroAtInftyContinuousMap

open ZeroAtInfty

#adaptation_note /-- 2025-03-29 for lean4#7717 had to add `norm_mul_self_le` field. -/
instance [TopologicalSpace α] [NonUnitalCStarAlgebra A] : NonUnitalCStarAlgebra C₀(α, A) where
  norm_mul_self_le := CStarRing.norm_mul_self_le

instance [TopologicalSpace α] [NonUnitalCommCStarAlgebra A] :
    NonUnitalCommCStarAlgebra C₀(α, A) where
  mul_comm := mul_comm

end ZeroAtInftyContinuousMap
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4004ac90025f902baeafe5b485550999c0b079f023594b8ffb246d1af9742344 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ContinuousMap/Variant38e51e81b2064d6127fa14621fd863531f2efc774b7a2406f168606ccec0833e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
