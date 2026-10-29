# Group Cocompact Map — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b51e618d64b9a561fec0715a363a699755605c9d` · SHA-256 `b2ecd542923e037334b01bb82fdee0b03abc40fc73a0a7e636d01786e2dc6b03`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Moritz Doll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Moritz Doll
-/

import Mathlib.Analysis.Normed.Group.Basic
import Mathlib.Topology.ContinuousMap.CocompactMap
import Mathlib.Topology.MetricSpace.Bounded

/-!
# Cocompact maps in normed groups

This file gives a characterization of cocompact maps in terms of norm estimates.

## Main statements

* `CocompactMapClass.norm_le`: Every cocompact map satisfies a norm estimate
* `ContinuousMapClass.toCocompactMapClass_of_norm`: Conversely, this norm estimate implies that a
  map is cocompact.

-/

open Filter Metric

variable {𝕜 E F 𝓕 : Type*}
variable [NormedAddCommGroup E] [NormedAddCommGroup F]
variable {f : 𝓕}

theorem CocompactMapClass.norm_le [ProperSpace F] [FunLike 𝓕 E F] [CocompactMapClass 𝓕 E F]
    (ε : ℝ) : ∃ r : ℝ, ∀ x : E, r < ‖x‖ → ε < ‖f x‖ := by
  have h := cocompact_tendsto f
  rw [tendsto_def] at h
  specialize h (Metric.closedBall 0 ε)ᶜ (mem_cocompact_of_closedBall_compl_subset 0 ⟨ε, rfl.subset⟩)
  rcases closedBall_compl_subset_of_mem_cocompact h 0 with ⟨r, hr⟩
  use r
  intro x hx
  suffices x ∈ f⁻¹' (Metric.closedBall 0 ε)ᶜ by aesop
  apply hr
  simp [hx]

theorem Filter.tendsto_cocompact_cocompact_of_norm [ProperSpace E] {f : E → F}
    (h : ∀ ε : ℝ, ∃ r : ℝ, ∀ x : E, r < ‖x‖ → ε < ‖f x‖) :
    Tendsto f (cocompact E) (cocompact F) := by
  rw [tendsto_def]
  intro s hs
  rcases closedBall_compl_subset_of_mem_cocompact hs 0 with ⟨ε, hε⟩
  rcases h ε with ⟨r, hr⟩
  apply mem_cocompact_of_closedBall_compl_subset 0
  use r
  intro x hx
  simp only [Set.mem_compl_iff, Metric.mem_closedBall, dist_zero_right, not_le] at hx
  apply hε
  simp [hr x hx]

theorem ContinuousMapClass.toCocompactMapClass_of_norm [ProperSpace E] [FunLike 𝓕 E F]
    [ContinuousMapClass 𝓕 E F] (h : ∀ (f : 𝓕) (ε : ℝ), ∃ r : ℝ, ∀ x : E, r < ‖x‖ → ε < ‖f x‖) :
    CocompactMapClass 𝓕 E F where
  cocompact_tendsto := (tendsto_cocompact_cocompact_of_norm <| h ·)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3ee0aea637b382d9ff888b2d53fe9adfbf9b06e84c2c777e208e7a68c31a72d8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/CocompactMap/Variantb2ecd542923e037334b01bb82fdee0b03abc40fc73a0a7e636d01786e2dc6b03.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
