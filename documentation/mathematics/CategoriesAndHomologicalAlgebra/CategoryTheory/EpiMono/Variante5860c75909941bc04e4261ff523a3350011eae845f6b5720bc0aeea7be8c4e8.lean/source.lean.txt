-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsClosedUnderSubobjects.Variant0e412464fb4d3edf864268c6f510b418b5b78565716f5358eede29d12d1bbb26","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0e412464fb4d3edf864268c6f510b418b5b78565716f5358eede29d12d1bbb26","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsClosedUnderSubobjects.Variant0e412464fb4d3edf864268c6f510b418b5b78565716f5358eede29d12d1bbb26","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"0e412464fb4d3edf864268c6f510b418b5b78565716f5358eede29d12d1bbb26","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/ObjectProperty/EpiMono.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.ObjectProperty.ClosedUnderIsomorphisms
import Mathlib.Algebra.Homology.ShortComplex.ShortExact

/-!
# Properties of objects that are closed under subobjects and quotients

Given a category `C` and `P : ObjectProperty C`, we define type classes
`P.IsClosedUnderSubobjects` and `P.IsClosedUnderQuotients` expressing
that `P` is closed under subobjects (resp. quotients).

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsClosedUnderSubobjects.Variant0e412464fb4d3edf864268c6f510b418b5b78565716f5358eede29d12d1bbb26

universe v v' u u'

namespace CategoryTheory

open Limits

variable {C : Type u} [Category.{v} C] {D : Type u'} [Category.{v'} D]

namespace ObjectProperty

variable (P : ObjectProperty C)

/-- Given `P : ObjectProperty C`, we say that `P` is closed under subobjects,
if for any monomorphism `X ⟶ Y`, `P Y` implies `P X`. -/
class IsClosedUnderSubobjects : Prop where
  prop_of_mono {X Y : C} (f : X ⟶ Y) [Mono f] (hY : P Y) : P X

section

variable [P.IsClosedUnderSubobjects]

lemma prop_of_mono {X Y : C} (f : X ⟶ Y) [Mono f] (hY : P Y) : P X :=
  IsClosedUnderSubobjects.prop_of_mono f hY

instance : P.IsClosedUnderIsomorphisms where
  of_iso e := P.prop_of_mono e.inv

lemma prop_X₁_of_shortExact [HasZeroMorphisms C] {S : ShortComplex C} (hS : S.ShortExact)
    (h₂ : P S.X₂) : P S.X₁ := by
  have := hS.mono_f
  exact P.prop_of_mono S.f h₂

instance (F : D ⥤ C) [F.PreservesMonomorphisms] :
    (P.inverseImage F).IsClosedUnderSubobjects where
  prop_of_mono f _ h := P.prop_of_mono (F.map f) h

end

section

/-- Given `P : ObjectProperty C`, we say that `P` is closed under quotients,
if for any epimorphism `X ⟶ Y`, `P X` implies `P Y`. -/
class IsClosedUnderQuotients : Prop where
  prop_of_epi {X Y : C} (f : X ⟶ Y) [Epi f] (hX : P X) : P Y

variable [P.IsClosedUnderQuotients]

lemma prop_of_epi {X Y : C} (f : X ⟶ Y) [Epi f] (hX : P X) : P Y :=
  IsClosedUnderQuotients.prop_of_epi f hX

instance : P.IsClosedUnderIsomorphisms where
  of_iso e := P.prop_of_epi e.hom

lemma prop_X₃_of_shortExact [HasZeroMorphisms C] {S : ShortComplex C} (hS : S.ShortExact)
    (h₂ : P S.X₂) : P S.X₃ := by
  have := hS.epi_g
  exact P.prop_of_epi S.g h₂

instance (F : D ⥤ C) [F.PreservesEpimorphisms] :
    (P.inverseImage F).IsClosedUnderQuotients where
  prop_of_epi f _ h := P.prop_of_epi (F.map f) h

end

instance : (⊤ : ObjectProperty C).IsClosedUnderSubobjects where
  prop_of_mono := by simp

instance : (⊤ : ObjectProperty C).IsClosedUnderQuotients where
  prop_of_epi := by simp

instance [HasZeroMorphisms C] : IsClosedUnderSubobjects (IsZero (C := C)) where
  prop_of_mono f _ hX := IsZero.of_mono f hX

instance [HasZeroMorphisms C] : IsClosedUnderQuotients (IsZero (C := C)) where
  prop_of_epi f _ hX := IsZero.of_epi f hX

end ObjectProperty

end CategoryTheory
