-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsGaloisSubcategory.Variant1580d5aba7c3f8402f06bd3669ec172888ee02990159d44181de2628c25214c4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1580d5aba7c3f8402f06bd3669ec172888ee02990159d44181de2628c25214c4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsGaloisSubcategory.Variant1580d5aba7c3f8402f06bd3669ec172888ee02990159d44181de2628c25214c4","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"1580d5aba7c3f8402f06bd3669ec172888ee02990159d44181de2628c25214c4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Galois/FullSubcategory.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Galois.Basic
public import Mathlib.CategoryTheory.ObjectProperty.EpiMono
public import Mathlib.CategoryTheory.ObjectProperty.FiniteLimits
public import Mathlib.CategoryTheory.Limits.FullSubcategory

/-!
# Full subcategories of Galois categories

Given a Galois category `C`, we introduce a typeclass `P.IsGaloisSubcategory`
which allows to show that `P.FullSubcategory` is also a Galois category.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsGaloisSubcategory.Variant1580d5aba7c3f8402f06bd3669ec172888ee02990159d44181de2628c25214c4

universe w v u

@[expose] public section

namespace CategoryTheory

open Limits

variable {C : Type u} [Category.{v} C]

namespace ObjectProperty

/-- If `P` is a property of objects in a Galois category, the typeclass
`IsGaloisSubcategory` expresses stability properties which imply that
the fullsubcategory given by `P` is also a Galois category. -/
class IsGaloisSubcategory (P : ObjectProperty C) : Prop where
  /-- If `C` has a terminal object,`P` is sat. -/
  isClosedUnderLimitsOfShape_discrete_pEmpty :
    P.IsClosedUnderLimitsOfShape (Discrete.{0} PEmpty) := by infer_instance
  /-- `P` is stable under pullbacks. -/
  isClosedUnderLimitsOfShape_walkingCospan :
    P.IsClosedUnderLimitsOfShape WalkingCospan := by infer_instance
  /-- `P` is stable under finite coproducs. -/
  isClosedUnderColimitsOfShape_discrete (ι : Type) [Finite ι] :
    P.IsClosedUnderColimitsOfShape (Discrete ι) := by intros; infer_instance
  /-- `P` is stable under quotients by finite groups. -/
  isClosedUnderColimitsOfShape_singleObj (G : Type v) [Group G] [Finite G] :
    P.IsClosedUnderColimitsOfShape (SingleObj G) := by intros; infer_instance
  isClosedUnderSubobjects : P.IsClosedUnderSubobjects := by infer_instance
  preservesEpimorphisms : P.ι.PreservesEpimorphisms := by infer_instance

instance (P : ObjectProperty C) [P.IsClosedUnderFiniteColimits]
    (G : Type w) [Group G] [Finite G] :
    P.IsClosedUnderColimitsOfShape (SingleObj G) := by
  obtain ⟨G', _, _, ⟨e⟩⟩ := Finite.exists_type_univ_nonempty_mulEquiv G
  rw [isClosedUnderColimitsOfShape_iff_of_equivalence _ e.toSingleObjEquiv]
  infer_instance

namespace IsGaloisSubcategory

attribute [instance] isClosedUnderLimitsOfShape_discrete_pEmpty
  isClosedUnderLimitsOfShape_walkingCospan
  isClosedUnderColimitsOfShape_discrete
  isClosedUnderColimitsOfShape_singleObj
  isClosedUnderSubobjects preservesEpimorphisms

end IsGaloisSubcategory

end ObjectProperty

namespace PreGaloisCategory

instance [PreGaloisCategory C] [MonoCoprod C]
    (P : ObjectProperty C) [P.IsGaloisSubcategory] :
    PreGaloisCategory P.FullSubcategory where
  monoInducesIsoOnDirectSummand {X Y} i _ := by
    have : Mono i.hom := inferInstanceAs (Mono (P.ι.map i))
    obtain ⟨Z, u, ⟨h⟩⟩ := monoInducesIsoOnDirectSummand i.hom
    refine ⟨⟨Z, ?_⟩, ObjectProperty.homMk u,
      ⟨isColimitOfReflects P.ι ((isColimitMapCoconeBinaryCofanEquiv ..).2 h)⟩⟩
    have : Mono u := MonoCoprod.binaryCofan_inr _ h
    exact P.prop_of_mono u Y.property
  hasFiniteCoproducts := ⟨inferInstance⟩
  hasQuotientsByFiniteGroups _ _ := inferInstance

instance [PreGaloisCategory C] [MonoCoprod C]
    (P : ObjectProperty C) [P.IsGaloisSubcategory]
    (F : C ⥤ FintypeCat.{w}) [FiberFunctor F] :
    FiberFunctor (P.ι ⋙ F) where
  preservesFiniteCoproducts := ⟨inferInstance⟩
  preservesQuotientsByFiniteGroups _ _ := inferInstance

end PreGaloisCategory

namespace GaloisCategory

instance [GaloisCategory C] (P : ObjectProperty C) [P.IsGaloisSubcategory] :
    GaloisCategory P.FullSubcategory where
  hasFiberFunctor := by
    obtain ⟨F, _⟩ := hasFiberFunctor (C := C)
    exact ⟨P.ι ⋙ F, inferInstance⟩

end GaloisCategory

end CategoryTheory
