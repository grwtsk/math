# Complete source: GRWTSK.Algebra.LinearAlgebra.Shrink.Variant744261ba9935d49293ff6db4d2d124253fc060a79baee32bced77813c536628d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cca69a978adbdafe29dde012568a09fd2212221a` · SHA-256 `744261ba9935d49293ff6db4d2d124253fc060a79baee32bced77813c536628d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Mathlib.Algebra.Group.Shrink
public import Mathlib.Algebra.Module.TransferInstance

/-!
# Transfer module and algebra structures from `α` to `Shrink α`
-/

@[expose] public noncomputable section

universe v
variable {R α : Type*} [Small.{v} α] [Semiring R] [AddCommMonoid α] [Module R α]

namespace Shrink

instance : Module R (Shrink.{v} α) := addEquiv.module R

variable (R α) in
/-- Shrinking `α` to a smaller universe preserves module structure. -/
@[simps!]
def linearEquiv : Shrink.{v} α ≃ₗ[R] α := (addEquiv (α := α)).linearEquiv R

end Shrink
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2be3c51d35d597746226a0bdd36aa0b7361bd35358b9f83db8410375447f7b41 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Shrink/Variant744261ba9935d49293ff6db4d2d124253fc060a79baee32bced77813c536628d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
