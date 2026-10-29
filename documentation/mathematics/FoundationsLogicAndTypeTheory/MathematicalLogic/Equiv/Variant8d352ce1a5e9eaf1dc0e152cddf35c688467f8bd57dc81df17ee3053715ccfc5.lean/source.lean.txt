-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.MulLeft.Variantd7112ef9b2219fc11b6a30a1c0f41a67a4d646add81710d92e80b78b83c29918","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d7112ef9b2219fc11b6a30a1c0f41a67a4d646add81710d92e80b78b83c29918","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.MulLeft.Variantd7112ef9b2219fc11b6a30a1c0f41a67a4d646add81710d92e80b78b83c29918","mathematical_subject":"Logic.Foundations","original_sha256":"d7112ef9b2219fc11b6a30a1c0f41a67a4d646add81710d92e80b78b83c29918","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/GroupWithZero/Units/Equiv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.MulLeft.Variantd7112ef9b2219fc11b6a30a1c0f41a67a4d646add81710d92e80b78b83c29918

assert_not_exists DenselyOrdered Ring

variable {G₀ : Type*}

namespace Equiv
section GroupWithZero
variable [GroupWithZero G₀]

/-- In a `GroupWithZero` `G₀`, the unit group `G₀ˣ` is equivalent to the subtype of nonzero
elements. -/
@[simps] def _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.MulLeft.Variantd7112ef9b2219fc11b6a30a1c0f41a67a4d646add81710d92e80b78b83c29918.unitsEquivNeZero : G₀ˣ ≃ {a : G₀ // a ≠ 0} where
  toFun a := ⟨a, a.ne_zero⟩
  invFun a := Units.mk0 _ a.prop
  left_inv _ := Units.ext rfl
  right_inv _ := rfl

/-- Left multiplication by a nonzero element in a `GroupWithZero` is a permutation of the
underlying type. -/
@[simps! -fullyApplied]
protected def mulLeft₀ (a : G₀) (ha : a ≠ 0) : Perm G₀ :=
  (Units.mk0 a ha).mulLeft

theorem _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.MulLeft.Variantd7112ef9b2219fc11b6a30a1c0f41a67a4d646add81710d92e80b78b83c29918.mulLeft_bijective₀ (a : G₀) (ha : a ≠ 0) : Function.Bijective (a * · : G₀ → G₀) :=
  (Equiv.mulLeft₀ a ha).bijective

/-- Right multiplication by a nonzero element in a `GroupWithZero` is a permutation of the
underlying type. -/
@[simps! -fullyApplied]
protected def mulRight₀ (a : G₀) (ha : a ≠ 0) : Perm G₀ :=
  (Units.mk0 a ha).mulRight

theorem _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.MulLeft.Variantd7112ef9b2219fc11b6a30a1c0f41a67a4d646add81710d92e80b78b83c29918.mulRight_bijective₀ (a : G₀) (ha : a ≠ 0) : Function.Bijective ((· * a) : G₀ → G₀) :=
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
