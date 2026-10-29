# Complete source: GRWTSK.Algebra.GroupTheory.Submonoid.Variant29e529b43dd7a0bfe73fb1c042bd932d4e6788efb7af80237c7aa9c3c71d468e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a7f43af971011355ac2c23762c8c3880ef8b1fc` · SHA-256 `29e529b43dd7a0bfe73fb1c042bd932d4e6788efb7af80237c7aa9c3c71d468e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 David Ang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Ang
-/
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.GroupTheory.GroupAction.Defs

/-!
# The subgroup of fixed points of an action
-/

variable (M α : Type*) [Monoid M]

section AddMonoid
variable [AddMonoid α] [DistribMulAction M α]

/-- The additive submonoid of elements fixed under the whole action. -/
def FixedPoints.addSubmonoid : AddSubmonoid α where
  carrier := MulAction.fixedPoints M α
  zero_mem' := smul_zero
  add_mem' ha hb _ := by rw [smul_add, ha, hb]

@[simp]
lemma FixedPoints.mem_addSubmonoid (a : α) : a ∈ addSubmonoid M α ↔ ∀ m : M, m • a = a :=
  Iff.rfl

end AddMonoid

section AddGroup
variable [AddGroup α] [DistribMulAction M α]

/-- The additive subgroup of elements fixed under the whole action. -/
def FixedPoints.addSubgroup : AddSubgroup α where
  __ := addSubmonoid M α
  neg_mem' ha _ := by rw [smul_neg, ha]

/-- The notation for `FixedPoints.addSubgroup`, chosen to resemble `αᴹ`. -/
notation α "^+" M:51 => FixedPoints.addSubgroup M α

@[simp]
lemma FixedPoints.mem_addSubgroup (a : α) : a ∈ α^+M ↔ ∀ m : M, m • a = a :=
  Iff.rfl

@[simp]
lemma FixedPoints.addSubgroup_toAddSubmonoid : (α^+M).toAddSubmonoid = addSubmonoid M α :=
  rfl

end AddGroup
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=036416f89645f9c845088191024bee0043facb51bd8d05ec468657f6e546092a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Submonoid/Variant29e529b43dd7a0bfe73fb1c042bd932d4e6788efb7af80237c7aa9c3c71d468e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
