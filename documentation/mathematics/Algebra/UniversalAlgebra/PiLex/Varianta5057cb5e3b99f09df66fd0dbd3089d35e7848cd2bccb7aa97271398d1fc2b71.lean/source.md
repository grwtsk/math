# Complete source: GRWTSK.Algebra.UniversalAlgebra.PiLex.Varianta5057cb5e3b99f09df66fd0dbd3089d35e7848cd2bccb7aa97271398d1fc2b71

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f0d895b498b748ecc7cdb49a0252a878b43c4b9e` · SHA-256 `a5057cb5e3b99f09df66fd0dbd3089d35e7848cd2bccb7aa97271398d1fc2b71`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes
-/
import Mathlib.Algebra.Group.Pi.Basic
import Mathlib.Algebra.Order.Group.Synonym
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Order.PiLex

/-!
# Lexicographic product of algebraic order structures

This file proves that the lexicographic order on pi types is compatible with the pointwise algebraic
operations.
-/

namespace Pi.Lex
variable {ι : Type*} {α : ι → Type*} [LinearOrder ι]

@[to_additive]
instance isOrderedCancelMonoid [∀ i, CommMonoid (α i)] [∀ i, PartialOrder (α i)]
    [∀ i, IsOrderedCancelMonoid (α i)] :
    IsOrderedCancelMonoid (Lex (∀ i, α i)) where
  mul_le_mul_left _ _ hxy z :=
    hxy.elim (fun hxyz => hxyz ▸ le_rfl) fun ⟨i, hi⟩ =>
      Or.inr ⟨i, fun j hji => congr_arg (z j * ·) (hi.1 j hji), mul_lt_mul_left' hi.2 _⟩
  le_of_mul_le_mul_left _ _ _ hxyz :=
    hxyz.elim (fun h => (mul_left_cancel h).le) fun ⟨i, hi⟩ =>
      Or.inr ⟨i, fun j hj => (mul_left_cancel <| hi.1 j hj), lt_of_mul_lt_mul_left' hi.2⟩

end Pi.Lex
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bb23916c8c7c9253d53f850280b49dff3e58775b22a1f94b5401e6b16e923915 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/PiLex/Varianta5057cb5e3b99f09df66fd0dbd3089d35e7848cd2bccb7aa97271398d1fc2b71.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
