# Complete source: GRWTSK.Algebra.UniversalAlgebra.Synonym.Variant0c549e7c94282567804cbdcf526cb2f1fb97eb8a1ef6184685ca5065a04d1f90

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a011c669888cb053560ce8f856cabcb8c2824c5` · SHA-256 `0c549e7c94282567804cbdcf526cb2f1fb97eb8a1ef6184685ca5065a04d1f90`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.Order.Group.Synonym

/-!
# Group with zero structure on the order type synonyms

Transfer algebraic instances from `α` to `αᵒᵈ` and `Lex α`.
-/


open Function

variable {α : Type*}


/-! ### Order dual -/


open OrderDual

instance [h : MulZeroClass α] : MulZeroClass αᵒᵈ := h

instance [h : MulZeroOneClass α] : MulZeroOneClass αᵒᵈ := h

instance [Mul α] [Zero α] [h : NoZeroDivisors α] : NoZeroDivisors αᵒᵈ := h

instance [h : SemigroupWithZero α] : SemigroupWithZero αᵒᵈ := h

instance [h : MonoidWithZero α] : MonoidWithZero αᵒᵈ := h

instance [h : CancelMonoidWithZero α] : CancelMonoidWithZero αᵒᵈ := h

instance [h : CommMonoidWithZero α] : CommMonoidWithZero αᵒᵈ := h

instance [h : CancelCommMonoidWithZero α] : CancelCommMonoidWithZero αᵒᵈ := h

instance [h : GroupWithZero α] : GroupWithZero αᵒᵈ := h

instance [h : CommGroupWithZero α] : CommGroupWithZero αᵒᵈ := h

/-! ### Lexicographic order -/


instance [h : MulZeroClass α] : MulZeroClass (Lex α) := h

instance [h : MulZeroOneClass α] : MulZeroOneClass (Lex α) := h

instance [Mul α] [Zero α] [h : NoZeroDivisors α] : NoZeroDivisors (Lex α) := h

instance [h : SemigroupWithZero α] : SemigroupWithZero (Lex α) := h

instance [h : MonoidWithZero α] : MonoidWithZero (Lex α) := h

instance [h : CancelMonoidWithZero α] : CancelMonoidWithZero (Lex α) := h

instance [h : CommMonoidWithZero α] : CommMonoidWithZero (Lex α) := h

instance [h : CancelCommMonoidWithZero α] : CancelCommMonoidWithZero (Lex α) := h

instance [h : GroupWithZero α] : GroupWithZero (Lex α) := h

instance [h : CommGroupWithZero α] : CommGroupWithZero (Lex α) := h
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5b364b34b05747445bbd425f002a212cedfc0c36f1eb4ed40bbd071747970465 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Synonym/Variant0c549e7c94282567804cbdcf526cb2f1fb97eb8a1ef6184685ca5065a04d1f90.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
