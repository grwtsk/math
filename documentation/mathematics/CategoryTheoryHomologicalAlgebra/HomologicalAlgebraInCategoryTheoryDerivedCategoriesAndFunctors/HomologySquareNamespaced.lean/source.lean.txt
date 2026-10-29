-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CokernelCofork.Varianta5b38d87c22ff7dc9a3ecbd79045865bc1067d4b04bf7e3553087363438eeefe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a5b38d87c22ff7dc9a3ecbd79045865bc1067d4b04bf7e3553087363438eeefe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.CokernelCofork.Varianta5b38d87c22ff7dc9a3ecbd79045865bc1067d4b04bf7e3553087363438eeefe","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"a5b38d87c22ff7dc9a3ecbd79045865bc1067d4b04bf7e3553087363438eeefe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Homology/Square.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Algebra.Homology.CommSq
import Mathlib.CategoryTheory.Limits.Shapes.Pullback.Square

/-!
# Relation between pullback/pushout squares and kernel/cokernel sequences

This file is the bundled counterpart of `Algebra.Homology.CommSq`.
The same results are obtained here for squares `sq : Square C` where
`C` is an additive category.

-/

namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CokernelCofork.Varianta5b38d87c22ff7dc9a3ecbd79045865bc1067d4b04bf7e3553087363438eeefe

namespace CategoryTheory

open Category Limits

namespace Square

variable {C : Type*} [Category C] [Preadditive C]
  (sq : Square C) [HasBinaryBiproduct sq.X₂ sq.X₃]

/-- The cokernel cofork attached to a commutative square in a preadditive category. -/
noncomputable abbrev cokernelCofork :
    CokernelCofork (biprod.lift sq.f₁₂ (-sq.f₁₃)) :=
  CokernelCofork.ofπ (biprod.desc sq.f₂₄ sq.f₃₄) (by simp [sq.fac])

/-- A commutative square in a preadditive category is a pushout square iff
the corresponding diagram `X₁ ⟶ X₂ ⊞ X₃ ⟶ X₄ ⟶ 0` makes `X₄` a cokernel. -/
noncomputable def isPushoutEquivIsColimitCokernelCofork :
    sq.IsPushout ≃ IsColimit sq.cokernelCofork :=
  Equiv.trans
    { toFun := fun h ↦ h.isColimit
      invFun := fun h ↦ IsPushout.mk _ h
      left_inv := fun _ ↦ rfl
      right_inv := fun _ ↦ Subsingleton.elim _ _ }
    sq.commSq.isColimitEquivIsColimitCokernelCofork

variable {sq} in
/-- The colimit cokernel cofork attached to a pushout square. -/
noncomputable def IsPushout.isColimitCokernelCofork (h : sq.IsPushout) :
    IsColimit sq.cokernelCofork :=
  h.isColimitEquivIsColimitCokernelCofork h.isColimit

/-- The kernel fork attached to a commutative square in a preadditive category. -/
noncomputable abbrev kernelFork :
    KernelFork (biprod.desc sq.f₂₄ (-sq.f₃₄)) :=
  KernelFork.ofι (biprod.lift sq.f₁₂ sq.f₁₃) (by simp [sq.fac])

/-- A commutative square in a preadditive category is a pullback square iff
the corresponding diagram `0 ⟶ X₁ ⟶ X₂ ⊞ X₃ ⟶ X₄ ⟶ 0` makes `X₁` a kernel. -/
noncomputable def isPullbackEquivIsLimitKernelFork :
    sq.IsPullback ≃ IsLimit sq.kernelFork :=
  Equiv.trans
    { toFun := fun h ↦ h.isLimit
      invFun := fun h ↦ IsPullback.mk _ h
      left_inv := fun _ ↦ rfl
      right_inv := fun _ ↦ Subsingleton.elim _ _ }
    sq.commSq.isLimitEquivIsLimitKernelFork

variable {sq} in
/-- The limit kernel fork attached to a pullback square. -/
noncomputable def IsPullback.isLimitKernelFork (h : sq.IsPullback) :
    IsLimit sq.kernelFork :=
  h.isLimitEquivIsLimitKernelFork h.isLimit

end Square

end CategoryTheory
