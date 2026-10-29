-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.AddMonoidEndNatCastDef.Variant397d39a7526b35ca90082315fba19129b11d5b15bef7df194d7632ccf5d66a99","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"397d39a7526b35ca90082315fba19129b11d5b15bef7df194d7632ccf5d66a99","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.AddMonoidEndNatCastDef.Variant397d39a7526b35ca90082315fba19129b11d5b15bef7df194d7632ccf5d66a99","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"397d39a7526b35ca90082315fba19129b11d5b15bef7df194d7632ccf5d66a99","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Module/End.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2015 Nathaniel Thomas. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Nathaniel Thomas, Jeremy Avigad, Johannes Hölzl, Mario Carneiro
-/
import Mathlib.Algebra.Group.Hom.End
import Mathlib.Algebra.Module.NatInt

/-!
# Module structure and endomorphisms

In this file, we define `Module.toAddMonoidEnd`, which is `(•)` as a monoid homomorphism.
We use this to prove some results on scalar multiplication by integers.
-/


namespace GRWTSK.Algebra.LinearAlgebra.AddMonoidEndNatCastDef.Variant397d39a7526b35ca90082315fba19129b11d5b15bef7df194d7632ccf5d66a99

assert_not_exists RelIso Multiset Set.indicator Pi.single_smul₀ Field

open Function Set

universe u v

variable {R S M M₂ : Type*}

section AddCommMonoid

variable [Semiring R] [AddCommMonoid M] [Module R M] (r s : R) (x : M)

theorem AddMonoid.End.natCast_def (n : ℕ) :
    (↑n : AddMonoid.End M) = DistribMulAction.toAddMonoidEnd ℕ M n :=
  rfl

variable (R M)

/-- `(•)` as an `AddMonoidHom`.

This is a stronger version of `DistribMulAction.toAddMonoidEnd` -/
@[simps! apply_apply]
def Module.toAddMonoidEnd : R →+* AddMonoid.End M :=
  { DistribMulAction.toAddMonoidEnd R M with
    map_zero' := AddMonoidHom.ext fun r => by simp
    map_add' x y :=
      AddMonoidHom.ext fun r => by simp [(AddMonoidHom.add_apply), add_smul] }

/-- A convenience alias for `Module.toAddMonoidEnd` as an `AddMonoidHom`, usually to allow the
use of `AddMonoidHom.flip`. -/
def smulAddHom : R →+ M →+ M :=
  (Module.toAddMonoidEnd R M).toAddMonoidHom

variable {R M}

@[simp]
theorem smulAddHom_apply : smulAddHom R M r x = r • x :=
  rfl

variable {x}

lemma IsAddUnit.smul_left [Monoid S] [DistribMulAction S M] (hx : IsAddUnit x) (s : S) :
    IsAddUnit (s • x) :=
  hx.map (DistribMulAction.toAddMonoidHom M s)

variable {r} (x)

lemma IsAddUnit.smul_right (hr : IsAddUnit r) : IsAddUnit (r • x) :=
  hr.map (AddMonoidHom.flip (smulAddHom R M) x)

end AddCommMonoid

section AddCommGroup

variable (R M) [Semiring R] [AddCommGroup M]

theorem AddMonoid.End.intCast_def (z : ℤ) :
    (↑z : AddMonoid.End M) = DistribMulAction.toAddMonoidEnd ℤ M z :=
  rfl

end AddCommGroup

section AddCommGroup

variable [Ring R] [AddCommGroup M] [Module R M]

section

variable (R)

/-- `zsmul` is equal to any other module structure via a cast. -/
@[norm_cast]
lemma Int.cast_smul_eq_zsmul (n : ℤ) (b : M) : (n : R) • b = n • b :=
  have : ((smulAddHom R M).flip b).comp (Int.castAddHom R) = (smulAddHom ℤ M).flip b := by
    apply AddMonoidHom.ext_int
    simp
  DFunLike.congr_fun this n

end

/-- Convert back any exotic `ℤ`-smul to the canonical instance. This should not be needed since in
mathlib all `AddCommGroup`s should normally have exactly one `ℤ`-module structure by design. -/
theorem int_smul_eq_zsmul (h : Module ℤ M) (n : ℤ) (x : M) : @SMul.smul ℤ M h.toSMul n x = n • x :=
  Int.cast_smul_eq_zsmul ..

/-- All `ℤ`-module structures are equal. Not an instance since in mathlib all `AddCommGroup`
should normally have exactly one `ℤ`-module structure by design. -/
def AddCommGroup.uniqueIntModule : Unique (Module ℤ M) where
  default := by infer_instance
  uniq P := (Module.ext' P _) fun n => by convert int_smul_eq_zsmul P n

end AddCommGroup

theorem map_intCast_smul [AddCommGroup M] [AddCommGroup M₂] {F : Type*} [FunLike F M M₂]
    [AddMonoidHomClass F M M₂] (f : F) (R S : Type*) [Ring R] [Ring S] [Module R M] [Module S M₂]
    (x : ℤ) (a : M) :
    f ((x : R) • a) = (x : S) • f a := by simp only [Int.cast_smul_eq_zsmul, map_zsmul]

instance AddCommGroup.intIsScalarTower {R : Type u} {M : Type v} [Ring R] [AddCommGroup M]
    [Module R M] : IsScalarTower ℤ R M where
  smul_assoc n x y := ((smulAddHom R M).flip y).map_zsmul x n
