-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Grpd.Variantbdc99b6f16bffb171a0b6a47a6e532c4bf28f8168f5b0d591d0aacb79b190331","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bdc99b6f16bffb171a0b6a47a6e532c4bf28f8168f5b0d591d0aacb79b190331","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Grpd.Variantbdc99b6f16bffb171a0b6a47a6e532c4bf28f8168f5b0d591d0aacb79b190331","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"bdc99b6f16bffb171a0b6a47a6e532c4bf28f8168f5b0d591d0aacb79b190331","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Category/Grpd.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.CategoryTheory.SingleObj
import Mathlib.CategoryTheory.Limits.Shapes.Products
import Mathlib.CategoryTheory.Pi.Basic
import Mathlib.CategoryTheory.Limits.IsLimit


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Grpd.Variantbdc99b6f16bffb171a0b6a47a6e532c4bf28f8168f5b0d591d0aacb79b190331

#align_import category_theory.category.Groupoid from "leanprover-community/mathlib"@"c9c9fa15fec7ca18e9ec97306fb8764bfe988a7e"

/-!
# Category of groupoids

This file contains the definition of the category `Grpd` of all groupoids.
In this category objects are groupoids and morphisms are functors
between these groupoids.

We also provide two “forgetting” functors: `objects : Grpd ⥤ Type`
and `forgetToCat : Grpd ⥤ Cat`.

## Implementation notes

Though `Grpd` is not a concrete category, we use `Bundled` to define
its carrier type.
-/


universe v u

namespace CategoryTheory

-- intended to be used with explicit universe parameters
/-- Category of groupoids -/
@[nolint checkUnivs]
def Grpd :=
  Bundled Groupoid.{v, u}
set_option linter.uppercaseLean3 false in
#align category_theory.Groupoid CategoryTheory.Grpd

namespace Grpd

instance : Inhabited Grpd :=
  ⟨Bundled.of (SingleObj PUnit)⟩


instance str' (C : Grpd.{v, u}) : Groupoid.{v, u} C.α :=
  C.str
set_option linter.uppercaseLean3 false in
#align category_theory.Groupoid.str CategoryTheory.Grpd.str'

instance : CoeSort Grpd (Type*) :=
  Bundled.coeSort

/-- Construct a bundled `Grpd` from the underlying type and the typeclass `Groupoid`. -/
def of (C : Type u) [Groupoid.{v} C] : Grpd.{v, u} :=
  Bundled.of C
set_option linter.uppercaseLean3 false in
#align category_theory.Groupoid.of CategoryTheory.Grpd.of

@[simp]
theorem coe_of (C : Type u) [Groupoid C] : (of C : Type u) = C :=
  rfl
set_option linter.uppercaseLean3 false in
#align category_theory.Groupoid.coe_of CategoryTheory.Grpd.coe_of

/-- Category structure on `Grpd` -/
instance category : LargeCategory.{max v u} Grpd.{v, u} where
  Hom C D := C ⥤ D
  id C := 𝟭 C
  comp F G := F ⋙ G
  id_comp _ := by rfl
  comp_id _ := by rfl
  assoc := by intros; rfl
set_option linter.uppercaseLean3 false in
#align category_theory.Groupoid.category CategoryTheory.Grpd.category

/-- Functor that gets the set of objects of a groupoid. It is not
called `forget`, because it is not a faithful functor. -/
def objects : Grpd.{v, u} ⥤ Type u where
  obj := Bundled.α
  map F := F.obj
set_option linter.uppercaseLean3 false in
#align category_theory.Groupoid.objects CategoryTheory.Grpd.objects

/-- Forgetting functor to `Cat` -/
def forgetToCat : Grpd.{v, u} ⥤ Cat.{v, u} where
  obj C := Cat.of C
  map := id
set_option linter.uppercaseLean3 false in
#align category_theory.Groupoid.forget_to_Cat CategoryTheory.Grpd.forgetToCat

instance forgetToCatFull : Full forgetToCat where preimage := id
set_option linter.uppercaseLean3 false in
#align category_theory.Groupoid.forget_to_Cat_full CategoryTheory.Grpd.forgetToCatFull

instance forgetToCat_faithful : Faithful forgetToCat where
set_option linter.uppercaseLean3 false in
#align category_theory.Groupoid.forget_to_Cat_faithful CategoryTheory.Grpd.forgetToCat_faithful

/-- Convert arrows in the category of groupoids to functors,
which sometimes helps in applying simp lemmas -/
theorem hom_to_functor {C D E : Grpd.{v, u}} (f : C ⟶ D) (g : D ⟶ E) : f ≫ g = f ⋙ g :=
  rfl
set_option linter.uppercaseLean3 false in
#align category_theory.Groupoid.hom_to_functor CategoryTheory.Grpd.hom_to_functor

/-- Converts identity in the category of groupoids to the functor identity -/
theorem id_to_functor {C : Grpd.{v, u}} : 𝟭 C = 𝟙 C :=
  rfl
set_option linter.uppercaseLean3 false in
#align category_theory.Groupoid.id_to_functor CategoryTheory.Grpd.id_to_functor

section Products

/-- Construct the product over an indexed family of groupoids, as a fan. -/
def piLimitFan ⦃J : Type u⦄ (F : J → Grpd.{u, u}) : Limits.Fan F :=
  Limits.Fan.mk (@of (∀ j : J, F j) _) fun j => CategoryTheory.Pi.eval _ j
set_option linter.uppercaseLean3 false in
#align category_theory.Groupoid.pi_limit_fan CategoryTheory.Grpd.piLimitFan

/-- The product fan over an indexed family of groupoids, is a limit cone. -/
def piLimitFanIsLimit ⦃J : Type u⦄ (F : J → Grpd.{u, u}) : Limits.IsLimit (piLimitFan F) :=
  Limits.mkFanLimit (piLimitFan F) (fun s => Functor.pi' fun j => s.proj j)
    (by
      intros
      dsimp only [piLimitFan]
      simp [hom_to_functor])
    (by
      intro s m w
      apply Functor.pi_ext
      intro j; specialize w j
      simpa)
set_option linter.uppercaseLean3 false in
#align category_theory.Groupoid.pi_limit_fan_is_limit CategoryTheory.Grpd.piLimitFanIsLimit

instance has_pi : Limits.HasProducts Grpd.{u, u} :=
  Limits.hasProducts_of_limit_fans (by apply piLimitFan) (by apply piLimitFanIsLimit)
set_option linter.uppercaseLean3 false in
#align category_theory.Groupoid.has_pi CategoryTheory.Grpd.has_pi

/-- The product of a family of groupoids is isomorphic
to the product object in the category of Groupoids -/
noncomputable def piIsoPi (J : Type u) (f : J → Grpd.{u, u}) : @of (∀ j, f j) _ ≅ ∏ f :=
  Limits.IsLimit.conePointUniqueUpToIso (piLimitFanIsLimit f)
    (Limits.limit.isLimit (Discrete.functor f))
set_option linter.uppercaseLean3 false in
#align category_theory.Groupoid.pi_iso_pi CategoryTheory.Grpd.piIsoPi

@[simp]
theorem piIsoPi_hom_π (J : Type u) (f : J → Grpd.{u, u}) (j : J) :
    (piIsoPi J f).hom ≫ Limits.Pi.π f j = CategoryTheory.Pi.eval _ j := by
  simp [piIsoPi]
  rfl
set_option linter.uppercaseLean3 false in
#align category_theory.Groupoid.pi_iso_pi_hom_π CategoryTheory.Grpd.piIsoPi_hom_π

end Products

end Grpd

end CategoryTheory
