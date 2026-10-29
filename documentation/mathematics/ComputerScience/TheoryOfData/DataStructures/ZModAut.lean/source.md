# ZMod Aut — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `13d5333aa183c42193883832280c15fb1b309353` · SHA-256 `053fc73f50e753f391b9895ce842fd88abdee8a585216a5222e3179db5d4393c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Thomas Browning. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Thomas Browning
-/
import Mathlib.Algebra.Ring.AddAut
import Mathlib.Data.ZMod.Basic

/-!
# Automorphism Group of `ZMod`.
-/

assert_not_exists Field TwoSidedIdeal

namespace ZMod

variable (n : ℕ)

/-- The automorphism group of `ZMod n` is isomorphic to the group of units of `ZMod n`. -/
@[simps]
def AddAutEquivUnits : AddAut (ZMod n) ≃* (ZMod n)ˣ :=
  have h (f : AddAut (ZMod n)) (x : ZMod n) : f 1 * x = f x := by
    rw [mul_comm, ← x.intCast_zmod_cast, ← zsmul_eq_mul, ← map_zsmul, zsmul_one]
  { toFun := fun f ↦ Units.mkOfMulEqOne (f 1) (f⁻¹ 1) ((h f _).trans (f.inv_apply_self _ _))
    invFun := AddAut.mulLeft
    left_inv := fun f ↦ by simp [DFunLike.ext_iff, Units.smul_def, h]
    right_inv := fun x ↦ by simp [Units.ext_iff, Units.smul_def]
    map_mul' := fun f g ↦ by simp [Units.ext_iff, h] }

end ZMod
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0a5f4157827b8d9a689df274a04cc4e6aa9a27e38afee11cb619f952d7e9ce1c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Aut/Variant053fc73f50e753f391b9895ce842fd88abdee8a585216a5222e3179db5d4393c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
