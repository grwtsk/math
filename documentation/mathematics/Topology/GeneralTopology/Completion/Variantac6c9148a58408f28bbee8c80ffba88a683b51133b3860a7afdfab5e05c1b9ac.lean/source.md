# Complete source: GRWTSK.Topology.GeneralTopology.Completion.Variantac6c9148a58408f28bbee8c80ffba88a683b51133b3860a7afdfab5e05c1b9ac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `20db58aa839b3084558146308180011fd88a9dab` · SHA-256 `ac6c9148a58408f28bbee8c80ffba88a683b51133b3860a7afdfab5e05c1b9ac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.Analysis.Normed.Group.Uniform
import Mathlib.Topology.Algebra.GroupCompletion
import Mathlib.Topology.MetricSpace.Completion

/-!
# Completion of a normed group

In this file we prove that the completion of a (semi)normed group is a normed group.

## Tags

normed group, completion
-/


noncomputable section

namespace UniformSpace

namespace Completion

variable (E : Type*)

instance [UniformSpace E] [Norm E] : Norm (Completion E) where
  norm := Completion.extension Norm.norm

@[simp]
theorem norm_coe {E} [SeminormedAddCommGroup E] (x : E) : ‖(x : Completion E)‖ = ‖x‖ :=
  Completion.extension_coe uniformContinuous_norm x

instance [SeminormedAddCommGroup E] : NormedAddCommGroup (Completion E) where
  dist_eq x y := by
    induction x, y using Completion.induction_on₂
    · refine isClosed_eq (Completion.uniformContinuous_extension₂ _).continuous ?_
      exact Continuous.comp Completion.continuous_extension continuous_sub
    · rw [← Completion.coe_sub, norm_coe, Completion.dist_eq, dist_eq_norm]

@[simp]
theorem nnnorm_coe {E} [SeminormedAddCommGroup E] (x : E) : ‖(x : Completion E)‖₊ = ‖x‖₊ := by
  simp [nnnorm]

@[simp]
lemma enorm_coe {E} [SeminormedAddCommGroup E] (x : E) : ‖(x : Completion E)‖ₑ = ‖x‖ₑ := by
  simp [enorm]

end Completion

end UniformSpace
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4205ff79c0872b7f2b1e01f48f38b38fbd42c5d57bc1054a5be7bc931f05a8e7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Completion/Variantac6c9148a58408f28bbee8c80ffba88a683b51133b3860a7afdfab5e05c1b9ac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
