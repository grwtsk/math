# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Equiv.Variantd7112ef9b2219fc11b6a30a1c0f41a67a4d646add81710d92e80b78b83c29918

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78265850dda59344ec99790868b54bca5cd45dfa` · SHA-256 `d7112ef9b2219fc11b6a30a1c0f41a67a4d646add81710d92e80b78b83c29918`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Callum Sutton, Yury Kudryashov
-/
import Mathlib.Algebra.Group.Units.Equiv
import Mathlib.Algebra.GroupWithZero.Units.Basic

/-!
# Multiplication by a nonzero element in a `GroupWithZero` is a permutation.
-/

assert_not_exists DenselyOrdered Ring

variable {G₀ : Type*}

namespace Equiv
section GroupWithZero
variable [GroupWithZero G₀]

/-- In a `GroupWithZero` `G₀`, the unit group `G₀ˣ` is equivalent to the subtype of nonzero
elements. -/
@[simps] def _root_.unitsEquivNeZero : G₀ˣ ≃ {a : G₀ // a ≠ 0} where
  toFun a := ⟨a, a.ne_zero⟩
  invFun a := Units.mk0 _ a.prop
  left_inv _ := Units.ext rfl
  right_inv _ := rfl

/-- Left multiplication by a nonzero element in a `GroupWithZero` is a permutation of the
underlying type. -/
@[simps! -fullyApplied]
protected def mulLeft₀ (a : G₀) (ha : a ≠ 0) : Perm G₀ :=
  (Units.mk0 a ha).mulLeft

theorem _root_.mulLeft_bijective₀ (a : G₀) (ha : a ≠ 0) : Function.Bijective (a * · : G₀ → G₀) :=
  (Equiv.mulLeft₀ a ha).bijective

/-- Right multiplication by a nonzero element in a `GroupWithZero` is a permutation of the
underlying type. -/
@[simps! -fullyApplied]
protected def mulRight₀ (a : G₀) (ha : a ≠ 0) : Perm G₀ :=
  (Units.mk0 a ha).mulRight

theorem _root_.mulRight_bijective₀ (a : G₀) (ha : a ≠ 0) : Function.Bijective ((· * a) : G₀ → G₀) :=
  (Equiv.mulRight₀ a ha).bijective

/-- Right division by a nonzero element in a `GroupWithZero` is a permutation of the
underlying type. -/
@[simps! +simpRhs]
def divRight₀ (a : G₀) (ha : a ≠ 0) : Perm G₀ where
  toFun := (· / a)
  invFun := (· * a)
  left_inv _ := by simp [ha]
  right_inv _ := by simp [ha]

end GroupWithZero

section CommGroupWithZero
variable [CommGroupWithZero G₀]

/-- Left division by a nonzero element in a `CommGroupWithZero` is a permutation of the underlying
type. -/
@[simps! +simpRhs]
def divLeft₀ (a : G₀) (ha : a ≠ 0) : Perm G₀ where
  toFun := (a / ·)
  invFun := (a / ·)
  left_inv _ := by simp [ha]
  right_inv _ := by simp [ha]

end CommGroupWithZero
end Equiv
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c81b61cdd7b3543857fc999350792d8a7054ad7bbe603e30285c7f66831bab63 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variantd7112ef9b2219fc11b6a30a1c0f41a67a4d646add81710d92e80b78b83c29918.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
