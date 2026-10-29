# Complete source: GRWTSK.Topology.MetricTopology.ContinuousMaps.Variant3801586ee5845d979b722c95d3256f1c8f3dea77a3798047e601607d647c8731

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `62dd5bf7c5b2710848fe3a394cdcad178b3d4d1f` · SHA-256 `3801586ee5845d979b722c95d3256f1c8f3dea77a3798047e601607d647c8731`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 David Loeffler. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Loeffler
-/

import Mathlib.Topology.ContinuousMap.Compact
import Mathlib.Topology.MetricSpace.Ultra.Basic

/-!
# Ultrametric structure on continuous maps
-/

/-- Continuous maps from a compact space to an ultrametric space are an ultrametric space. -/
instance ContinuousMap.isUltrametricDist {X Y : Type*}
    [TopologicalSpace X] [CompactSpace X] [MetricSpace Y] [IsUltrametricDist Y] :
    IsUltrametricDist C(X, Y) := by
  constructor
  intro f g h
  rw [ContinuousMap.dist_le (by positivity)]
  refine fun x ↦ (dist_triangle_max (f x) (g x) (h x)).trans (max_le_max ?_ ?_) <;>
  exact ContinuousMap.dist_apply_le_dist x
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=64d136e68eddb8ff7ae13fa117983e4d267993abd1fe75c9c6cbe33b2f2e02cb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/ContinuousMaps/Variant3801586ee5845d979b722c95d3256f1c8f3dea77a3798047e601607d647c8731.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
