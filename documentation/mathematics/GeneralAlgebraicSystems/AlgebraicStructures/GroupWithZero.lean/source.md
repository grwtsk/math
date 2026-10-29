# Group With Zero — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `929c02db5fa6d5d122d94d16fe50af8ec64dfb8a` · SHA-256 `37d5f49aaedcff4776734b3752ffbdfaf3c2c40ec83e227af8b66436e48f541c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Callum Sutton, Yury Kudryashov
-/
import Mathlib.Algebra.Hom.Equiv.Units.Basic
import Mathlib.Algebra.GroupWithZero.Units.Basic

#align_import algebra.hom.equiv.units.group_with_zero from "leanprover-community/mathlib"@"655994e298904d7e5bbd1e18c95defd7b543eb94"

/-!
# Multiplication by a nonzero element in a `GroupWithZero` is a permutation.
-/


variable {G : Type*}

namespace Equiv

section GroupWithZero

variable [GroupWithZero G]

/-- Left multiplication by a nonzero element in a `GroupWithZero` is a permutation of the
underlying type. -/
@[simps! (config := { fullyApplied := false })]
protected def mulLeft₀ (a : G) (ha : a ≠ 0) : Perm G :=
  (Units.mk0 a ha).mulLeft
#align equiv.mul_left₀ Equiv.mulLeft₀
#align equiv.mul_left₀_symm_apply Equiv.mulLeft₀_symm_apply
#align equiv.mul_left₀_apply Equiv.mulLeft₀_apply

theorem _root_.mulLeft_bijective₀ (a : G) (ha : a ≠ 0) : Function.Bijective ((· * ·) a : G → G) :=
  (Equiv.mulLeft₀ a ha).bijective
#align mul_left_bijective₀ mulLeft_bijective₀

/-- Right multiplication by a nonzero element in a `GroupWithZero` is a permutation of the
underlying type. -/
@[simps! (config := { fullyApplied := false })]
protected def mulRight₀ (a : G) (ha : a ≠ 0) : Perm G :=
  (Units.mk0 a ha).mulRight
#align equiv.mul_right₀ Equiv.mulRight₀
#align equiv.mul_right₀_symm_apply Equiv.mulRight₀_symm_apply
#align equiv.mul_right₀_apply Equiv.mulRight₀_apply

theorem _root_.mulRight_bijective₀ (a : G) (ha : a ≠ 0) : Function.Bijective ((· * a) : G → G) :=
  (Equiv.mulRight₀ a ha).bijective
#align mul_right_bijective₀ mulRight_bijective₀

end GroupWithZero

end Equiv
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ea67c1b5e7669656a5adbe8c5fe5cd17b63617dd6a831d88c6aa09c5476621fb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GroupWithZero/Variant37d5f49aaedcff4776734b3752ffbdfaf3c2c40ec83e227af8b66436e48f541c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
