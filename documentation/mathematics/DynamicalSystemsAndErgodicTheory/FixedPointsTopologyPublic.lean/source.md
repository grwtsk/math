# Fixed Points Topology Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e17025f961f146b93a179274cc406960556532a7` · SHA-256 `852237162baa99af1e489c18a916d16b54cc741ae8cbb22d972dd262ab9e0765`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov, Johannes Hölzl
-/
module

public import Mathlib.Topology.Separation.Hausdorff
public import Mathlib.Dynamics.FixedPoints.Defs

/-!
# Topological properties of fixed points

Currently this file contains two lemmas:

- `isFixedPt_of_tendsto_iterate`: if `f^n(x) → y` and `f` is continuous at `y`, then `f y = y`;
- `isClosed_fixedPoints`: the set of fixed points of a continuous map is a closed set.

## TODO

fixed points, iterates
-/

public section


variable {α : Type*} [TopologicalSpace α] [T2Space α] {f : α → α}

open Function Filter

open scoped Topology

/-- If the iterates `f^[n] x` converge to `y` and `f` is continuous at `y`,
then `y` is a fixed point for `f`. -/
theorem isFixedPt_of_tendsto_iterate {x y : α} (hy : Tendsto (fun n => f^[n] x) atTop (𝓝 y))
    (hf : ContinuousAt f y) : IsFixedPt f y := by
  refine tendsto_nhds_unique ((tendsto_add_atTop_iff_nat 1).1 ?_) hy
  simp only [iterate_succ' f]
  exact hf.tendsto.comp hy

/-- The set of fixed points of a continuous map is a closed set. -/
theorem isClosed_fixedPoints (hf : Continuous f) : IsClosed (fixedPoints f) :=
  isClosed_eq hf continuous_id
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=447cae75e8810cbbcb613ef3d9220edaac4d48b1425af8e63a8a1bfaf01674ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Topology/Variant852237162baa99af1e489c18a916d16b54cc741ae8cbb22d972dd262ab9e0765.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
