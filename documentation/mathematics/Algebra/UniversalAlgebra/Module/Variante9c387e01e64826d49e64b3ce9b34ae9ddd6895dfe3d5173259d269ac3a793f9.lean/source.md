# Complete source: GRWTSK.Algebra.UniversalAlgebra.Module.Variante9c387e01e64826d49e64b3ce9b34ae9ddd6895dfe3d5173259d269ac3a793f9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cb994eb56b817875ec81ab83bb09e0bef12b3786` · SHA-256 `e9c387e01e64826d49e64b3ce9b34ae9ddd6895dfe3d5173259d269ac3a793f9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Algebra.Small.Group
import Mathlib.Algebra.Small.Ring

/-!
# Transfer module and algebra structures from `α` to `Shrink α`.
-/

noncomputable section

variable {α β : Type*}

instance [Semiring α] [AddCommMonoid β] [Module α β] [Small β] : Module α (Shrink β) :=
  (equivShrink _).symm.module α

/-- A small module is linearly equivalent to its small model. -/
def linearEquivShrink (α β) [Semiring α] [AddCommMonoid β] [Module α β] [Small β] :
    β ≃ₗ[α] Shrink β :=
  ((equivShrink β).symm.linearEquiv α).symm

instance [CommSemiring α] [Semiring β] [Algebra α β] [Small β] : Algebra α (Shrink β) :=
  (equivShrink _).symm.algebra α

/-- A small algebra is algebra equivalent to its small model. -/
def algEquivShrink (α β) [CommSemiring α] [Semiring β] [Algebra α β] [Small β] :
    β ≃ₐ[α] Shrink β :=
  ((equivShrink β).symm.algEquiv α).symm
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=df4f3ef9b2945262306003318b0bafc6755b6ad8c469e595ba24e6de7cb7e0c7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Module/Variante9c387e01e64826d49e64b3ce9b34ae9ddd6895dfe3d5173259d269ac3a793f9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
