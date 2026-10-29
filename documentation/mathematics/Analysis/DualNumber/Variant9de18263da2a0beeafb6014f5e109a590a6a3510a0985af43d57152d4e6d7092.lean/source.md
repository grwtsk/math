# Complete source: GRWTSK.Analysis.DualNumber.Variant9de18263da2a0beeafb6014f5e109a590a6a3510a0985af43d57152d4e6d7092

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de4a83e7a7b2473513ece3872cf00817ba94ae43` · SHA-256 `9de18263da2a0beeafb6014f5e109a590a6a3510a0985af43d57152d4e6d7092`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.DualNumber
import Mathlib.Analysis.Normed.Algebra.TrivSqZeroExt

/-!
# Results on `DualNumber R` related to the norm

These are just restatements of similar statements about `TrivSqZeroExt R M`.

## Main results

* `exp_eps`

-/

open NormedSpace -- For `NormedSpace.exp`.

namespace DualNumber

open TrivSqZeroExt

variable (𝕜 : Type*) {R : Type*}
variable [Field 𝕜] [CharZero 𝕜] [CommRing R] [Algebra 𝕜 R]
variable [UniformSpace R] [IsTopologicalRing R] [T2Space R]

@[simp]
theorem exp_eps : exp 𝕜 (eps : DualNumber R) = 1 + eps :=
  exp_inr _ _

@[simp]
theorem exp_smul_eps (r : R) : exp 𝕜 (r • eps : DualNumber R) = 1 + r • eps := by
  rw [eps, ← inr_smul, exp_inr]

end DualNumber
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=40849a9057c88969b49b75e85f4cacf19623858d1a7fb1829d024a9050078c08 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/DualNumber/Variant9de18263da2a0beeafb6014f5e109a590a6a3510a0985af43d57152d4e6d7092.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
