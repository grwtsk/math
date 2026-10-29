# Carrier — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5c54b06b6307261da6cce9780dbe14444e158757` · SHA-256 `97355ad7a9620c1e776c42a88cfa86620e61472af58880d4d7bbdc53b9b53d9a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Order.BooleanAlgebra.Basic

/-!
# Canonical Boolean carrier

The retained corpus introduced a second complemented distributive lattice
class.  This reconstruction uses Mathlib's canonical `BooleanAlgebra`; the
source operations become `⊔`, `⊓`, complement, `⊥`, and `⊤`.
-/

namespace Mathematics.Boolean

/-- Canonical replacement for the corpus-local Boolean algebra class. -/
abbrev Algebra (B : Type*) := _root_.BooleanAlgebra B

/-- The source's hand-built Boolean instance is already canonical in Mathlib. -/
abbrev boolAlgebra : Algebra Bool := inferInstance

@[simp] theorem bool_join (a b : Bool) :
    a ⊔ b = (a || b) := by
  cases a <;> cases b <;> rfl

@[simp] theorem bool_meet (a b : Bool) :
    a ⊓ b = (a && b) := by
  cases a <;> cases b <;> rfl

@[simp] theorem bool_complement (a : Bool) :
    aᶜ = !a := by
  cases a <;> rfl

end Mathematics.Boolean
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=689757e07e28fb38dfcb32323f65d1c879581151affeabe4790aa717fe63b568 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Carrier/Variant97355ad7a9620c1e776c42a88cfa86620e61472af58880d4d7bbdc53b9b53d9a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
