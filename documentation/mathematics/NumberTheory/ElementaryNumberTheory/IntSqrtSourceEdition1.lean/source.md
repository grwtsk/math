# Int Sqrt Source Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `085727bc7de5065f41f5678d7dab9e019de1d7ff` · SHA-256 `dcaf9f07177d9ca45ae3fde57f73ad6ae4d56e40290df82b7181c9753d2f5ba7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/
import Mathlib.Data.Nat.Sqrt
import Mathlib.Tactic.Common

/-!
# Square root of integers

This file defines the square root function on integers. `Int.sqrt z` is the greatest integer `r`
such that `r * r ≤ z`. If `z ≤ 0`, then `Int.sqrt z = 0`.
-/


namespace Int

/-- `sqrt z` is the square root of an integer `z`. If `z` is positive, it returns the largest
integer `r` such that `r * r ≤ n`. If it is negative, it returns `0`. For example, `sqrt (-1) = 0`,
`sqrt 1 = 1`, `sqrt 2 = 1` -/
@[pp_nodot]
def sqrt (z : ℤ) : ℤ :=
  Nat.sqrt <| Int.toNat z

theorem sqrt_eq (n : ℤ) : sqrt (n * n) = n.natAbs := by
  rw [sqrt, ← natAbs_mul_self, toNat_natCast, Nat.sqrt_eq]

theorem exists_mul_self (x : ℤ) : (∃ n, n * n = x) ↔ sqrt x * sqrt x = x :=
  ⟨fun ⟨n, hn⟩ => by rw [← hn, sqrt_eq, ← Int.natCast_mul, natAbs_mul_self], fun h => ⟨sqrt x, h⟩⟩

theorem sqrt_nonneg (n : ℤ) : 0 ≤ sqrt n :=
  natCast_nonneg _

@[simp, norm_cast]
theorem sqrt_natCast (n : ℕ) : Int.sqrt (n : ℤ) = Nat.sqrt n := by rw [sqrt, toNat_natCast]

@[simp]
theorem sqrt_ofNat (n : ℕ) : Int.sqrt ofNat(n) = Nat.sqrt ofNat(n) :=
  sqrt_natCast _

end Int
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=92b43d7532f130bad55edf0bb4f962aca9f419237c1ff795a7d15721226455c9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt/Variantdcaf9f07177d9ca45ae3fde57f73ad6ae4d56e40290df82b7181c9753d2f5ba7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
