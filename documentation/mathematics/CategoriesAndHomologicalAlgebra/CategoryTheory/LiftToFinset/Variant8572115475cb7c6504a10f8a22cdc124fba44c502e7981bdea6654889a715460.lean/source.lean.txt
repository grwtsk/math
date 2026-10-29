-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FiniteSubcoproductsCocone.Varianta2f506c0ac251d43b73bdb84369c789cff5144d7a273dcd33000318c46f1056c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a2f506c0ac251d43b73bdb84369c789cff5144d7a273dcd33000318c46f1056c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FiniteSubcoproductsCocone.Varianta2f506c0ac251d43b73bdb84369c789cff5144d7a273dcd33000318c46f1056c","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"a2f506c0ac251d43b73bdb84369c789cff5144d7a273dcd33000318c46f1056c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Preadditive/LiftToFinset.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

public import Mathlib.CategoryTheory.Limits.Constructions.Filtered
public import Mathlib.CategoryTheory.Preadditive.Basic
public import Mathlib.Algebra.BigOperators.Group.Finset.Basic

/-!
# Additional results about the `liftToFinset` construction

If `f` is a family of objects of `C`, then there is a canonical cocone whose cocone point is the
coproduct of `f` and whose legs are given by the inclusions of the finite subcoproducts. If `C`
is preadditive, then we can describe the legs of this cocone as finite sums of projections followed
by inclusions.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FiniteSubcoproductsCocone.Varianta2f506c0ac251d43b73bdb84369c789cff5144d7a273dcd33000318c46f1056c

public section

universe w v u


namespace CategoryTheory.Limits

variable {C : Type u} [Category.{v} C] [Preadditive C]

namespace CoproductsFromFiniteFiltered

variable [HasFiniteCoproducts C]

set_option backward.defeqAttrib.useBackward true in
theorem finiteSubcoproductsCocone_ι_app_eq_sum {α : Type w} [DecidableEq α] (f : α → C)
    [HasCoproduct f] (S : Finset (Discrete α)) :
    (finiteSubcoproductsCocone f).ι.app S = ∑ a ∈ S.attach, Sigma.π _ a ≫ Sigma.ι _ a.1.as := by
  dsimp only [liftToFinsetObj_obj, Discrete.functor_obj_eq_as, finiteSubcoproductsCocone_pt,
    Functor.const_obj_obj, finiteSubcoproductsCocone_ι_app]
  ext v
  simp only [colimit.ι_desc, Cofan.mk_pt, Cofan.mk_ι_app, Preadditive.comp_sum]
  rw [Finset.sum_eq_single v]
  · simp
  · intro b hb hb₁
    rw [Sigma.ι_π_of_ne_assoc _ (Ne.symm hb₁), zero_comp]
  · simp

end CoproductsFromFiniteFiltered

namespace ProductsFromFiniteCofiltered

variable [HasFiniteProducts C]

set_option backward.defeqAttrib.useBackward true in
theorem finiteSubproductsCocone_π_app_eq_sum {α : Type w} [DecidableEq α] (f : α → C) [HasProduct f]
    (S : (Finset (Discrete α))ᵒᵖ) :
    (finiteSubproductsCone f).π.app S =
      ∑ a ∈ S.unop.attach, Pi.π f a.1.as ≫ Pi.ι (fun a => f a.1.as) a := by
  dsimp only [finiteSubproductsCone_pt, Functor.const_obj_obj, liftToFinsetObj_obj,
    Discrete.functor_obj_eq_as, finiteSubproductsCone_π_app]
  ext v
  simp only [limit.lift_π, Fan.mk_pt, Fan.mk_π_app, Preadditive.sum_comp, Category.assoc]
  rw [Finset.sum_eq_single v]
  · simp
  · intro b hb hb₁
    rw [Pi.ι_π_of_ne _ hb₁, comp_zero]
  · simp

end ProductsFromFiniteCofiltered

end CategoryTheory.Limits
