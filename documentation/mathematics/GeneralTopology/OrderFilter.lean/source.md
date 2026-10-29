# Order Filter — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bea31236ef514c7dc7f5f2e3acb5814e03753710` · SHA-256 `66b55894d14106a964b30a8349e0a14db18e17995d1894bda3ec9380960ded56`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Topology.Filter
import Mathlib.Topology.Order.Basic

/-!
# Topology on filters of a space with order topology

In this file we prove that `𝓝 (f x)` tends to `𝓝 Filter.atTop` provided that `f` tends to
`Filter.atTop`, and similarly for `Filter.atBot`.
-/


open Topology

namespace Filter

variable {α X : Type*} [TopologicalSpace X] [PartialOrder X] [OrderTopology X]

protected theorem tendsto_nhds_atTop [NoMaxOrder X] : Tendsto 𝓝 (atTop : Filter X) (𝓝 atTop) :=
  Filter.tendsto_nhds_atTop_iff.2 fun x => (eventually_gt_atTop x).mono fun _ => le_mem_nhds

protected theorem tendsto_nhds_atBot [NoMinOrder X] : Tendsto 𝓝 (atBot : Filter X) (𝓝 atBot) :=
  @Filter.tendsto_nhds_atTop Xᵒᵈ _ _ _ _

theorem Tendsto.nhds_atTop [NoMaxOrder X] {f : α → X} {l : Filter α} (h : Tendsto f l atTop) :
    Tendsto (𝓝 ∘ f) l (𝓝 atTop) :=
  Filter.tendsto_nhds_atTop.comp h

theorem Tendsto.nhds_atBot [NoMinOrder X] {f : α → X} {l : Filter α} (h : Tendsto f l atBot) :
    Tendsto (𝓝 ∘ f) l (𝓝 atBot) :=
  @Tendsto.nhds_atTop α Xᵒᵈ _ _ _ _ _ _ h

end Filter
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=20fb4f328f45f44d0b2850849b138fd6253ab2fc53777adfa1d29b6cb5c83e4b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Filter/Variant66b55894d14106a964b30a8349e0a14db18e17995d1894bda3ec9380960ded56.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
