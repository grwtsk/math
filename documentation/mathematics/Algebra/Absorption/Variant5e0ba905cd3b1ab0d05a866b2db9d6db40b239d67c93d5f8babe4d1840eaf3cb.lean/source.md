# Complete source: GRWTSK.Algebra.Absorption.Variant5e0ba905cd3b1ab0d05a866b2db9d6db40b239d67c93d5f8babe4d1840eaf3cb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0b7262b71debd4a80c6d09cb1330d125c03006c2` · SHA-256 `5e0ba905cd3b1ab0d05a866b2db9d6db40b239d67c93d5f8babe4d1840eaf3cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Boolean.Identity

/-!
# Boolean absorption neighborhood

Absorption and left-commutation follow from the distributive lattice already
carried by `BooleanAlgebra`.
-/

namespace Mathematics.Boolean

variable {B : Type*} [Algebra B]

@[simp] theorem join_absorption (a b : B) :
    a ⊔ (a ⊓ b) = a := by simp

@[simp] theorem meet_absorption (a b : B) :
    a ⊓ (a ⊔ b) = a := by simp

theorem join_left_commutative (a b c : B) :
    a ⊔ (b ⊔ c) = b ⊔ (a ⊔ c) :=
  sup_left_comm a b c

theorem meet_left_commutative (a b c : B) :
    a ⊓ (b ⊓ c) = b ⊓ (a ⊓ c) :=
  inf_left_comm a b c

end Mathematics.Boolean
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=452872bbd3fb6271119d007e3e500eaecb92f0344cd8b99d0b31b720547e5af7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Absorption/Variant5e0ba905cd3b1ab0d05a866b2db9d6db40b239d67c93d5f8babe4d1840eaf3cb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
