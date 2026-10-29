-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OverEquivOfIsInitial.Variant5501d3a7b668387ec4fdf1c0cf94a67145c5d5f86cdb484af9c4f1ff3898c366","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5501d3a7b668387ec4fdf1c0cf94a67145c5d5f86cdb484af9c4f1ff3898c366","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.OverEquivOfIsInitial.Variant5501d3a7b668387ec4fdf1c0cf94a67145c5d5f86cdb484af9c4f1ff3898c366","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"5501d3a7b668387ec4fdf1c0cf94a67145c5d5f86cdb484af9c4f1ff3898c366","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Comma/Over/StrictInitial.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Christian Merten. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christian Merten
-/
module

public import Mathlib.CategoryTheory.MorphismProperty.Comma
public import Mathlib.CategoryTheory.Limits.Shapes.StrictInitial

/-!
# `Over X` when `C` has strict initial objects

In this file we define the canonical equivalence of `Over X` with `Discrete PUnit` when
`C` has strict initial objects. We also provide the variants for `P.Over Q X`
and the dual versions.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OverEquivOfIsInitial.Variant5501d3a7b668387ec4fdf1c0cf94a67145c5d5f86cdb484af9c4f1ff3898c366

@[expose] public section

universe w

namespace CategoryTheory

open Limits

variable {C : Type*} [Category* C]

set_option backward.defeqAttrib.useBackward true in
/-- If `C` has strict initial objects and `X` is an initial object, the category
`Over X` is equivalent to a point. -/
@[simps, pp_with_univ]
noncomputable
def overEquivOfIsInitial [HasStrictInitialObjects C] (X : C) (h : IsInitial X) :
    Over X ≌ Discrete PUnit.{w + 1} where
  functor := Functor.star _
  inverse := Functor.fromPUnit (.mk (𝟙 X))
  unitIso := NatIso.ofComponents fun A ↦
    haveI := h.isIso_to A.hom
    Over.isoMk (asIso A.hom)
  counitIso := Iso.refl _

set_option backward.defeqAttrib.useBackward true in
/-- If `C` has strict terminal objects and `X` is a terminal object, the category
`Under X` is equivalent to a point. -/
@[simps, pp_with_univ]
noncomputable
def underEquivOfIsTerminal [HasStrictTerminalObjects C] (X : C) (h : IsTerminal X) :
    Under X ≌ Discrete PUnit.{w + 1} where
  functor := Functor.star _
  inverse := Functor.fromPUnit (.mk (𝟙 X))
  counitIso := Iso.refl _
  unitIso := NatIso.ofComponents fun A ↦
    haveI := h.isIso_from A.hom
    Under.isoMk (asIso A.hom).symm

variable (P Q : MorphismProperty C) [P.ContainsIdentities] [Q.IsMultiplicative] [Q.RespectsIso]

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- If `C` has strict initial objects and `X` is an initial object, the category
`P.Over Q X` is equivalent to a point. -/
@[simps, pp_with_univ]
noncomputable
def MorphismProperty.overEquivOfIsInitial [HasStrictInitialObjects C] (X : C) (h : IsInitial X) :
    P.Over Q X ≌ Discrete PUnit.{w + 1} where
  functor := Functor.star _
  inverse := Functor.fromPUnit (.mk _ (𝟙 X) (P.id_mem _))
  unitIso := NatIso.ofComponents fun A ↦
    haveI := h.isIso_to A.hom
    Over.isoMk (asIso A.hom)
  counitIso := Iso.refl _

set_option backward.isDefEq.respectTransparency false in
/-- If `C` has strict terminal objects and `X` is a terminal object, the category
`P.Under Q X` is equivalent to a point. -/
@[simps, pp_with_univ]
noncomputable
def MorphismProperty.underEquivOfIsTerminal [HasStrictTerminalObjects C] (X : C)
    (h : IsTerminal X) :
    P.Under Q X ≌ Discrete PUnit.{w + 1} where
  functor := Functor.star _
  inverse := Functor.fromPUnit (.mk _ (𝟙 X) (P.id_mem _))
  counitIso := Iso.refl _
  unitIso := NatIso.ofComponents fun A ↦
    haveI := h.isIso_from A.hom
    Under.isoMk (asIso A.hom).symm

end CategoryTheory
