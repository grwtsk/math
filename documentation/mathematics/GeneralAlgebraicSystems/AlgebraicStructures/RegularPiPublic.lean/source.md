# Regular Pi Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `108bf1c486d92da1ea1beded019307671fbd355b` · SHA-256 `6737f4b341a6a7cdfa8704477958236a8b084bc0cb4e9b21684c8ed396e55808`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
module

public import Mathlib.Algebra.Regular.SMul
public import Mathlib.Algebra.Notation.Pi.Basic

/-!
# Results about `IsRegular` and pi types
-/

public section

variable {ι α : Type*} {R : ι → Type*}

namespace Pi

section
variable [∀ i, Mul (R i)]

@[to_additive (attr := simp)]
theorem isLeftRegular_iff {a : ∀ i, R i} : IsLeftRegular a ↔ ∀ i, IsLeftRegular (a i) :=
  have (i : _) : Nonempty (R i) := ⟨a i⟩; Pi.map_injective

@[to_additive (attr := simp)]
theorem isRightRegular_iff {a : ∀ i, R i} : IsRightRegular a ↔ ∀ i, IsRightRegular (a i) :=
  have (i : _) : Nonempty (R i) := ⟨a i⟩; .symm <| Pi.map_injective.symm

@[to_additive (attr := simp)]
theorem isRegular_iff {a : ∀ i, R i} : IsRegular a ↔ ∀ i, IsRegular (a i) := by
  simp [_root_.isRegular_iff, forall_and]

end

@[simp]
theorem isSMulRegular_iff [∀ i, SMul α (R i)] {r : α} [∀ i, Nonempty (R i)] :
    IsSMulRegular (∀ i, R i) r ↔ ∀ i, IsSMulRegular (R i) r :=
  Pi.map_injective

end Pi
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2ff0ab68ead3f62829f8d11d0acc3f39f1353b800b4d3a8a9e39ac1896a10157 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Pi/Variant6737f4b341a6a7cdfa8704477958236a8b084bc0cb4e9b21684c8ed396e55808.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
