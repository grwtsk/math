# Complete source: GRWTSK.Topology.MetricTopology.TotallySeparated.Variant6d9097f9b04463647059137067cf8f4a199f1c658d2fed627b08900d03c12d1e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `be80427d40c28087ef6718eef42a162055591cb2` · SHA-256 `6d9097f9b04463647059137067cf8f4a199f1c658d2fed627b08900d03c12d1e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Yakov Pechersky. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yakov Pechersky, David Loeffler
-/
import Mathlib.Topology.Connected.TotallyDisconnected
import Mathlib.Topology.MetricSpace.Defs
import Mathlib.Topology.MetricSpace.Ultra.Basic

/-!
# Ultrametric spaces are totally separated

In a metric space with an ultrametric, the space is totally separated, hence totally disconnected.

## Tags

ultrametric, nonarchimedean, totally separated, totally disconnected
-/
open Metric IsUltrametricDist

instance {X : Type*} [MetricSpace X] [IsUltrametricDist X] : TotallySeparatedSpace X :=
  totallySeparatedSpace_iff_exists_isClopen.mpr fun x y h ↦ by
    obtain ⟨r, hr, hr'⟩ := exists_between (dist_pos.mpr h)
    refine ⟨_, IsUltrametricDist.isClopen_ball x r, ?_, ?_⟩
    · simp only [mem_ball, dist_self, hr]
    · simp only [Set.mem_compl, mem_ball, dist_comm, not_lt, hr'.le]

example {X : Type*} [MetricSpace X] [IsUltrametricDist X] : TotallyDisconnectedSpace X :=
  inferInstance
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b67a06941b975b7c0ebf2c5d934b493122bcab36aa545784f1d392ee5310cc57 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/TotallySeparated/Variant6d9097f9b04463647059137067cf8f4a199f1c658d2fed627b08900d03c12d1e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
