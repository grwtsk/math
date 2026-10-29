# Add Circle Add Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bb4c802d06dbd36016c5e066f43e9e2f26cdbbd4` · SHA-256 `7cc04ca4869cf7e25ac0e5a0c5d1ead51ca8b6a056e577aca54b03d125b7f959`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
module

public import Mathlib.Dynamics.Ergodic.Action.OfMinimal
public import Mathlib.Topology.Instances.AddCircle.DenseSubgroup
public import Mathlib.MeasureTheory.Integral.IntervalIntegral.Periodic

/-!
# Ergodicity of an irrational rotation

In this file we prove that rotation of `AddCircle p` by `a` is ergodic
if and only if `a` has infinite order (in other words, if `a / p` is irrational).
-/

public section

open MeasureTheory AddSubgroup
open scoped Pointwise

namespace AddCircle

variable {p : ℝ} [Fact (0 < p)]

theorem ergodic_add_left {a : AddCircle p} : Ergodic (a + ·) ↔ addOrderOf a = 0 := by
  rw [← denseRange_zsmul_iff, ergodic_add_left_iff_denseRange_zsmul]

theorem ergodic_add_right {a : AddCircle p} : Ergodic (· + a) ↔ addOrderOf a = 0 := by
  simp only [add_comm, ← ergodic_add_left]

end AddCircle
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ee6d2f5418cfa17939eb380dcc6de627b21e43f8accb8a87354449a5f42361a4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/AddCircleAdd/Variant7cc04ca4869cf7e25ac0e5a0c5d1ead51ca8b6a056e577aca54b03d125b7f959.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
