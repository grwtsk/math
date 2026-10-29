# Complete source: GRWTSK.Topology.GeneralTopology.ProperSpace.Variant7f6181973dcb89ec6ccd2b7641c1ea07481a1510f0fa70bc69b8ecf5eec79832

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ff3492b73cecdf65475007870e9df61624ef8bfb` · SHA-256 `7f6181973dcb89ec6ccd2b7641c1ea07481a1510f0fa70bc69b8ecf5eec79832`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Yakov Pechersky. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yakov Pechersky
-/

import Mathlib.Analysis.Normed.Field.Lemmas
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Topology.MetricSpace.ProperSpace

/-!
# Proper nontrivally normed fields

Nontrivially normed fields are `ProperSpaces` when they are `WeaklyLocallyCompact`.

## Main results

* `ProperSpace.of_nontriviallyNormedField_of_weaklyLocallyCompactSpace`

## Implementation details

This is a special case of `ProperSpace.of_locallyCompactSpace` from
`Mathlib/Analysis/Normed/Module/FiniteDimension.lean`, specialized to be on the field itself
with a proof that requires fewer imports.
-/

assert_not_exists FiniteDimensional

open Metric Filter

/-- A weakly locally compact normed field is proper.
This is a specialization of `ProperSpace.of_locallyCompactSpace`
which holds for `NormedSpace`s but requires more imports. -/
lemma ProperSpace.of_nontriviallyNormedField_of_weaklyLocallyCompactSpace
    (𝕜 : Type*) [NontriviallyNormedField 𝕜] [WeaklyLocallyCompactSpace 𝕜] :
    ProperSpace 𝕜 := by
  rcases exists_isCompact_closedBall (0 : 𝕜) with ⟨r, rpos, hr⟩
  rcases NormedField.exists_one_lt_norm 𝕜 with ⟨c, hc⟩
  have hC n : IsCompact (closedBall (0 : 𝕜) (‖c‖^n * r)) := by
    have : c ^ n ≠ 0 := pow_ne_zero _ <| fun h ↦ by simp [h, zero_le_one.not_lt] at hc
    convert hr.smul (c ^ n)
    ext
    simp only [mem_closedBall, dist_zero_right, Set.mem_smul_set_iff_inv_smul_mem₀ this,
      smul_eq_mul, norm_mul, norm_inv, norm_pow,
      inv_mul_le_iff₀ (by simpa only [norm_pow] using norm_pos_iff.mpr this)]
  have hTop : Tendsto (fun n ↦ ‖c‖^n * r) atTop atTop :=
    Tendsto.atTop_mul_const rpos (tendsto_pow_atTop_atTop_of_one_lt hc)
  exact .of_seq_closedBall hTop (Eventually.of_forall hC)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=10b7a9cb365e84732e66cb580065018648c8ab9c1ab7180509857e61d79fe945 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ProperSpace/Variant7f6181973dcb89ec6ccd2b7641c1ea07481a1510f0fa70bc69b8ecf5eec79832.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
