# Complete source: GRWTSK.Algebra.ZMod.Variant04fff06083fbc99a889da9563c5390507a8078ee5d56192fb9b208cc6e921740

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b0a67667b68b364af8ccb0c3c3e34ea7bbdceb1` · SHA-256 `04fff06083fbc99a889da9563c5390507a8078ee5d56192fb9b208cc6e921740`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes
-/
import Mathlib.Algebra.Field.Basic
import Mathlib.Data.ZMod.Basic

/-!
# `ZMod p` is a field
-/

namespace ZMod
variable (p : ℕ) [hp : Fact p.Prime]

private theorem mul_inv_cancel_aux (a : ZMod p) (h : a ≠ 0) : a * a⁻¹ = 1 := by
  obtain ⟨k, rfl⟩ := natCast_zmod_surjective a
  apply coe_mul_inv_eq_one
  apply Nat.Coprime.symm
  rwa [Nat.Prime.coprime_iff_not_dvd Fact.out, ← CharP.cast_eq_zero_iff (ZMod p)]

/-- Field structure on `ZMod p` if `p` is prime. -/
instance : Field (ZMod p) where
  mul_inv_cancel := mul_inv_cancel_aux p
  inv_zero := inv_zero p
  nnqsmul := _
  nnqsmul_def := fun _ _ => rfl
  qsmul := _
  qsmul_def := fun _ _ => rfl

/-- `ZMod p` is an integral domain when `p` is prime. -/
instance : IsDomain (ZMod p) := by
  -- We need `cases p` here in order to resolve which `CommRing` instance is being used.
  cases p
  · exact (Nat.not_prime_zero hp.out).elim
  exact @Field.isDomain (ZMod _) (inferInstanceAs (Field (ZMod _)))

end ZMod
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=98f58704393546d055d664df02ee5d821ce369c2d6a2945374e4f4076c3173b4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/ZMod/Variant04fff06083fbc99a889da9563c5390507a8078ee5d56192fb9b208cc6e921740.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
