-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CartesianComon.Variant82745f2dd927315933007568679a2eac08b4f9c8ff401ab22c0f67a6c8f71e85","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"82745f2dd927315933007568679a2eac08b4f9c8ff401ab22c0f67a6c8f71e85","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.CartesianComon.Variant82745f2dd927315933007568679a2eac08b4f9c8ff401ab22c0f67a6c8f71e85","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"82745f2dd927315933007568679a2eac08b4f9c8ff401ab22c0f67a6c8f71e85","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Monoidal/Cartesian/Comon_.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.CategoryTheory.Monoidal.Cartesian.Basic
import Mathlib.CategoryTheory.Monoidal.Comon_

/-!
# Comonoid objects in a cartesian monoidal category.

The category of comonoid objects in a cartesian monoidal category is equivalent
to the category itself, via the forgetful functor.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CartesianComon.Variant82745f2dd927315933007568679a2eac08b4f9c8ff401ab22c0f67a6c8f71e85

open CategoryTheory MonoidalCategory CartesianMonoidalCategory Limits

universe v u

noncomputable section

variable (C : Type u) [Category.{v} C] [CartesianMonoidalCategory C]

attribute [local simp] leftUnitor_hom rightUnitor_hom

/--
The functor from a cartesian monoidal category to comonoids in that category,
equipping every object with the diagonal map as a comultiplication.
-/
def cartesianComon_ : C ⥤ Comon_ C where
  obj X := {
    X := X
    comul := lift (𝟙 _) (𝟙 _)
    counit := toUnit _
  }
  map f := { hom := f }

variable {C}

@[simp] theorem counit_eq_toUnit (A : Comon_ C) : A.counit = toUnit _ := by ext

@[deprecated (since := "2025-05-09")] alias counit_eq_from := counit_eq_toUnit

@[simp] theorem comul_eq_lift (A : Comon_ C) : A.comul = lift (𝟙 _) (𝟙 _) := by
  ext
  · simpa using A.comul_counit =≫ fst _ _
  · simpa using A.counit_comul =≫ snd _ _

@[deprecated (since := "2025-05-09")] alias comul_eq_diag := comul_eq_lift

/--
Every comonoid object in a cartesian monoidal category is equivalent to
the canonical comonoid structure on the underlying object.
-/
@[simps] def iso_cartesianComon_ (A : Comon_ C) : A ≅ (cartesianComon_ C).obj A.X :=
  { hom := { hom := 𝟙 _ }
    inv := { hom := 𝟙 _ } }

/--
The category of comonoid objects in a cartesian monoidal category is equivalent
to the category itself, via the forgetful functor.
-/
@[simps] def comonEquiv : Comon_ C ≌ C where
  functor := Comon_.forget C
  inverse := cartesianComon_ C
  unitIso := NatIso.ofComponents (fun A => iso_cartesianComon_ A)
  counitIso := NatIso.ofComponents (fun _ => Iso.refl _)
