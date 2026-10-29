# Complete source: GRWTSK.Algebra.LinearAlgebra.Prod.Variant0711ce5f1d54db4a1ded0b8d25ed3807a8991b0b3bc0418cb11c5ccfb3d983fc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `608cd8408295b7bf638fdb677afb966a0db558f8` · SHA-256 `0711ce5f1d54db4a1ded0b8d25ed3807a8991b0b3bc0418cb11c5ccfb3d983fc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Simon Hudon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Simon Hudon, Patrick Massot, Eric Wieser
-/
import Mathlib.Algebra.GroupWithZero.Action.Prod
import Mathlib.Algebra.Module.Defs

/-!
# Prod instances for module and multiplicative actions

This file defines instances for binary product of modules
-/


variable {R : Type*} {M : Type*} {N : Type*}

namespace Prod

instance smulWithZero [Zero R] [Zero M] [Zero N] [SMulWithZero R M] [SMulWithZero R N] :
    SMulWithZero R (M × N) where
  smul_zero _ := by ext <;> exact smul_zero ..
  zero_smul _ := by ext <;> exact zero_smul ..

instance mulActionWithZero [MonoidWithZero R] [Zero M] [Zero N] [MulActionWithZero R M]
    [MulActionWithZero R N] : MulActionWithZero R (M × N) :=
  { Prod.mulAction, Prod.smulWithZero with }

instance instModule [Semiring R] [AddCommMonoid M] [AddCommMonoid N] [Module R M] [Module R N] :
    Module R (M × N) where
  add_smul _ _ _ := by ext <;> exact add_smul ..
  zero_smul _ := by ext <;> exact zero_smul ..

end Prod
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=19f3d0285888a3ba7abb47c2b2df204e049653e1e48c9af87ce8ae8f425a8b00 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Prod/Variant0711ce5f1d54db4a1ded0b8d25ed3807a8991b0b3bc0418cb11c5ccfb3d983fc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
