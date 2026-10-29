-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GrpCatShrinkFunctor.Variantf1cf3879ce34680435f4d84efaf77df1920f4878fe20717c651719635c93f61f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f1cf3879ce34680435f4d84efaf77df1920f4878fe20717c651719635c93f61f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.GrpCatShrinkFunctor.Variantf1cf3879ce34680435f4d84efaf77df1920f4878fe20717c651719635c93f61f","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"f1cf3879ce34680435f4d84efaf77df1920f4878fe20717c651719635c93f61f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Category/Grp/Shrink.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Christian Merten. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christian Merten
-/
module

public import Mathlib.Algebra.Category.Grp.Basic
public import Mathlib.CategoryTheory.ShrinkYoneda
public import Mathlib.Algebra.Group.Shrink

/-!
# Shrinking a functor to `GrpCat`

For a functor `C ⥤ GrpCat.{w'}` with `w`-small image, we shrink to a functor `C ⥤ GrpCat.{w}`.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GrpCatShrinkFunctor.Variantf1cf3879ce34680435f4d84efaf77df1920f4878fe20717c651719635c93f61f

@[expose] public section

universe w w' v u

open CategoryTheory

variable {C : Type u} [Category.{v} C]

instance (F : C ⥤ GrpCat.{w'}) [∀ X, Small.{w} (F.obj X)] :
    FunctorToTypes.Small.{w} (F ⋙ forget _) :=
  fun X ↦ inferInstanceAs <| Small.{w} (F.obj X)

/-- A functor `F : C ⥤ GrpCat.{w'}` factors through `GrpCat.{w}` if all the
monoids are `w`-small. -/
@[simps, pp_with_univ]
noncomputable def GrpCat.shrinkFunctor (F : C ⥤ GrpCat.{w'}) [∀ X, Small.{w} (F.obj X)] :
    C ⥤ GrpCat.{w} where
  obj X := ↧(Shrink.{w} (F.obj X))
  map {X Y} f := GrpCat.ofHom <|
    (Shrink.mulEquiv.symm.toMonoidHom.comp (F.map f).hom).comp Shrink.mulEquiv.toMonoidHom

/-- The natural transformation `GrpCat.shrinkFunctor.{w} F ⟶ GrpCat.shrinkFunctor.{w} G`
induces by a natural transformation `τ : F ⟶ G` between `w`-small functors to monoids. -/
@[simps]
noncomputable def GrpCat.shrinkFunctorMap {F G : C ⥤ GrpCat.{w'}} (τ : F ⟶ G)
    [∀ X, Small.{w} (F.obj X)] [∀ X, Small.{w} (G.obj X)] :
    GrpCat.shrinkFunctor.{w} F ⟶ GrpCat.shrinkFunctor.{w} G where
  app X := GrpCat.ofHom <|
    (Shrink.mulEquiv.symm.toMonoidHom.comp (τ.app X).hom).comp Shrink.mulEquiv.toMonoidHom
  naturality X Y f := by
    ext x
    exact
      congr($((FunctorToTypes.shrinkMap.{w} (Functor.whiskerRight τ (forget _))).naturality f) x)
