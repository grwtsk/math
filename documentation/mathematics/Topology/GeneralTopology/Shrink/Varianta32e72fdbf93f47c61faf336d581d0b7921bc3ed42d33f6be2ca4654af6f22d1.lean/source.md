# Complete source: GRWTSK.Topology.GeneralTopology.Shrink.Varianta32e72fdbf93f47c61faf336d581d0b7921bc3ed42d33f6be2ca4654af6f22d1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf51bfc09c9afa77b2711d64917128924435384d` · SHA-256 `a32e72fdbf93f47c61faf336d581d0b7921bc3ed42d33f6be2ca4654af6f22d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Christian Merten. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christian Merten
-/
import Mathlib.Logic.Small.Defs
import Mathlib.Topology.Defs.Induced
import Mathlib.Topology.Homeomorph.Defs

/-!
# Topological space structure on `Shrink X`
-/

universe v u

namespace Shrink

noncomputable instance (X : Type u) [TopologicalSpace X] [Small.{v} X] :
    TopologicalSpace (Shrink.{v} X) :=
  .coinduced (equivShrink X) inferInstance

/-- `equivShrink` as a homeomorphism. -/
@[simps toEquiv]
noncomputable def homeomorph (X : Type u) [TopologicalSpace X] [Small.{v} X] :
    X ≃ₜ Shrink.{v} X where
  __ := equivShrink X
  continuous_toFun := continuous_coinduced_rng
  continuous_invFun := by
    convert continuous_induced_dom
    simp only [Equiv.invFun_as_coe, Equiv.induced_symm]
    rfl

end Shrink
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2215895427792336a9e50f64004aa3ed8d606721928405a39a11443e916f4db9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Shrink/Varianta32e72fdbf93f47c61faf336d581d0b7921bc3ed42d33f6be2ca4654af6f22d1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
