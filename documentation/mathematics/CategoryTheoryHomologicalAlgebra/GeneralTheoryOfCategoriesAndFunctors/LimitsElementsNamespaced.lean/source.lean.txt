-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LiftedConeElementPrime.Variant3ac5d6350a04f387a1c6ad1d058a5fc45338422596e0212968bc34f53157bf22","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3ac5d6350a04f387a1c6ad1d058a5fc45338422596e0212968bc34f53157bf22","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.LiftedConeElementPrime.Variant3ac5d6350a04f387a1c6ad1d058a5fc45338422596e0212968bc34f53157bf22","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"3ac5d6350a04f387a1c6ad1d058a5fc45338422596e0212968bc34f53157bf22","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Limits/Elements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Elements
import Mathlib.CategoryTheory.Limits.Types.Limits
import Mathlib.CategoryTheory.Limits.Creates
import Mathlib.CategoryTheory.Limits.Preserves.Limits

/-!
# Limits in the category of elements

We show that if `C` has limits of shape `I` and `A : C ⥤ Type w` preserves limits of shape `I`, then
the category of elements of `A` has limits of shape `I` and the forgetful functor
`π : A.Elements ⥤ C` creates them.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LiftedConeElementPrime.Variant3ac5d6350a04f387a1c6ad1d058a5fc45338422596e0212968bc34f53157bf22

universe w v₁ v u₁ u

namespace CategoryTheory

open Limits Opposite

variable {C : Type u} [Category.{v} C]

namespace CategoryOfElements

variable {A : C ⥤ Type w} {I : Type u₁} [Category.{v₁} I] [Small.{w} I]

namespace CreatesLimitsAux

variable (F : I ⥤ A.Elements)

/-- (implementation) A system `(Fi, fi)_i` of elements induces an element in `lim_i A(Fi)`. -/
noncomputable def liftedConeElement' : limit ((F ⋙ π A) ⋙ A) :=
  Types.Limit.mk _ (fun i => (F.obj i).2) (by simp)

@[simp]
lemma π_liftedConeElement' (i : I) :
    limit.π ((F ⋙ π A) ⋙ A) i (liftedConeElement' F) = (F.obj i).2 :=
  Types.Limit.π_mk _ _ _ _

variable [HasLimitsOfShape I C] [PreservesLimitsOfShape I A]

/-- (implementation) A system `(Fi, fi)_i` of elements induces an element in `A(lim_i Fi)`. -/
noncomputable def liftedConeElement : A.obj (limit (F ⋙ π A)) :=
  (preservesLimitIso A (F ⋙ π A)).inv (liftedConeElement' F)

@[simp]
lemma map_lift_mapCone (c : Cone F) :
    A.map (limit.lift (F ⋙ π A) ((π A).mapCone c)) c.pt.snd = liftedConeElement F := by
  apply (preservesLimitIso A (F ⋙ π A)).toEquiv.injective
  ext i
  have h₁ := congrFun (preservesLimitIso_hom_π A (F ⋙ π A) i)
    (A.map (limit.lift (F ⋙ π A) ((π A).mapCone c)) c.pt.snd)
  have h₂ := (c.π.app i).property
  simp_all [← FunctorToTypes.map_comp_apply, liftedConeElement]

@[simp]
lemma map_π_liftedConeElement (i : I) :
    A.map (limit.π (F ⋙ π A) i) (liftedConeElement F) = (F.obj i).snd := by
  have := congrFun
    (preservesLimitIso_inv_π A (F ⋙ π A) i) (liftedConeElement' F)
  simp_all [liftedConeElement]

/-- (implementation) The constructured limit cone. -/
@[simps]
noncomputable def liftedCone : Cone F where
  pt := ⟨_, liftedConeElement F⟩
  π :=
    { app := fun i => ⟨limit.π (F ⋙ π A) i, by simp⟩
      naturality := fun i i' f => by ext; simpa using (limit.w _ _).symm }

/-- (implementation) The constructed limit cone is a lift of the limit cone in `C`. -/
noncomputable def isValidLift : (π A).mapCone (liftedCone F) ≅ limit.cone (F ⋙ π A) :=
  Iso.refl _

/-- (implementation) The constuctured limit cone is a limit cone. -/
noncomputable def isLimit : IsLimit (liftedCone F) where
  lift s := ⟨limit.lift (F ⋙ π A) ((π A).mapCone s), by simp⟩
  uniq s m h := ext _ _ _ <| limit.hom_ext
    fun i => by simpa using congrArg Subtype.val (h i)

end CreatesLimitsAux

variable [HasLimitsOfShape I C] [PreservesLimitsOfShape I A]

section

open CreatesLimitsAux

noncomputable instance (F : I ⥤ A.Elements) : CreatesLimit F (π A) :=
  createsLimitOfReflectsIso' (limit.isLimit _) ⟨⟨liftedCone F, isValidLift F⟩, isLimit F⟩

end

noncomputable instance : CreatesLimitsOfShape I (π A) where

instance : HasLimitsOfShape I A.Elements :=
  hasLimitsOfShape_of_hasLimitsOfShape_createsLimitsOfShape (π A)

end CategoryOfElements

end CategoryTheory
