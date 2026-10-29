# Complete source: GRWTSK.Algebra.LinearAlgebra.Prod.Variant807903fbb946fa6b9f975b58dd7835e186250838b1648e256d63104200818cd2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b80a635be778cc1238b52f4f1d24b85662a9649` · SHA-256 `807903fbb946fa6b9f975b58dd7835e186250838b1648e256d63104200818cd2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Alexander Bentkamp. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Alexander Bentkamp
-/

import Mathlib.Algebra.Module.Prod
import Mathlib.Tactic.Abel
import Mathlib.Algebra.Module.LinearMap.Defs

/-!
# Addition and subtraction are linear maps from the product space

Note that these results use `IsLinearMap`, which is mostly discouraged.

## Tags
linear algebra, vector space, module

-/

variable {R : Type*} {M : Type*} [Semiring R]

namespace IsLinearMap

theorem isLinearMap_add [AddCommMonoid M] [Module R M] :
    IsLinearMap R fun x : M × M => x.1 + x.2 := by
  apply IsLinearMap.mk
  · intro x y
    simp only [Prod.fst_add, Prod.snd_add]
    abel
  · intro x y
    simp [smul_add]

theorem isLinearMap_sub [AddCommGroup M] [Module R M] :
    IsLinearMap R fun x : M × M => x.1 - x.2 := by
  apply IsLinearMap.mk
  · intro x y
    simp [add_comm, add_assoc, add_left_comm, sub_eq_add_neg]
  · intro x y
    simp [smul_sub]

end IsLinearMap
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=44df1392937df55300c364f2b061041115765d0ed4fe27e11d254b10df855126 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Prod/Variant807903fbb946fa6b9f975b58dd7835e186250838b1648e256d63104200818cd2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
