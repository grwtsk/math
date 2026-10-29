# Complete source: GRWTSK.Algebra.AlgebraicallyClosed.Variantffe88bff65cca012245a8e2c2961a8442d2428597a77c3ea36f524d1bc67d0b7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8df6eede274d0d5d7472df17e0827416a184e3c2` · SHA-256 `ffe88bff65cca012245a8e2c2961a8442d2428597a77c3ea36f524d1bc67d0b7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Michael Stoll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Stoll
-/
import Mathlib.RingTheory.RootsOfUnity.EnoughRootsOfUnity
import Mathlib.NumberTheory.Cyclotomic.Basic

/-!
# Instances for HasEnoughRootsOfUnity

We provide an instance for `HasEnoughRootsOfUnity F n` when `F` is an algebraically closed field
and `n` is not divisible by the characteristic. In particular, when `F` has characteristic zero,
this hold for all `n ≠ 0`.
-/

namespace IsAlgClosed

/-- An algebraically closed field `F` satisfies `HasEnoughRootsOfUnity F n` for all `n`
that are not divisible by the characteristic of `F`. -/
instance hasEnoughRootsOfUnity (F : Type*) [Field F] [IsAlgClosed F] (n : ℕ) [i : NeZero (n : F)] :
    HasEnoughRootsOfUnity F n where
  prim := by
    have : NeZero n := .of_neZero_natCast F
    have := isCyclotomicExtension {⟨n, NeZero.pos n⟩} F fun _ h ↦ Set.mem_singleton_iff.mp h ▸ i
    exact IsCyclotomicExtension.exists_isPrimitiveRoot (S := {(⟨n, NeZero.pos n⟩ : ℕ+)}) F _ rfl
  cyc :=
    have : NeZero n := .of_neZero_natCast F
    rootsOfUnity.isCyclic F n

end IsAlgClosed
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=66515f29bdc73aa62ec8875576226f91e7947f075d4a871a26b4169fe607871c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/AlgebraicallyClosed/Variantffe88bff65cca012245a8e2c2961a8442d2428597a77c3ea36f524d1bc67d0b7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
