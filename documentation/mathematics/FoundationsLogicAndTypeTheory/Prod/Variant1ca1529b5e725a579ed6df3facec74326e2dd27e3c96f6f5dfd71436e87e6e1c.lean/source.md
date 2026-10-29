# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Prod.Variant1ca1529b5e725a579ed6df3facec74326e2dd27e3c96f6f5dfd71436e87e6e1c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d7f9e989bb4a97a7ad0237cbbca118098a92811` · SHA-256 `1ca1529b5e725a579ed6df3facec74326e2dd27e3c96f6f5dfd71436e87e6e1c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Data.Nat.Cast.Prod

/-!
# The product of two `AddGroupWithOne`s.
-/


namespace Prod

variable {α β : Type*} [AddGroupWithOne α] [AddGroupWithOne β]

instance : AddGroupWithOne (α × β) :=
  { Prod.instAddMonoidWithOne, Prod.instAddGroup with
    intCast := fun n => (n, n)
    intCast_ofNat := fun _ => by ext <;> simp
    intCast_negSucc := fun _ => by ext <;> simp }

@[simp]
theorem fst_intCast (n : ℤ) : (n : α × β).fst = n :=
  rfl

@[simp]
theorem snd_intCast (n : ℤ) : (n : α × β).snd = n :=
  rfl

end Prod
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4e528a0066c68c27c6cc9b1ccfd523326a164965e2ae15c5675c6463caae3253 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Prod/Variant1ca1529b5e725a579ed6df3facec74326e2dd27e3c96f6f5dfd71436e87e6e1c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
