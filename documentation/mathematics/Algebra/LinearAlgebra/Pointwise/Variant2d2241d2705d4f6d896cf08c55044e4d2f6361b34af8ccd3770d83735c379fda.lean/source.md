# Complete source: GRWTSK.Algebra.LinearAlgebra.Pointwise.Variant2d2241d2705d4f6d896cf08c55044e4d2f6361b34af8ccd3770d83735c379fda

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3d218265a9c885db3edaafd8d599a7a282e08cc5` · SHA-256 `2d2241d2705d4f6d896cf08c55044e4d2f6361b34af8ccd3770d83735c379fda`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Jiedong Jiang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jiedong Jiang
-/
module

public import Mathlib.Algebra.Algebra.Operations
public import Mathlib.LinearAlgebra.SModEq.Basic

/-!
# Pointwise lemmas for modular equivalence

In this file, we record more lemmas about `SModEq` on elements
of modules or rings.
-/

public section

open Submodule

variable {R : Type*} [Ring R] {I : Ideal R}
variable {M : Type*} [AddCommGroup M] [Module R M] {U : Submodule R M}
variable {x y : M}

namespace SModEq

/--
A variant of `SModEq.smul`, where the scalar belongs to an ideal.
-/
theorem smul' (hxy : x ≡ y [SMOD U])
    {c : R} (hc : c ∈ I) : c • x ≡ c • y [SMOD (I • U)] := by
  rw [SModEq.sub_mem] at hxy ⊢
  rw [← smul_sub]
  exact smul_mem_smul hc hxy

end SModEq
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5432058572f7d84656fc5b1a77fd99dd7a707df2359bdf03d91850dd5eac3f4e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Pointwise/Variant2d2241d2705d4f6d896cf08c55044e4d2f6361b34af8ccd3770d83735c379fda.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
