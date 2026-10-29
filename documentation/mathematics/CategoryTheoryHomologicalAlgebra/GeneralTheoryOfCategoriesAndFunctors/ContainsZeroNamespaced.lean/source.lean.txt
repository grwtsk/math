-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ContainsZero.Variant6b73be4a2be9cdc8bdbd6ef18170957f60f5908007acde94ba70fb8f45a32393","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6b73be4a2be9cdc8bdbd6ef18170957f60f5908007acde94ba70fb8f45a32393","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ContainsZero.Variant6b73be4a2be9cdc8bdbd6ef18170957f60f5908007acde94ba70fb8f45a32393","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"6b73be4a2be9cdc8bdbd6ef18170957f60f5908007acde94ba70fb8f45a32393","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/ObjectProperty/ContainsZero.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.ObjectProperty.ClosedUnderIsomorphisms
import Mathlib.CategoryTheory.Limits.Preserves.Shapes.Zero

/-!
# Properties of objects which hold for a zero object

Given a category `C` and `P : ObjectProperty C`, we define a type class `P.ContainsZero`
expressing that there exists a zero object for which `P` holds. (We do not require
that `P` holds for all zero objects, as in some applications (e.g. triangulated categories),
`P` may not necessarily be closed under isomorphisms.)

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ContainsZero.Variant6b73be4a2be9cdc8bdbd6ef18170957f60f5908007acde94ba70fb8f45a32393

universe v v' u u'

namespace CategoryTheory

open Limits ZeroObject

variable {C : Type u} [Category.{v} C] {D : Type u'} [Category.{v'} D]

namespace ObjectProperty

variable (P : ObjectProperty C)

/-- Given `P : ObjectProperty C`, we say that `P.ContainsZero` if there exists
a zero object for which `P` holds. When `P` is closed under isomorphisms,
this holds for any zero object. -/
class ContainsZero : Prop where
  exists_zero : ∃ (Z : C), IsZero Z ∧ P Z

lemma exists_prop_of_containsZero [P.ContainsZero] :
    ∃ (Z : C), IsZero Z ∧ P Z :=
  ContainsZero.exists_zero

lemma prop_of_isZero [P.ContainsZero] [P.IsClosedUnderIsomorphisms]
    {Z : C} (hZ : IsZero Z) :
    P Z := by
  obtain ⟨Z₀, hZ₀, h₀⟩ := P.exists_prop_of_containsZero
  exact P.prop_of_iso (hZ₀.iso hZ) h₀

lemma prop_zero [P.ContainsZero] [P.IsClosedUnderIsomorphisms] [HasZeroObject C] :
    P 0 :=
  P.prop_of_isZero (isZero_zero C)

instance [HasZeroObject C] : (⊤ : ObjectProperty C).ContainsZero where
  exists_zero := ⟨0, isZero_zero C, by simp⟩

instance [HasZeroObject C] : ContainsZero (IsZero (C := C)) where
  exists_zero := ⟨0, isZero_zero C, isZero_zero C⟩

instance [P.ContainsZero] [HasZeroMorphisms C] [HasZeroMorphisms D]
    (F : C ⥤ D) [F.PreservesZeroMorphisms] : (P.map F).ContainsZero where
  exists_zero := by
    obtain ⟨Z, h₁, h₂⟩ := P.exists_prop_of_containsZero
    exact ⟨F.obj Z, F.map_isZero h₁, P.prop_map_obj F h₂⟩

instance [P.ContainsZero] [P.IsClosedUnderIsomorphisms]
    [HasZeroMorphisms C] [HasZeroMorphisms D]
    (F : D ⥤ C) [F.PreservesZeroMorphisms] [HasZeroObject D] :
    (P.inverseImage F).ContainsZero where
  exists_zero :=
    ⟨0, isZero_zero D, P.prop_of_isZero (F.map_isZero (isZero_zero D))⟩

end ObjectProperty

end CategoryTheory
