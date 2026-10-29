-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.DiscreteMonoidalTensorUnitAs.Variant86b40f7311cc3f56edccdb0637ae10e71b6b2984bdcc2755de2c627185a53fc4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"86b40f7311cc3f56edccdb0637ae10e71b6b2984bdcc2755de2c627185a53fc4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.DiscreteMonoidalTensorUnitAs.Variant86b40f7311cc3f56edccdb0637ae10e71b6b2984bdcc2755de2c627185a53fc4","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"86b40f7311cc3f56edccdb0637ae10e71b6b2984bdcc2755de2c627185a53fc4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Monoidal/Discrete.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Algebra.Group.Hom.Defs
import Mathlib.CategoryTheory.Discrete.Basic
import Mathlib.CategoryTheory.Monoidal.NaturalTransformation

/-!
# Monoids as discrete monoidal categories

The discrete category on a monoid is a monoidal category.
Multiplicative morphisms induced monoidal functors.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.DiscreteMonoidalTensorUnitAs.Variant86b40f7311cc3f56edccdb0637ae10e71b6b2984bdcc2755de2c627185a53fc4

universe u u'

open CategoryTheory Discrete MonoidalCategory

variable (M : Type u) [Monoid M]

namespace CategoryTheory

@[to_additive (attr := simps tensorObj_as leftUnitor rightUnitor associator) Discrete.addMonoidal]
instance Discrete.monoidal : MonoidalCategory (Discrete M) where
  tensorUnit := Discrete.mk 1
  tensorObj X Y := Discrete.mk (X.as * Y.as)
  whiskerLeft X _ _ f := eqToHom (by rw [eq_of_hom f])
  whiskerRight f X := eqToHom (by rw [eq_of_hom f])
  tensorHom f g := eqToHom (by rw [eq_of_hom f, eq_of_hom g])
  leftUnitor X := Discrete.eqToIso (one_mul X.as)
  rightUnitor X := Discrete.eqToIso (mul_one X.as)
  associator _ _ _ := Discrete.eqToIso (mul_assoc _ _ _)

@[to_additive (attr := simp) Discrete.addMonoidal_tensorUnit_as]
lemma Discrete.monoidal_tensorUnit_as : (𝟙_ (Discrete M)).as = 1 := rfl

variable {M} {N : Type u'} [Monoid N]

/-- A multiplicative morphism between monoids gives a monoidal functor between the corresponding
discrete monoidal categories.
-/
@[to_additive Discrete.addMonoidalFunctor]
def Discrete.monoidalFunctor (F : M →* N) : Discrete M ⥤ Discrete N :=
  Discrete.functor (fun X ↦ Discrete.mk (F X))

@[to_additive (attr := simp) Discrete.addMonoidalFunctor_obj]
lemma Discrete.monoidalFunctor_obj (F : M →* N) (m : M) :
    (Discrete.monoidalFunctor F).obj (Discrete.mk m) = Discrete.mk (F m) := rfl

@[to_additive Discrete.addMonoidalFunctorMonoidal]
instance Discrete.monoidalFunctorMonoidal (F : M →* N) :
    (Discrete.monoidalFunctor F).Monoidal :=
    Functor.CoreMonoidal.toMonoidal
      { εIso := Discrete.eqToIso F.map_one.symm
        μIso := fun m₁ m₂ ↦ Discrete.eqToIso (F.map_mul _ _).symm }

open Functor.LaxMonoidal Functor.OplaxMonoidal

@[to_additive Discrete.addMonoidalFunctor_ε]
lemma Discrete.monoidalFunctor_ε (F : M →* N) :
    ε (monoidalFunctor F) = Discrete.eqToHom F.map_one.symm := rfl

@[to_additive Discrete.addMonoidalFunctor_η]
lemma Discrete.monoidalFunctor_η (F : M →* N) :
    η (monoidalFunctor F) = Discrete.eqToHom F.map_one := rfl

@[to_additive Discrete.addMonoidalFunctor_μ]
lemma Discrete.monoidalFunctor_μ (F : M →* N) (m₁ m₂ : Discrete M) :
    μ (monoidalFunctor F) m₁ m₂ = Discrete.eqToHom (F.map_mul _ _).symm := rfl

@[to_additive Discrete.addMonoidalFunctor_δ]
lemma Discrete.monoidalFunctor_δ (F : M →* N) (m₁ m₂ : Discrete M) :
    δ (monoidalFunctor F) m₁ m₂ = Discrete.eqToHom (F.map_mul _ _) := rfl

/-- An additive morphism between add_monoids gives a
monoidal functor between the corresponding discrete monoidal categories. -/
add_decl_doc Discrete.addMonoidalFunctor

variable {K : Type u} [Monoid K]

/-- The monoidal natural isomorphism corresponding to composing two multiplicative morphisms.
-/
@[to_additive Discrete.addMonoidalFunctorComp
      "The monoidal natural isomorphism corresponding to\ncomposing two additive morphisms."]
def Discrete.monoidalFunctorComp (F : M →* N) (G : N →* K) :
    Discrete.monoidalFunctor F ⋙ Discrete.monoidalFunctor G ≅
      Discrete.monoidalFunctor (G.comp F) := Iso.refl _

@[to_additive Discrete.addMonoidalFunctorComp_isMonoidal]
instance Discrete.monoidalFunctorComp_isMonoidal (F : M →* N) (G : N →* K) :
    NatTrans.IsMonoidal (Discrete.monoidalFunctorComp F G).hom where
  unit := by
    dsimp only [comp_ε, monoidalFunctorComp, Iso.refl, Discrete.monoidalFunctor_ε]
    simp [eqToHom_map]
  tensor _ _ := by
    dsimp only [comp_μ, monoidalFunctorComp, Iso.refl, Discrete.monoidalFunctor_μ]
    simp [eqToHom_map]

end CategoryTheory
